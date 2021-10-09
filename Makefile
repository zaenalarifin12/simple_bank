postgres:
	docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=secret postgres:12-alpine

createdb:
	docker exec -it postgres12 createdb --username=postgres --owner=root simple_bank

dropdb:
	docker exec -it postgres12 dropdb simple_bank 

# migrateup:
# 	docker run -v {{ migration dir }}:/migrations --network host migrate/migrate -path=db/migrations/ -database postgres://localhost:5432/database up 2

# migratedown

sqlc:
	docker run --rm -v $(pwd):/src -w /src kjconroy/sqlc generate

.PHONY: postgres sqlc createdb