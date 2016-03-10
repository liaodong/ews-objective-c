CC=clang # or gcc

VPATH=core handlers

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

SRCS=main.m generator.m $(subst handlers/, ,$(wildcard handlers/*.m))

OBJS=$(SRCS:%.m=objects/%.o)

CFLAGS=-Wall -Werror -g  $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o main

run : main
	./main


main : $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) $(OUT)

clean : 
	+rm -f objects/*.o
	+rm -f main
	+rm -rf main.dSYM


DEPDIR = .d
$(shell mkdir -p $(DEPDIR) >/dev/null)
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.Td

COMPILE.m  = $(CXX) $(DEPFLAGS) $(CFLAGS) -c
POSTCOMPILE = mv -f $(DEPDIR)/$*.Td $(DEPDIR)/$*.d

objects/%.o : %.m
objects/%.o : %.m $(DEPDIR)/%.d
	$(COMPILE.m) $(OUTPUT_OPTION) $<
	$(POSTCOMPILE)

$(DEPDIR)/%.d: ;
.PRECIOUS: $(DEPDIR)/%.d

-include $(patsubst %,$(DEPDIR)/%.d,$(basename $(SRCS)))

