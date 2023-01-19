inch=25.4;

module index_pin_guide_slide(radius=inch/2,
			     width=(1+1/2)*inch,
			     length=(5+1/2)*inch,
			     thickness=(3/8)*inch,

			     slotLength=(3+1/4)*inch,
			     slotWidth=0.375*inch,
			     slotPosition=inch/4,

			     bossD=inch,
			     bossPosition=(3/4)*inch,

			     boltD=(7/32)*inch,
			     cboreD=(21/64)*inch,
			     cboreDepth=(7/32)*inch,
			     boltSpacing=inch,
			     boltPosition=inch/2) {
     difference() {
	  linear_extrude(height=thickness, center=true)
	       difference() {
	       hull() {
		    for (x=[-1,1]*(width/2-2*radius)) {
			 translate([x,length/2-radius]) {
			      circle(r=radius);
			 }
		    }
		    translate([0,-length/2]) {
			 square([width, 0.01], center=true);
		    }
	       }
	       
	       translate([0,-slotLength/2+length/2-slotPosition])
		    square([slotWidth, slotLength], center=true);
	       
	       translate([0,-length/2+bossPosition])
		    circle(d=bossD);
	       
	  }

	  for(y=[-1,1]*boltSpacing/2) {
	       for(x=[-1,1]*boltSpacing/2) {
		    translate([x,-length/2+bossPosition+y,0]) union() {
			 cylinder(d=boltD, h=thickness*2, center=true);
			 translate([0,0,-cboreDepth/2+thickness/2]) {
			      cylinder(d=cboreD, h=cboreDepth+1, center=true);
			 }
		    }
	       }
	  }
	}
}

index_pin_guide_slide();
