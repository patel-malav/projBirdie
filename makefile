install:
	cd server && yarn install && cd ../website && yarn install && echo "\nInstallation Complete..."

dev-website:
	cd website && ng serve --open=true --host=0.0.0.0

dev-server:
	cd server && npx tsc-watch --onCompilationComplete "cp -u -r ./node_modules ./assets ../dist" --onSuccess "node ../dist/server" 

dev:
	make dev-server & make dev-website

build-website:
	cd website && ng build --prod=true --outputPath="../dist/public"

build-server:
	cd server && cp -u -r ./node_modules ./assets ../dist && npx tsc

build:
	make build-server && make build-website

deploy:
	rsync -avzz dist/ malav@projbirdie.tech:apps/dist --delete