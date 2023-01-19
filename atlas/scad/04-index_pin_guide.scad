inch=25.4;

module index_pin_guide(insertWidth=0.375*inch,
		       insertHeight=3/16*inch,

		       bodyWidth=(1+1/2)*inch,
		       bodyHeight=9/16*inch,

		       totalHeight=(1+3/16)*inch,

		       thickness=(1+1/4)*inch,
		       bolt=5.4,
		       pinHole=[1/4*inch, 3/8*inch, inch]
		       
     ) {
     difference() {
	  linear_extrude(height=thickness,center=true) union() {
	       translate([0,insertHeight/2])
		    square([insertWidth, insertHeight], center=true);
	       hull() {
		    translate([0,-bodyHeight/2])
			 square([bodyWidth, bodyHeight], center=true);
		    translate([0,insertHeight-totalHeight])
			 circle(d=0.1);
	       }
	  }

	 // Bolt
	 rotate([90,0,0]) cylinder(d=bolt, h=bodyHeight*2, center=true);

	 // Hole for indexing pin...
	 translate([0,-bodyHeight,0]) {
	      cylinder(d=pinHole[0], h=thickness*2, center=true);
	       translate([0,0,-pinHole[2]/2+thickness/2]) {
		    cylinder(d=pinHole[1], h=pinHole[2]+1, center=true);
	       }
	 }
     }
}

index_pin_guide();
