echo Installing..
sudo apt-get update && apt-get upgrade -y
sudo apt-get install docker.io docker -y

echo Building..
docker compose build

echo Starting..
docker compose up

echo Started!