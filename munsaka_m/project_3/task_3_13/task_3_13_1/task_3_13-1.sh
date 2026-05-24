#!/bin/bash

# Replace database path in settings.php
# Changes '/var/lib/mysql/data' to '/mnt/ssd/mysql'

# Method 1: Using pipe (|) as separator for better readability
sed -i 's|/var/lib/mysql/data|/mnt/ssd/mysql|g' settings.php

# Alternative Method 2: Using colon (:) as separator
# sed -i 's:/var/lib/mysql/data:/mnt/ssd/mysql:g' settings.php

# Alternative Method 3: Using hash (#) as separator
# sed -i 's#/var/lib/mysql/data#/mnt/ssd/mysql#g' settings.php

echo "Database path has been updated in settings.php"
