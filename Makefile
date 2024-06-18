.PHONY: run test e2e

test:
	bundle exec rspec

run:
	rails s

e2e:
	bundle exec cucumber --publish-quiet