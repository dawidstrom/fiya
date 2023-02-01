var dir2 = random(359);

// Spread further for upward direction
//var range = size+random(offset);//+(sin(dir2+self.dir+dir_delta-attached_to.phy_rotation)+1)/2*random(offset);

var range = size+random(offset)*(sin(dir2+dir+dir_delta+attached_to.phy_rotation)+1);


var dx = lengthdir_x(distance,dir+dir_delta-attached_to.phy_rotation);
var dy = lengthdir_y(distance,dir+dir_delta-attached_to.phy_rotation);

var test_x = cos(dir2) * range + dx;
var test_y = sin(dir2) * range + dy;

//show_debug_message("test_x:{0}, test_y:{1}", test_x, test_y);

if debug_controller.debugging {
	instance_create_depth(x+test_x,y+test_y,-1,oAttempt);
} else {
	instance_create_depth(x+test_x,y+test_y,-1,oFireBall);
}

alarm[0] = 30+random(30);