all: unset setup

setup: install build clean

install:
	bower install
	npm install

build:
	mkdir ./client/dependencies
	cp ./bower_components/angular/angular.js -r ./client/dependencies/
	cp ./bower_components/angular-route/angular-route.js ./client/dependencies/angular-route.js
	cp ./node_modules/babel-core/browser.js ./client/dependencies/browser.js
	cp ./node_modules/es6-module-loader/dist/es6-module-loader-dev.js  ./client/dependencies/es6-module-loader-dev.js

clean:
	rm -R ./bower_components
	rm -R ./node_modules

unset:
	rm -R ./client/dependencies
	rm -R ./bower_components
	rm -R ./node_modules
