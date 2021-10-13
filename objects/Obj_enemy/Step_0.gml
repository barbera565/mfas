/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1486ADE6
/// @DnDArgument : "obj" "Obj_player"
/// @DnDSaveInfo : "obj" "Obj_player"
var l1486ADE6_0 = false;
l1486ADE6_0 = instance_exists(Obj_player);
if(l1486ADE6_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 53D923B1
	/// @DnDParent : 1486ADE6
	/// @DnDArgument : "x" "Obj_player.x"
	/// @DnDArgument : "y" "Obj_player.y"
	direction = point_direction(x, y, Obj_player.x, Obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 15F47147
	/// @DnDParent : 1486ADE6
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 253B1AC9
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E6A33AF
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 73AAB741
	/// @DnDParent : 7E6A33AF
	instance_destroy();
}