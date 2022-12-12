run:
	./preinstall.sh && docker compose up --build
stop:
	docker compose down --remove-orphans
console:
	docker exec -it asterisk-dev sh
logs:
	docker logs asterisk-dev