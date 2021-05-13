TARGET=passthru

$(TARGET).bin: $(TARGET).pd
	- rm -r build $(TARGET).bin
	python pd2dsy/pd2dsy.py --board petal --hvcc_cmd 'python hvcc/hvcc.py' --out_dir $(PWD)/build $(TARGET).pd
	make -C build
	cp build/build/$(TARGET).bin .

bootstrap:
	git submodule init
	git submodule update
	cd pd2dsy && git submodule init
	cd pd2dsy && git submodule update	
	make -C pd2dsy/libdaisy
	cp pd2dsy/hvcc/bin/hvcc pd2dsy/hvcc.py

clean:
	- rm -r build $(TARGET).bin

.PHONY: clean bootstrap
