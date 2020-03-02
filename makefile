dev-website:
	cd website && ng serve --open=true

dev-server:
	cd server && npx tsc-watch --onCompilationComplete "cp -u -r ./node_modules ../dist" --onSuccess "node ../dist/server" 

build-website:
	cd website && ng build --prod=true --outputPath="../dist/public"

build-server:
	cd server && cp -u -r ./node_modules ../dist && npx tsc
