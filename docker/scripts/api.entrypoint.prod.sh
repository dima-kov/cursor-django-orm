#!/usr/bin/env bash

cd trello/src && python manage.py migrate && gunicorn config.wsgi:application -b 0.0.0.0:8000 || { echo 'runserver failed' ; exit 1; }
