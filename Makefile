publish:
	rsync -azP --delete --exclude meltmail site/ uberspace:/home/funken/web/stefantrauth.de/
