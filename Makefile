run:
	docker run -p 80:80 --name asterisk-prod nazark0/asterisk --volume $HOME/projects/docker-asterisk-prod/configs:/usr/local/src/asterisk/configs
stop:
	docker stop asterisk-prod && docker rm asterisk-prod
console:
	docker exec -it asterisk-prod bash
logs:
	docker logs asterisk-prod