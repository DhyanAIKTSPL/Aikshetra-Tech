#!/bin/bash

# Project root
mkdir -p aikshetra
cd aikshetra || exit

# Base Django files
touch manage.py requirements.txt db.sqlite3

# Main project settings folder
mkdir -p aikshetra
cd aikshetra || exit
touch __init__.py settings.py urls.py wsgi.py asgi.py
cd ..

# Apps: accounts, attendance, tasks, salary, chatbot
for app in accounts attendance tasks salary chatbot; do
  mkdir -p $app/templates/$app
  touch $app/__init__.py $app/models.py $app/views.py $app/urls.py $app/admin.py
done

# Extra files for accounts (forms.py + templates)
touch accounts/forms.py
touch accounts/templates/accounts/login.html
touch accounts/templates/accounts/register.html
touch accounts/templates/accounts/profile.html

# Extra files for attendance (templates)
touch attendance/templates/attendance/attendance_list.html
touch attendance/templates/attendance/leave_apply.html

# Extra files for tasks (templates)
touch tasks/templates/tasks/task_list.html
touch tasks/templates/tasks/task_submit.html

# Extra files for salary (templates)
touch salary/templates/salary/salary_details.html

# Extra files for chatbot (templates)
touch chatbot/templates/chatbot/chatbot.html

# Static folders
mkdir -p static/css static/js static/images

# Global templates
mkdir -p templates
touch templates/base.html templates/home.html templates/about.html templates/contact.html

echo "✅ Django project structure for AIKSHETRA created successfully!"
