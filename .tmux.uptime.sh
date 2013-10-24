#!/bin/sh
uptime | cut -d, -f3- | tr -d , | sed -e 's/^ *//;s/  *load.*:/, load:/'
