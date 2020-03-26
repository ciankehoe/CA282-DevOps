dst = ~/local/bin
src = $(wildcard [a-z]*)

install: $(dst)
install: $(addprefix $(dst)/, $(src))

# install -m, --mode=MODE
# set permission mode (as in chmod), instead of rwxr-xr-x

$(dst)/%: %
	install -v -m 0777 $< $@

%.o: %.c
	gcc -o $< $@

$(dst):
	mkdir -vp $@

.PHONY: install

