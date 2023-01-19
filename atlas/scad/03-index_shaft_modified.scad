inch=25.4;

module index_shaft_modified_3quarter() {
     index_shaft(sections=[
		      [ 8,  5/16     ,   0],
		      [ 2,  5/16-0.05,   8],
		      [12,  3/4      ,  10],
		      [ 6,1+1/4      ,  22],
		      [49,0.750      ,  28],
		      [16,0.740      ,  77],
		      [29,0.750      ,  93],
		      [ 2,  5/16-0.05, 121],
		      [ 8,  5/16     , 123]]
	  );
}

module index_shaft_modified_half() {
     index_shaft(sections=[
		      [ 8,  5/16     ,   0],
		      [ 2,  5/16-0.05,   8],
		      [12,  1/2      ,  10],
		      [ 6,1+1/4      ,  22],
		      [49,0.750      ,  28],
		      [16,0.740      ,  77],
		      [29,0.750      ,  93],
		      [ 2,  5/16-0.05, 121],
		      [ 8,  5/16     , 123]]
	  );
}

// section length units are 1/16"
module index_shaft(
     sections=[[ 8,  5/16     ,   0],
	       [ 2,  5/16-0.05,   8],
	       [12,  5/16     ,  10],
	       [ 6,1+1/4      ,  22],
	       [49,0.750      ,  28],
	       [16,0.740      ,  77],
	       [28,0.750      ,  93],
	       [ 2,  5/16-0.05, 121],
	       [ 8,  5/16     , 123]],
     keyway=[3/16,3/32,1/4,122/16]*inch,
     pin=[1/16,1/4,1/4]*inch ) {
     difference() {
	  union() {
	       for (section=sections) {
		    translate([0,0,section[2]*inch/16])
			 cylinder(d=section[1]*inch, h=section[0]*inch/16);
	       }
	  }

	  // Pin hole
	  translate([0,0.750*inch/2-pin[1]/2,keyway[3]-pin[2]]) {
	       rotate([90,0,0]) {
		    cylinder(d=pin[0], h=pin[1]+1, center=true, $fn=30);
	       }
	  }

	  // Keyway
	       translate([0,0.750*inch/2-keyway[1]/2,keyway[3]-pin[2]]) {
	       rotate([90,0,0]) hull(){
		    
		    cylinder(d=keyway[0], h=keyway[1]+1, center=true, $fn=30);
		    translate([0,keyway[2],0])
		    cylinder(d=keyway[0], h=keyway[1]+1, center=true, $fn=30);
	       }
	  }
	  
     }
     
}

index_shaft_modified_3quarter();
