#!/usr/bin/env bash

students_file="students-list_1023.txt"
email_width=20
age_width=3
id_width=3

while true; do
    echo "------------------"
    echo "ALU Registration System"
    echo "------------------"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Select student emails"
    echo "6. Exit"

    read -p "Enter your choice: " choice

    case "$choice" in
        1)
            read -p "Enter student email: " email
            read -p "Enter student age: " age
            read -p "Enter student ID: " student_id

            # Create student record
            echo "$student_id$(printf '%*s' $((id_width - ${#student_id})) " ") | $age$(printf '%*s' $((age_width - ${#age})) " ") | $email$(printf '%*s' $((email_width - ${#email})) " ")" >> "$students_file"
            echo "Student record created."
            ;;
        2)
            # View all students
            echo "List of students:"
            echo -e "ID$(printf '%*s' $((id_width - 2)) " ") | Age$(printf '%*s' $((age_width - 3)) " ")| Email$(printf '%*s' $((email_width - 5)) " ")"
            cat "$students_file"
	    ;;

	3)
	# Delete student record by student ID
            read -p "Enter student ID to delete: " delete_id
            sed -i "/^$delete_id[[:space:]]/d" "$students_file"
            echo "Student record with ID $delete_id deleted."
            ;;

	4)
        # Update student record by student ID
read -p "Enter student ID to update: " update_id
read -p "Enter updated student email: " updated_email
read -p "Enter updated student age: " updated_age

# Use sed to update the student record
sed -i "s/^$update_id[[:space:]]*[^|]*|[^|]*|[^|]*/$update_id$(printf '%*s' $((id_width - ${#update_id})) " ") | $updated_age$(printf '%*s' $((age_width - ${#updated_age})) " ") | $updated_email$(printf '%*s' $((email_width - ${#updated_email})) " ")/" "$students_file"

echo "Student record with ID $update_id updated."

            ;;
    5) 
         # Select student emails, sort them and save to file
            ./select-emails.sh
            ;;
    6)
            # Exit the application
            echo "Exiting the application."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done