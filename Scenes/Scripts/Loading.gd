extends Node2D

func _ready():
	
	OS.center_window()
	
	var OSTest = load("res://Scenes/Scripts/Test.gd")
	var os_test = OSTest.new()
	os_test.log_system_info()
	 
	var PatchMgr = load("res://Scenes/Scripts/PatchManager.gd")
	var mgr = PatchMgr.new()
	mgr.check_patch_version()
	
	var main_scene = preload("res://Scenes/Main.tscn");
	get_tree().get_root().call_deferred("add_child", main_scene.instance())
