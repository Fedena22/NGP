extends Node

onready var img = get_node("ParallaxBackground/ParallaxLayer/Back")

func _ready():
	 img.texture.flags = 15
 