inch=25.4;

module index_pin(tipRadius=1/16*inch,
		 shoulderRadius=3/16*inch,
		 tipSection=[0.375, 14],
     sections=[[0.250, 16, 14],
	       [7/32 ,  3, 30],
	       [0.136, 11, 33]], $fn=100) {
     translate([0,0,tipSection[1]*inch/16])
     intersection() {
	  translate([0,0,-14/16*inch+tipRadius]) rotate([90,0,0]) hull($fn=100) {
	       cylinder(r=tipRadius, h=tipSection[0]*inch, center=true);
	       for(x=[-1,1]*tipSection[0]*inch/4) {
		    // Faking that 14.5 degree angle by moving back
		    // should do trig there.
		    translate([x,12/16*inch,0]) {
			 cylinder(r=shoulderRadius,
				  h=tipSection[0]*inch,
				  center=true);
		    }
	       }
	  }
	  translate([0,0,-14/16*inch/2]) cylinder(d=0.375*inch, h=14/16*inch, center=true);
     }
     for (section=sections) {
	  translate([0,0,section[2]*inch/16]) {
	       cylinder(d=section[0]*inch, h=section[1]*inch/16);
	  }
}
     
}
		 

index_pin();
