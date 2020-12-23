#!/bin/bash

set -o errexit

# pmm-managed-init validates environment variables.
pmm-managed-init

/usr/share/pmm-server/import-dbass-dashboard.py&

# Start supervisor in foreground
exec supervisord -n -c /etc/supervisord.conf

