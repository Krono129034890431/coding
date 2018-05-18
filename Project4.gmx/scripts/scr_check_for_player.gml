///scr_check_for_player
target_distance = distance_to_object(obj_player);
projectile_distance = distance_to_object(obj_projectile);
if instance_exists(obj_player){
    if target_distance < sight and collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, true) == noone{
            projectile = instance_create(x, y-16, obj_projectile);
            projectile.direction = point_direction(x, y, obj_player.x, obj_player.y);
            projectile.speed = 3;
    }
}
