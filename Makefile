SRCS := to2.sh to16.sh l2b.sh b2l.sh
INSTALL_DIR := ~/opt/bin
BINS := $(patsubst %.sh,$(INSTALL_DIR)/%,$(SRCS))

.PHONY: all
all: $(BINS)

$(INSTALL_DIR)/%: %.sh
	@mkdir -p $(INSTALL_DIR)
	install --mode=777 $< $@

clean:
	rm $(BINS)
