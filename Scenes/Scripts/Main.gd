extends Node2D

func _ready():
	
	var audio_player = AudioStreamPlayer.new()
	get_node(".").add_child(audio_player)
	var loops = preload("res://Assets/Loops/Space Cadet.ogg")
	audio_player.stream = loops
	audio_player.volume_db = -20
	audio_player.play()
	
	var bag = load("res://Scenes/Components/Bag/Bag.tscn").instance()
	var items = []
	for i in range(0, 28):
		items.append({
			"name": "fuck" + str(i),
			"icon": "",
			"description": "深间锦账久不闻，幽怀悄悄两相诉。" \
						+ "两人心意何双双，奇香缥缈满兰房。" \
						+ "报过东来复西去，终宵达旦恒芬芳。" \
						+ "恩情子母深入骨，柔枝嫩干探重窟。" \
						+ "酿借风流乡媚态，笑看绝色两国倾。" \
						+ "倾国姿容皆绝世，枕边小活声切切。" \
						+ "揣手问郎谁个好，新蒲细柳难经雪。" \
						+ "明月婵娟照书堂，小语低声问玉郎。" \
						+ "千里关山如冰雪，玉楼人醉伴花眠。"
		})
	
	bag.initialize(items)
	self.add_child(bag)
