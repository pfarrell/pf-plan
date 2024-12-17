
post:
	@PYTHONPATH=cms bin/new_post

dotplan:
	@PYTHONPATH=cms bin/new_dotplan

build: clean
	@PYTHONPATH=cms bin/gen_site dist
	@cp -R assets/* dist/
	@# cp site/*.html dist/
	@# cp site/*.pdf dist/

build-prod: clean
	@PYTHONPATH=cms bin/gen_prod_site dist
	@cp -R assets/* dist/
	#@cp site/*.html dist/
	#@cp site/*.pdf dist/

clean:
	@rm -rf dist/css dist/img dist/js dist/lib
	@rm -f dist/*

black:
	@PYTHONPATH=cms black cms bin

open: build
	open dist/index.html
