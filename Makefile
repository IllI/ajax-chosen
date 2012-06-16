COFFEESCRIPT = coffee --lint
UGLIFY  = uglifyjs

all: lib/ajax-chosen.js lib/ajax-chosen.min.js

lib/%.js: src/%.coffee
	$(COFFEESCRIPT) -o lib/ -c src/ 

lib/%.min.js: lib/%.js
	$(UGLIFY) --output $@ $<

clean:
	@rm -f lib/*.js

