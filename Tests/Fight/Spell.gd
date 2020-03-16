class Spell:
	var name
	var icon
	var model
	var description
	
	var pre_length
	var post_length
	
	var physical_damage_val
	var spirit_damage_val
	
	func _cast(character, target):
		print(character.name, " cast ", self.name, " to ", target.name)
		pass
