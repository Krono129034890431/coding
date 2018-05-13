///scr_check_for_player
target_distance = distance_to_object(obj_player);
if instance_exists(obj_player){
    if target_distance < sight and collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, true) == noone {
        if projectile_amount < projectile_limit{
            projectile = instance_create(x, y, obj_projectile);
            projectile.direction = point_direction(x, y, obj_player.x, obj_player.y);
            projectile.speed = 3;
            projectile_amount++;
        }
    }
}
