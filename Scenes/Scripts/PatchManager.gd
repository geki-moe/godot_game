var WebClient = load("res://Scenes/Scripts/Library/WebClient.gd").WebClient
var web_client = WebClient.new("127.0.0.1", 80)

func check_patch_version():
	var ret_val = web_client.request("/game/patch/version.json", HTTPClient.METHOD_GET)
	print(ret_val)
	
func download_patch(patch_pack_url):
	pass
	
func apply_local_patch():
	pass
