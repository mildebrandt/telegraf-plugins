.PHONY: all telegraf
all:
	go build -buildmode=plugin .

telegraf:
	${MAKE} -C telegraf/ telegraf
