up:
	docker compose up -d --build

down:
	docker compose down -v

sh:
	docker compose exec php bash

composer:
	docker compose exec -T php composer $(cmd)

install:
	docker compose exec -T php composer install

test:
	docker compose exec -T php ./vendor/bin/phpunit --testdox

cs:
	docker compose exec -T php ./vendor/bin/php-cs-fixer fix --diff --dry-run

fix:
	docker compose exec -T php ./vendor/bin/php-cs-fixer fix

stan:
	docker compose exec -T php ./vendor/bin/phpstan analyse -c phpstan.neon --memory-limit=512M
