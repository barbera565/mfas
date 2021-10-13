/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7876DC3A
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 476CF81C
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 398B49A0
/// @DnDArgument : "speed" "16"
speed = 16;