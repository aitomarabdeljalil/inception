# Inception

Inception is a Docker-based project that sets up a complete web stack including WordPress, MariaDB, and Nginx with additional services like Adminer and a custom website.

## Project Structure

- `srcs/`: Contains Docker-related files and configurations
  - `requirements/`: Dockerfiles and configuration files for each service
    - `nginx/`: Nginx web server
    - `wordpress/`: WordPress with PHP-FPM
    - `mariadb/`: MariaDB database
    - `bonus/`: Additional services
      - `adminer/`: Adminer database management tool
      - `website/`: Custom static website
- `Makefile`: Automates the build and management of the Docker environment

## Services

1. Nginx: Web server with SSL/TLS support
2. WordPress: Content management system
3. MariaDB: Database for WordPress
4. Adminer: Database management tool
5. Custom Website: Static HTML portfolio page

## Prerequisites

- Docker
- Docker Compose

## Usage

To build and run the project:


Other available commands:

- `make build`: Build Docker images
- `make up`: Start the Docker containers
- `make down`: Stop the Docker containers
- `make ps`: Show running containers
- `make fclean`: Remove all containers and volumes

## Configuration

Environment variables and configurations are managed through Docker Compose and individual Dockerfiles. Refer to the `srcs/docker-compose.yml` file for specific settings.

## Author

Ait Omar Abdeljalil (aait-oma@student.1337.ma)

## License

This project is part of the 42 school curriculum.
