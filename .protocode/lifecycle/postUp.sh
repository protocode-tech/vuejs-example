set -e

# Install vendors
docker-compose run -u node:node -it app npm install
