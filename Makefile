VC				= iverilog
TARGET		= 2012
INCLUDE		= ./lib
MODULE		=	./module
VFLAGS		= -g$(TARGET) -I$(INCLUDE) -L$(MODULE)
VP				= vvp
VPFLAGS		=
WV				= gtkwave
WVFLAGS		=
SRC_DIR		= ./src
VVP_DIR		= ./build
VVP_OBJ		= $(VVP_DIR)/out.vvp
SOURCES		= $(shell ls $(SRC_DIR)/*.v)

$(VVP_OBJ): $(SOURCES)
	mkdir -p $(VVP_DIR)
	$(VC) $(VFLAGS) -t vvp -o $@ $^

build: $(VVP_OBJ)

*.vcd: $(VVP_OBJ)
	$(VP) $(VPFLAGS) $(VVP_OBJ)

run: *.vcd

wave: *.vcd
	$(WV) $(WVFLAGS) *.vcd

clean:
	rm -rf $(VVP_DIR) *.o *.vvp *.vcd
