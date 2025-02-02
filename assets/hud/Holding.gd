extends Sprite2D

var player
var inventory 

var player_in_scene = false

@onready var test = preload("res://assets/items/Medkit/Medkit.png")

@onready var all_item_logos = {
	"fist": preload("res://assets/items/fist/fist.png"),
	"bandage" : preload("res://assets/items/bandage/Bandage.png"),
	"medkit": preload("res://assets/items/medkit/Medkit.png"),
	"cup": preload("res://assets/items/cup/Cup.png")
}

# Called when the node enters the scene tree for the first time.
# HUD is instantiated by the Player node
# so the parent of parent is player <-- wow
func _ready():
	
	
	print("HUD.Holding READY")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	inventory = PlayerVariables.inventory
	# print("h", inventory)
	
	var equipped_item = PlayerVariables.equipped_item
	# print(equipped_item)
	
	if equipped_item == null:
		set_texture(all_item_logos["fist"])
	else:
		set_texture(all_item_logos[equipped_item.item_name])
	
	if Input.is_action_pressed("jump"):
		set_texture(test)
	
