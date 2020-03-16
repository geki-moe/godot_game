extends Control

func _ready():
	pass # Replace with function body.

var item

func initialize(item):
	self.item = item
	get_node("Item").connect("pressed", self, "_on_Item_pressed")
	
func _on_Item_pressed():
	print(self.item.name, get_node("Item").get_size())
	
	var item_detail_panel = get_parent().item_detail
	item_detail_panel.initialize(self.item.name, self.item.description)
	item_detail_panel.rect_position.x = self.get_position().x + (get_node("Item").get_size().x/2)
	item_detail_panel.rect_position.y = self.get_position().y + (get_node("Item").get_size().y/2)
	item_detail_panel.visible = !item_detail_panel.visible
	
	get_parent().audio_player.play()
