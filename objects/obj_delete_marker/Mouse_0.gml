if instance_exists(global.selected) {
	instance_destroy(global.selected);
	global.selected = noone;
}