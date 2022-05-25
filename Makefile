init:
	@cp .env.ready .env
	@cp .env.mysql.ready .env.mysql
	@cp .env.redis.ready .env.redis
	@awk '{ printf("%s", $$0); if ($$0 ~ /(PASSWORD)/) { cmd = "openssl rand -hex 25"; cmd | getline output; close(cmd); printf(output); printf("%s%s\n", $$0, output) > ".env.mysql"; } else { printf "%s\n", $$0 > ".env.mysql"; }}' .env.mysql.ready
	@awk '{ printf("%s", $$0); if ($$0 ~ /(SECRET)/) { cmd = "openssl rand -hex 25"; cmd | getline output; close(cmd); printf(output); printf("%s%s\n", $$0, output) > ".env"; } else { printf "%s\n", $$0 > ".env"; }}' .env.ready