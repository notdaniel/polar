all:
	echo "Building polar..."
	coffee -o . -c src
	cp ./index.js ./index.js.tmp
	echo "#!/usr/bin/env node\n" > ./index.js.tmp
	cat ./index.js >> ./index.js.tmp
	mv ./index.js.tmp ./index.js
