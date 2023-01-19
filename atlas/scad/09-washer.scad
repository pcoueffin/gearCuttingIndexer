inch=25.4;

module washer (od=(1+1/4)*inch,
	       id=17/64*inch,
	       thickness=3/16*inch) {
     difference() {
	  cylinder(d=od, h=thickness, center=true);
	  cylinder(d=id, h=thickness*2, center=true);
     }
}

washer();
