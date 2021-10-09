docker pull postgres:12.8-alpine

docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -d postgres:12.8-alpine

docker exec -it postgres12 psql -U postgres