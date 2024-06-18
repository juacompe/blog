.PHONY: e2e run test

e2e:
	bundle exec cucumber --publish-quiet

run:
	rails s

test:
	bundle exec rspec
