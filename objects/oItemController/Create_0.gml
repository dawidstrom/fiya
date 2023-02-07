enum types {
	triangle,
	ball,
	box,
	rectangle,
	coolThing,
	corn,
	popcorn,
	demonSword,
	rocket,
	triangleCollection,
	triangleTiny,
	bomb,
	clock,
	none
}

triangle =
{
	name : "triangle",
	sprite : sTriangle,
	object : oTriangle,
	type : types.triangle,
	cost : 1,
	hp: 100,
	spawn_time : 200
};

ball =
{
	name : "ball",
	sprite : sBall,
	object : oBall,
	type : types.ball,
	cost : 2,
	hp: 200,
	spawn_time : 300
};

box =
{
	name : "box",
	sprite : sBox,
	object : oBox,
	type : types.box,
	cost : 3,
	hp: 300,
	spawn_time : 400
};

rectangle =
{
	name : "rectangle",
	sprite : sRectangle,
	object : oRectangle,
	type : types.rectangle,
	cost : 10,
	hp: 1000,
	spawn_time : 600
};

cool_thing =
{
	name : "coolThing",
	sprite : sCoolThing,
	object : oCoolThing,
	type : types.coolThing,
	cost : 50,
	hp: 5000,
	spawn_time : 100 //1000
};

corn = {
	name : "corn",
	sprite : sCorn,
	object : oCorn,
	type : types.corn,
	cost : 10,
	hp: 100, //1000,
	spawn_time : 400
}

popcorn = {
	name : "popcorn",
	sprite : sPopcorn,
	object : oPopcorn,
	type : types.popcorn,
	cost : 0,
	hp: 30,
	spawn_time : 100
}

demonSword = {
	name : "popcorn",
	sprite : sDemonSword,
	object : oDemonSword,
	type : types.demonSword,
	cost : 100,
	hp: 300,
	spawn_time : 200
}

rocket = {
	name : "rocket",
	sprite : sRocket,
	object : oRocket,
	type : types.rocket,
	cost : 100,
	hp: 500,
	spawn_time : 140
}

triangleCollection = {
	name : "triangle collection",
	sprite : sTriangle,
	object : oTriangleCollection,
	type : types.triangleCollection,
	cost : 50,
	hp: 500,
	spawn_time : 140
}

triangleTiny = {
	name : "triangle tiny",
	sprite : sTriangleTiny,
	object : oTriangleTiny,
	type : types.triangleTiny,
	cost : 5,
	hp: 20,
	spawn_time : 0
}

bomb = {
	name : "bomb",
	sprite : sBomb,
	object : oBomb,
	type : types.bomb,
	cost : 10,
	hp: 30,
	spawn_time : 60
}

clock = {
	name : "clock",
	sprite : sClockIcon,
	object : oClock,
	type : types.clock,
	cost : 10,
	hp: 230,
	spawn_time : 60
}

item_types = ds_map_create();
ds_map_add(item_types, types.triangle, triangle);
ds_map_add(item_types, types.ball, ball);
ds_map_add(item_types, types.box, box);
ds_map_add(item_types, types.rectangle, rectangle);
ds_map_add(item_types, types.coolThing, cool_thing);
ds_map_add(item_types, types.corn, corn);
ds_map_add(item_types, types.popcorn, popcorn);
ds_map_add(item_types, types.demonSword, demonSword);
ds_map_add(item_types, types.rocket, rocket);
ds_map_add(item_types, types.triangleCollection, triangleCollection);
ds_map_add(item_types, types.triangleTiny, triangleTiny);
ds_map_add(item_types, types.bomb, bomb);
ds_map_add(item_types, types.clock, clock);