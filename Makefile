QUARTUS_DIR=/opt/intelFPGA_lite/21.1/quartus/bin
PROJECT=pll-fpga

all: synthesize fit assemble

synthesize:
	@ $(QUARTUS_DIR)/quartus_map --read_settings_files=on --write_settings_files=off $(PROJECT) -c $(PROJECT)

fit:
	@ $(QUARTUS_DIR)/quartus_fit --read_settings_files=on --write_settings_files=off $(PROJECT) -c $(PROJECT)

assemble:
	@ $(QUARTUS_DIR)/quartus_asm --read_settings_files=on --write_settings_files=off $(PROJECT) -c $(PROJECT)

program:
	@ $(QUARTUS_DIR)/quartus_pgm -z --mode=JTAG --operation="p;output_files/$(PROJECT).sof@1"
jtag:
	@ sudo $(QUARTUS_DIR)/jtagd
	@ sudo $(QUARTUS_DIR)/jtagconfig

killjtag:
	@ sudo killall jtagd

clean:
	@ rm -rf db/ output_files/ incremental_db/
