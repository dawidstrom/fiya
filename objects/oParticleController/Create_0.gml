global.P_System = part_system_create_layer("Instances", false);
global.PFire = part_type_create();

self.mouse_down = false;

part_type_shape(global.PFire,pt_shape_pixel);            //This defines the particles shape
part_type_size(global.PFire,1,5,0,2);                    //This is for the size
part_type_color3(global.PFire, c_white, c_yellow, c_red);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.PFire,0.3);                        //This is its alpha. There are three different codes for this
part_type_speed(global.PFire,0.50,2,0,0);            //The particles speed
part_type_direction(global.PFire,80,100,0,20);            //The direction
part_type_orientation(global.PFire,80,100,0,5,true);        //This changes the rotation of the particle
part_type_blend(global.PFire,1);                         //This is the blend mode, either additive or normal
part_type_life(global.PFire,5,40);                       //this is its lifespan in steps</pre>
part_system_depth(global.PFire, -1);

spawn_cooldown_ = 10;
on_cooldown_ = false;

// Explosion
global.PExplosion = part_type_create();

part_type_sprite(global.PExplosion,sExplosionCenter,false,false,false);            //This defines the particles shape
part_type_size(global.PExplosion,1,1,0,0);                    //This is for the size
part_type_color3(global.PExplosion, c_white, c_yellow, c_red);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.PExplosion,0.3);                        //This is its alpha. There are three different codes for this
part_type_speed(global.PExplosion,0,0,0,0);            //The particles speed
part_type_direction(global.PExplosion,0,359,0,0);            //The direction
part_type_orientation(global.PExplosion,0,359,0,0,true);        //This changes the rotation of the particle
part_type_blend(global.PExplosion,true);                         //This is the blend mode, either additive or normal
part_type_life(global.PExplosion,5,40);                       //this is its lifespan in steps</pre>
part_system_depth(global.PExplosion, -1);