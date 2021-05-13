TARGET=passthru

$(TARGET).bin: $(TARGET).pd
	- rm -r build $(TARGET).bin
	python pd2dsy/pd2dsy.py --board petal --out_dir $(PWD)/build $(TARGET).pd
	make -C build
	cp build/build/$(TARGET).bin .

bootstrap:
	git submodule init
	git submodule update
	cd pd2dsy && git submodule init
	cd pd2dsy && git submodule update	
	make -C pd2dsy/libdaisy

clean:
	- rm -r build $(TARGET).bin

.PHONY: clean bootstrap
