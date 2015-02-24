SRC = $(wildcard lib/*.js)
DEST = $(SRC:lib/%.js=build/%.js)

build: $(DEST)
build/%.js: lib/%.js
	mkdir -p $(@D)
	./node_modules/.bin/6to5 -b generators --optionals coreAliasing $< -o $@

clean:
	rm -rf build
