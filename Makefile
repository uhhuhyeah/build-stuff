MARKDOWN_FILES := $(wildcard *.md)
OUTPUT_FILES := $(patsubst %.md,docroot/%.html,$(MARKDOWN_FILES))


docroot/%.html:%.md _header.html _footer.html
	redcarpet $< > $@.tmp
	cat _header.html $@.tmp _footer.html > $@
	rm $@.tmp


all: $(OUTPUT_FILES)


clean:
	rm $(OUTPUT_FILES)
	rm -f $(patsubst %,%.tmp,$(OUTPUT_FILES))


.PHONY: all clean
