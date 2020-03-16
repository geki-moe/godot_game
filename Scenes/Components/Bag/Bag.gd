extends Control

var width = 5
var audio_player = AudioStreamPlayer.new()
var item_detail = load("res://Scenes/Components/Bag/ItemDetail.tscn").instance()

func _ready():
	pass

func initialize(items):
	var row = 1; var col = 1
	var row_margin = 10; var col_margin = 10
	
	var margin_left = 0; var margin_top = 0
	
	var loops = load("res://Assets/Sounds/select_001.ogg")
	audio_player.stream = loops
	audio_player.volume_db = 0
	audio_player.autoplay = false
	audio_player.bus = "GUI"
	get_node(".").add_child(audio_player)
	
	var Slot = load("res://Scenes/Components/Bag/Slot.tscn")
	
	item_detail.visible = false
	self.add_child(item_detail)
	
	for item in items:
		var slot = Slot.instance()
		slot.initialize(item)
		slot.rect_position.x = margin_left + (col * 50) + col_margin
		slot.rect_position.y = margin_top + (row * 50) + row_margin
		self.add_child(slot)
		
		col += 1
		if col % width == 0:
			row += 1
			col = 1
		
