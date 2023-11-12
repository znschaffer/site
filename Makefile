THEME := adoc-riak.css
OPTIONS := -a nofooter -a imagesdir="./img" -a stylesheet="$(THEME)"
SRC := $(wildcard src/*.adoc)

all:
	asciidoctor $(OPTIONS) -D out/ $(SRC)
	cp -r src/img out/
