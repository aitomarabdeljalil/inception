NAME			:= inception
CMPS_CMD		:= docker-compose
CMPS_FILE		:= srcs/docker-compose.yml
VOLUMES_ROOT	:= /home/aait-oma/data/$(NAME)-volumes
VOLUMES			:= $(addprefix $(VOLUMES_ROOT)/,wp mdb)
COMPOSE			:= $(CMPS_CMD) -f $(CMPS_FILE) -p $(NAME)

.PHONY: all volumes build ps up down voldown fclean re

$(NAME): volumes
	@$(COMPOSE) up --build


volumes:
	@mkdir -p $(VOLUMES)

build:
	@$(COMPOSE) build

ps:
	@$(COMPOSE) ps

up:
	@$(COMPOSE) up

down:
	@$(COMPOSE) down

voldown:
	@$(COMPOSE) down --volumes

fclean: voldown
	@sudo rm -rf $(VOLUMES)

re: fclean $(NAME)
