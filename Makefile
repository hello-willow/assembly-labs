.PHONY: build # Assemble & link selected file: make build file=<filename>
build:
	scripts/build.sh $(file)

.PHONY: dump # Run objdump on selected output file: make dump file=<filename>
dump:
	scripts/dump.sh $(file)

.PHONY: clean # Remove all build content
clean:
	rm -rf bin

.PHONY: help # List all available make targets
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1		\2/'

