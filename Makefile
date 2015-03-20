.PHONY: install update

install:
	cd scripts && ./install-hooks.sh

update:
	cd scripts && crontab crontab
