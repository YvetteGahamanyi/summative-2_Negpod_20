#!/usr/bin/env bash

students_file="Students-list_1023.txt"
student_emails="student-emails.txt"

# Header for the table
echo "No |  Email" > student-emails.txt

# Function to select emails of students, sort them alphabetically, and save them to student-emails.txt
selectEmails() {
    grep -oP '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b' $students_file | sort | awk '{print NR, " | ", $1}' >> $student_emails
    echo "Emails of students have been selected, sorted and saved to $student_emails"
    cat $student_emails
}