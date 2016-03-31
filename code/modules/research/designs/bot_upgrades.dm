///////////////////
// RESEARCH ITEM //
///////////////////

/datum/design/bot_upgrade
	// Should not be acquirable

/datum/design/bot_upgrade/boost
	name = "Bot Upgrade: Boost"
	desc = "The circuit board for giving a speed boost to bots"
	id = "bot_upgrade_boost"
	req_tech = list("programming" = 2, "engineering" = 2)
	build_type = MECHFAB
	materials = list(MAT_GLASS = 500)
	build_path = /obj/item/weapon/bot_upgrade/boost
	category = list("Misc")
	construction_time = 100

////////////////////////
// CIRCUIT BOARD ITEM //
////////////////////////

/obj/item/weapon/bot_upgrade/
	density = 0
	anchored = 0
	w_class = 2
	name = "bot upgrade"
	icon = 'icons/obj/module.dmi'
	icon_state = "id_mod"
	item_state = "electronic"
	origin_tech = "programming=2"
	materials = list(MAT_GLASS=500)
	var/board_type = "computer"

/obj/item/weapon/bot_upgrade/boost
	name = "Bot Upgrade: Boost"
	desc = "An upgrade for bots which provide them with a speed boost."
	origin_tech = "programming=2;engineering=2"
	var/boost = 0            // 0 is off, 1 is on
	var/boost_length = 50     // in deciseconds
	var/boost_cooldown = 300  // in deciseconds
	var/secbot_boost_delay = 1.6
	var/medbot_boost_delay = 4