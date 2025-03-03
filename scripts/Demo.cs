using Godot;
using System;

public partial class Demo : Node2D
{
	public string _my_string = "hello";
	public CharacterBody2D _player;

	public override void _Ready()
	{
		GD.Print(_my_string);
		_player = GetNode<CharacterBody2D>("Player");
	}

	public override void _Process(double delta)
	{
		GD.Print($"");

		if (Input.IsActionPressed("up"))
		{
			var pos = _player.GlobalPosition;
			pos.Y += -0.1f;
			_player.GlobalPosition = pos;
		}
	}

	
}
