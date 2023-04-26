INCLUDES = .
CFLAGS = -I$(INCLUDES)
Q = @

linker.lds: link.ld
	@echo "  [CPP] $@"
	$(Q)$(CC) -E -x c -P -Wp,-MD,$@.d,-MT,'linker.lds' $(CFLAGS) -o $@ $<

clean:
	@rm -rf *.lds *.d

.PHONY = clean


