.PHONY: up down restart logs

up:
	rm -f .env.merged
	if [ -f .env.local ]; then \
		cp .env .env.merged; \
		cat .env.local >> .env.merged; \
	else \
		cp .env .env.merged; \
	fi
	docker compose --env-file .env.merged up -d

down:
	docker compose down

restart:
	docker compose down && docker compose --env-file .env up -d

logs:
	docker compose logs -f
