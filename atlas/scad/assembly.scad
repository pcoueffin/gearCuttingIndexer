use<01-index_housing.scad>
use<02-index_pin_guide_slide.scad>
use<03-index_shaft_modified.scad>
use<04-index_pin_guide.scad>
use<05-index_pin_handle.scad>
use<06-index_pin.scad>
use<07-guide_lock.scad>
use<09-washer.scad>
use<10-set_collar.scad>

inch=25.4;

index_housing();
translate([0,(4+3/4+3/8)*inch/2,(5+1/2-1-1/2)*inch/2])
rotate([90,0,0])
index_pin_guide_slide();
translate([0,114.5,0]) rotate([90,0,0])
index_shaft_modified_3quarter();


translate([0,-65,0]) rotate([90,0,0]) set_collar();
translate([0,-82,0]) rotate([90,0,0]) washer();

module index_pin_assy() {
     rotate([0,0,180])
     translate([0,-9/16*inch,0]) {
	  translate([0,9/16*inch,0])
	       index_pin_guide();
	  translate([0,0,-50])
	       index_pin();
	  translate([0,0,30])
	       index_pin_handle();
     }
     translate([0,-23,0])
     rotate([-90,0,0])
     guide_lock();
}

translate([0,(4+3/4+6/8)*inch/2,(5+1/2-1-1/2)*inch/2+20])
index_pin_assy();
