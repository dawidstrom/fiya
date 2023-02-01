coins = 100
rewards = 0

enum CoinType {
	ruby,
	gold,
	silver,
	copper
};

ruby = {
	type : CoinType.ruby,
	sprite : sRubyCoin,
	value : 50
};

gold = {
	type : CoinType.gold,
	sprite : sGoldCoin,
	value : 10
};

silver = {
	type : CoinType.silver,
	sprite : sSilverCoin,
	value : 5
};

copper = {
	type : CoinType.copper,
	sprite : sCopperCoin,
	value : 1
};

coin_types = ds_map_create();
ds_map_add(coin_types,CoinType.ruby,ruby);
ds_map_add(coin_types,CoinType.gold,gold);
ds_map_add(coin_types,CoinType.silver,silver);
ds_map_add(coin_types,CoinType.copper,copper);