.PHONY: clean all exit

clean:
	rm -rf bin

all: exit

exit:
	scripts/build.sh exit
