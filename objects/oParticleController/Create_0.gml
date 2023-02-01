global.P_System = part_system_create_layer("Instances", false);
global.Particle1 = part_type_create();

self.mouse_down = false;

part_type_shape(global.Particle1,pt_shape_pixel);            //This defines the particles shape
part_type_size(global.Particle1,1,5,0,2);                    //This is for the size
part_type_color3(global.Particle1, c_white, c_yellow, c_red);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.Particle1,0.3);                        //This is its alpha. There are three different codes for this
part_type_speed(global.Particle1,0.50,2,0,0);            //The particles speed
part_type_direction(global.Particle1,80,100,0,20);            //The direction
part_type_orientation(global.Particle1,80,100,0,5,true);        //This changes the rotation of the particle
part_type_blend(global.Particle1,1);                         //This is the blend mode, either additive or normal
part_type_life(global.Particle1,5,40);                       //this is its lifespan in steps</pre>
part_system_depth(global.Particle1, -1);

spawn_cooldown_ = 10;
on_cooldown_ = false;