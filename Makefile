SRCS := bin.sh l2b.sh b2l.sh
BINS := $(patsubst %.sh,~/opt/bin/%,$(SRCS))

.PHONY: all
all: $(BINS)

~/opt/bin/%: %.sh
	install --mode=777 $< $@

