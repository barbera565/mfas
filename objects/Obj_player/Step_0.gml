/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0073FBB0
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1186B60D
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 78273AB4
var l78273AB4_0;
l78273AB4_0 = mouse_check_button(mb_left);
if (l78273AB4_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68215D14
	/// @DnDParent : 78273AB4
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 740DABB0
		/// @DnDParent : 68215D14
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "Obj_bullet"
		/// @DnDArgument : "layer" ""layer_bullet""
		/// @DnDSaveInfo : "objectid" "Obj_bullet"
		instance_create_layer(x, y, "layer_bullet", Obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79003B66
		/// @DnDParent : 68215D14
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 10;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1595B80C
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;