VC     	= iverilog
VFLAGS 	= -g2
VP		 	= vvp
VPFLAGS =
WV  		= gtkwave
WVFLAGS =
SRC_DIR = ./src
OBJ_DIR = ./build
SOURCES = $(shell ls $(SRC_DIR)/*.v)
OBJ     = $(OBJ_DIR)/out.vvp

$(OBJ): $(SOURCES)
	mkdir -p $(OBJ_DIR)
	$(VC) $(VFLAGS) -o $@ $^

*.vcd: $(OBJ)
	$(VP) $(VPFLAGS) $(OBJ)

run: *.vcd

wave: *.vcd
	$(WV) $(WVFLAGS) *.vcd

clean:
	rm -rf $(OBJ_DIR) *.o *.vvp *.vcd
