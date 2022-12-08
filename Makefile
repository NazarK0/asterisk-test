run:
	docker build -t nazark0/asterisk . && docker run --rm \
	-p 5060:5060 \
	-p 5061:5061 \
	-p 5160:5160 \
	-p 5161:5161 \
	-p 4569:4569 \
	--name asterisk-dev \
	--network host \
	--hostname asterisk \
	-v ${PWD}/logs:/var/log/asterisk \
	nazark0/asterisk
stop:
	docker stop asterisk-dev
console:
	docker exec -it asterisk-dev sh
logs:
	docker logs asterisk-dev