.PHONY: serve deploy clean

serve:
	cd exampleSite && hugo server -D

deploy:
	./publish.sh
