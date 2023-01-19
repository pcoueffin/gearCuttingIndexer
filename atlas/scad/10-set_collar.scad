inch=25.4;

module set_collar(od=(1+1/4)*inch,
		  id=3/4*inch,
		  thickness=3/8*inch,
		  threadD=0.201*inch) {

     difference() {
	  cylinder(d=od, h=thickness, center=true);
	  cylinder(d=id, h=thickness*2, center=true);
	  rotate([90,0,0])
	  cylinder(d=threadD, h=od, center=false);
	  
     }
}

set_collar();
