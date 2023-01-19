.PHONY: ALL
ALL: png/assembly.png stl/01-index_housing.stl stl/02-index_pin_guide_slide.stl stl/03-index_shaft_modified.stl stl/04-index_pin_guide.stl stl/05-index_pin_handle.stl stl/06-index_pin.stl stl/07-guide_lock.stl stl/09-washer.stl stl/10-set_collar.stl


stl/%.stl: scad/%.scad
	openscad -o $@ $<

png/%.png: scad/%.scad
	openscad -o $@ $<
