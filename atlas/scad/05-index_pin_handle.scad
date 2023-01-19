inch=25.4;

module index_pin_handle(handleD=3/4*inch,
			pinD=7/16*inch,

			pinLength=9/16*inch,
			threadD=3.5,
			hole=[15/64,1/4]*inch) {

     for (z=[0,1,2]*8) translate([0,0,z]) {
	       sphere(d=handleD);
	  }
     translate([0,0,-handleD/2-pinLength/2+2]) {
	  difference() {
	       cylinder(d=pinD, h=pinLength+4, center=true);
	       translate([0,0,-1-pinLength/2-2]) cylinder(d=hole[0], h=hole[1]+1);
	       cylinder(d=threadD, h=pinLength*4, center=true);
	       
	  }
     }

};

index_pin_handle();
