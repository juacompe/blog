.PHONY: ci e2e migrate run test

ci : migrate
	bundle exec cucumber --publish-quiet --tags "not @doing"

e2e: migrate
	bundle exec cucumber --publish-quiet

migrate:
	rails db:migrate

run: migrate
	rails s

test: migrate
	bundle exec rspec
