if(global.mana_points < global.mana_max) {
    global.mana_points += 1;
}
else { global.mana_points = global.mana_max; }
alarm[0] = mana_regen_cooldown;