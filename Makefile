.PHONY: run test e2e

test:
	rails test 

run:
	rails s

e2e:
	bundle exec cucumber --publish-quiet