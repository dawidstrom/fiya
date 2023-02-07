speed = random_range(1,5);
friction = 0.25;
direction = random(360);

alarm[0] = 50;
part_particles_create(global.P_System, x-30+random(30), y-30+random(30), global.PExplosion, 1)