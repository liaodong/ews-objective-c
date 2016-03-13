CC=clang # or gcc

VPATH=core handlers types messages

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

SRCS=main.m generator.m $(subst handlers/, ,$(wildcard handlers/*.m))

OBJS=$(SRCS:%.m=objects/%.o)

GEN_SRCS=$(subst types/, ,$(wildcard types/*.m)) $(subst messages/, ,$(wildcard messages/*.m))
GEN_OBJS=$(GEN_SRCS:%.m=objects/%.o)

CFLAGS=-Wall -Werror -g  $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o main

run : main gen $(GEN_OBJS)
	echo "Done $(GEN_SRCS)"

gen : generator.h generator.m gen.m
	$(CC) $(CFLAGS) $(LDFLAGS) generator.m gen.m  -o gen

main : $(OBJS) $(GEN_OBJS) $(SRCS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) $(GEN_OBJS) $(OUT)

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

