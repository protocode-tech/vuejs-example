# Made with Protocode
# Generated on 2025-04-09 at 08:18:11

#!/bin/bash
set -eux

# Load vars from deckor env file is present
if [ -f .protocode/.env ]; then
    export $(grep -v '^#' .protocode/.env | xargs)
fi

# Install dependencies
docker-compose run --rm app npm install --yes
