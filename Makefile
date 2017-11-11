FIG=docker-compose
RUN=$(FIG) run --rm app
EXEC=$(FIG) exec app
CONSOLE=gosu docker bin/console

.DEFAULT_GOAL := help
.PHONY: help build install start stop boot debug debug-root db db-migrate test

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

##
## Project setup
##---------------------------------------------------------------------------

build:          ## Build the Docker image
build:
	docker-compose build

install:        ## Install vendors
install:
	$(RUN) install

start:          ## Install the full project (build install db db-migrate up)
start: build install db db-migrate up

stop:           ## Stop containers
stop:
	$(FIG) kill
	$(FIG) rm -v --force

up:             ## Run images
up:
	docker-compose up -d

##
## Database
##---------------------------------------------------------------------------


db:             ## Reset the database
db:
	$(RUN) $(CONSOLE) doctrine:database:drop --force --if-exists
	$(RUN) $(CONSOLE) doctrine:database:create --if-not-exists

db-migrate:     ## Update the database
db-migrate:
	$(RUN) $(CONSOLE) doctrine:schema:update --force

##
## Tests
##---------------------------------------------------------------------------

debug:          ## Debug container
debug:
	$(EXEC) gosu docker bash

debug-root:     ## Debug container as Root user
debug-root:
	$(EXEC) bash

test:           ## Run tests
test:
	$(EXEC) /entrypoint.sh tests

##
