inch=25.4;

module guide_lock(sections=[
		       [1/2,         8, 0],
		       [0.213-0.05,  1, 8],
		       [0.213,      12, 9]]) {
     union() {
	  for (section=sections) {
	       translate([0,0,section[2]*inch/16]) {
		    cylinder(d=section[0]*inch, h=section[1]*inch/16);
	       }
	  }

	  translate([0,0,3/16*inch]) rotate([0,90,0]) {
	       cylinder(d=inch/8, h=(1+1/2)*inch, center=true);
	  }
     }
     
}

guide_lock();
