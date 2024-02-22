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
