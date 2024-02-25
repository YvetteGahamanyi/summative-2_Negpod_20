# ALU Registration System for student

This simple bash script provides a basic registration system for managing student records. It allows users to create, view, delete, and update student records, as well as select and sort student emails.

## How to Use

1. **Create Student Record:**

   - Enter the student's email, age, and ID when prompted.
   - The record will be added to the student file.

2. **View All Students:**

   - Displays a list of all students with their ID, age, and email.

3. **Delete Student Record:**

   - Enter the student ID to delete a specific student record.

4. **Update Student Record:**

   - Enter the student ID to update.
   - Provide the updated email and age.

5. **Select Student Emails:**

   - Invokes a separate script (`select-emails.sh`) to select and sort student emails.
   - The result is saved to a file.

6. **Exit:**
   - Exits the application.

## Usage Example

```bash
./alu-registration-system.sh
```
