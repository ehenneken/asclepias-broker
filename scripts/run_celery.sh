#!/usr/bin/env bash
# -*- coding: utf-8 -*-
#
# Copyright (C) 2018 CERN.
#
# Asclepias Broker is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

set -e

export FLASK_DEBUG=1
export SQLALCHEMY_DATABASE_URI='postgresql+psycopg2://asclepias:asclepias@localhost/asclepias'

celery worker -A invenio_app.celery -l INFO -f celerylog.log -c 4 --purge
