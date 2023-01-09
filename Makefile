NAME			=	inception
SRCS_DIR		=	srcs
COMPOSE_FILE	=	${SRCS_DIR}/docker-compose.yml
ENV_FILE		=	${SRCS_DIR}/.env

FLAGS			=	-f ${COMPOSE_FILE} \
					-p ${NAME}

all: build

build:
	@mkdir -p /home/wlo/data
	@mkdir -p /home/wlo/wordpress
	@sudo docker compose ${FLAGS} up -d 
	@echo - docker services are up 

start:
	@docker compose ${FLAGS} start > /dev/null
	@echo - docker services have been started}

stop:
	@docker compose ${FLAGS} stop > /dev/null
	@echo- docker services have been stopped

status:
	@docker compose ${FLAGS} ps

clean:
	@sudo rm -rf /home/wlo/data  > /dev/null
	@sudo rm -rf /home/wlo/wordpress  > /dev/null
	@echo - docker volumes files have been deleted

fclean: clean
	@docker rmi -f nginx > /dev/null
	@docker rmi -f mariadb > /dev/null
	@docker rmi -f wordpress > /dev/null
	@echo - docker images have been deleted
	@docker rm -f nginx > /dev/null
	@docker rm -f mariadb > /dev/null
	@docker rm -f wordpress > /dev/null
	@echo  docker containers have been deleted
	@docker volume rm -f inception_database > /dev/null
	@docker volume rm -f inception_www > /dev/null
	@echo  docker volumes have been deleted
	@docker network rm inception > /dev/null
	@echo  docker network has been deleted

re: stop fclean all

.PHONY: all start stop status fclean clean re