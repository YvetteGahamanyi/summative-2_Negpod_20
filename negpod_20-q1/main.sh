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

