gen:
	protoc --proto_path=proto proto/users/*.proto --go_out=. --go-grpc_out=. 
	
migrate:
	go run cmd/cli.go migrate
	
seed:
	go run cmd/cli.go seed
	
server:
	go run server.go
	
.PHONY: gen migrate seed server