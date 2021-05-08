TARGET=passthru

binary:
	python pd2dsy/pd2dsy.py --board petal --out_dir ../build $(TARGET).pd
	make -C build
	ls build/build/*.bin

bootstrap:
	git submodule init
	git submodule update --recursive
	make -C pd2dsy/libdaisy

clean:
	rm -r build

