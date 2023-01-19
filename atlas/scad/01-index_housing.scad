inch=25.4;

module index_housing(length=(5 + 1/8)*inch, blockSize=(1 + 1/2)*inch,
     bossLength=3/8*inch, bossD=inch,
     id=0.750*inch, screwD=3.8, screwDepth=5/16*inch, screwGap=inch,
	  sideHoleD=5.1, sideHolePos=(1+1/4)*inch) {
     difference() {
	  union() {
	       cube([blockSize, length-bossLength, blockSize], center=true);
	       translate([0,bossLength/2,0]) {
		    rotate([90,0,0]) {
			 cylinder(d=bossD, h=length, center=true);
		    }
	       }
	  }
	  // Through holes
	  rotate([90,0,0]) {
	       cylinder(d=id, h=length*2, center=true);
	       for (y=[-1,1]) {
		    for (x=[-1,1]) {
			 translate([x*screwGap/2,y*screwGap/2,
				    -length/2+bossLength/2+screwDepth/2])
			      cylinder(d=screwD, h=screwDepth+1, center=true, $fn=25);
		    }
	       }
	  }
	  // side hole
	  rotate([0,-90,0]) translate([0,length/2-bossLength/2-sideHolePos,0]) {
	  cylinder(d=sideHoleD, h=blockSize, center=false);
	  // I fudged the 82 degree csk should really pass that angle as a parameter and do trig.
	  translate([0,0,15])
	       cylinder(d2=sideHoleD*2, d1=0, h=blockSize/2+0.1-15, center=false, $fn=100);
	  
	  }
    }
}

index_housing();
