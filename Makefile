INCLUDES = .
CFLAGS = -I$(INCLUDES)
Q = @

linker.lds: link.ld
	@echo "  [CPP] $@"
	# -x: specify language
	# -P: remove misc unused info
	# -Wp: pass precompile option to cpp
	# -MD: generated a depends file
	# -MT: change target in depends file
	$(Q)$(CC) -E -x c -P -Wp,-MD,$@.d,-MT,'linker.lds' $(CFLAGS) -o $@ $<

clean:
	@rm -rf *.lds *.d

.PHONY = clean


