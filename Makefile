PWD=$(shell pwd)

install:
	npm install

run:
	npm run build:browser
	npm run start:browser -- $(PWD) --port 8080 --hostname 0.0.0.0 --root-dir $(PWD)

release:
	rm -rf .dist
	mkdir -p .dist
	mkdir -p .dist/browser-app .dist/theia-dcnf
	# for browser-app
	cp -r browser-app/lib .dist/browser-app
	cp -r browser-app/src-gen .dist/browser-app
	cp -r browser-app/*.js .dist/browser-app
	# for theia-dcnf
	cp -r theia-dcnf/lib .dist/theia-dcnf
	cp -r theia-dcnf/node_modules .dist/theia-dcnf
	# for node_modules
	cp -r node_modules .dist
	cp settings.json .dist
	du -hs .dist/*
