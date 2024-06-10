using Godot;
using System;
using System.Collections.Generic;

public partial class Save_Load_Manager : Node
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}

	public void saveGame(string name)
	{
		DirAccess dir = DirAccess.Open("user://");
		if (dir.exists("Player_Progression"))
		{
			dir.MakeDir("Player_Progression");
		}

		dir = DirAccess.Open("user://Player_Progression");

		if (!dir.DirExists("Player_Progression"))
		{
		}
	}
}
