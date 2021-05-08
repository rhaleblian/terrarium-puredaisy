TARGET=passthru

binary:
	python pd2dsy/pd2dsy.py --board petal --out_dir ../build $(TARGET).pd
	make -C build
	ls build/build/*.bin

bootstrap:
	git submodule init
	git submodule update
	cd pd2dsy && git submodule init
	cd pd2dsy && git submodule update	
	make -C pd2dsy/libdaisy

clean:
	rm -r build
