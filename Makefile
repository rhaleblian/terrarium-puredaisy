TARGET=patch

$(TARGET).bin: $(TARGET).pd
	- rm -r build $(TARGET).bin
	python3 pd2dsy/pd2dsy.py --hvcc_cmd hvcc --board petal --out_dir $(PWD)/build $(TARGET).pd
	make -C build
	cp build/build/$(TARGET).bin .

bootstrap:
	git submodule init
	git submodule update
	cd pd2dsy && git submodule init
	cd pd2dsy && git submodule update	
	cd pd2dsy/hvcc && pip3 install .
	make -C pd2dsy/libdaisy

clean:
	- rm -r build $(TARGET).bin

.PHONY: clean bootstrap
