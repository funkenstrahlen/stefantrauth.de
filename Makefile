preview:
	jekyll serve

publish:
	jekyll build
	rsync -azP --delete --exclude meltmail _site/ i42n@auriga.uberspace.de:/home/i42n/web/stefantrauth.de/