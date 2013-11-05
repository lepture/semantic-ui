
build: components index.js semantic-ui.css
	@component build

components: component.json
	@component install --dev

baseurl=https://raw.github.com/jlukic/Semantic-UI/master/build/packaged/
download:
	curl ${baseurl}javascript/semantic.js -o index.js
	curl ${baseurl}css/semantic.css -o semantic-ui.css
	python .modify.py

download-fonts:
	curl ${baseurl}fonts/basic.icons.eot -o fonts/basic.icons.eot
	curl ${baseurl}fonts/basic.icons.svg -o fonts/basic.icons.svg
	curl ${baseurl}fonts/basic.icons.ttf -o fonts/basic.icons.ttf
	curl ${baseurl}fonts/basic.icons.woff -o fonts/basic.icons.woff
	curl ${baseurl}fonts/icons.eot -o fonts/icons.eot
	curl ${baseurl}fonts/icons.otf -o fonts/icons.otf
	curl ${baseurl}fonts/icons.svg -o fonts/icons.svg
	curl ${baseurl}fonts/icons.ttf -o fonts/icons.ttf
	curl ${baseurl}fonts/icons.woff -o fonts/icons.woff

download-images:
	curl ${baseurl}images/loader-large-inverted.gif -o loader-large-inverted.gif
	curl ${baseurl}images/loader-large.gif -o loader-large.gif
	curl ${baseurl}images/loader-medium-inverted.gif -o loader-medium-inverted.gif
	curl ${baseurl}images/loader-medium.gif -o loader-medium.gif
	curl ${baseurl}images/loader-mini-inverted.gif -o loader-mini-inverted.gif
	curl ${baseurl}images/loader-mini.gif -o loader-mini.gif
	curl ${baseurl}images/loader-small-inverted.gif -o loader-small-inverted.gif
	curl ${baseurl}images/loader-small.gif -o loader-small.gif
	mv *.gif images/

clean:
	rm -fr build components template.js

.PHONY: clean
