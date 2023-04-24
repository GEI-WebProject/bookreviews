#!/bin/sh

python3 manage.py migrate --no-input
python manage.py collectstatic --no-input
gunicorn --bind 0.0.0.0:8000 project_config.wsgi