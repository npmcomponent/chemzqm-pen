
build: components src/pen.js src/pen.css
	@component build --dev
	@touch build

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean start
