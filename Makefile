run:
	docker build -t nazark0/asterisk . && docker run --rm -p 5060:5060 --name asterisk-dev \
	-v ${PWD}/logs:/var/log/asterisk \
	nazark0/asterisk
stop:
	docker stop asterisk-dev
console:
	docker exec -it asterisk-dev sh
logs:
	docker logs asterisk-dev