include settings.conf

.PHONY: deploy

help:
	@echo "	deploy		Deploys a docker container from a mysql image";

deploy:
	if [ -d "Volumes" ]; then rm -rf Volumes; fi
	mkdir Volumes
	docker pull mysql
	docker run --name $(NAME_CONTAINER) -p 3306:3306 -v Volumes:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$(ROOT_PASSWORD) -e MYSQL_DATABASE=$(MYSQL_DB) -d mysql
