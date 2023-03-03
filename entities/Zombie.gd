extends Enemy

export var attack_interval = 2
var attack_ready = true

var attacked_time = OS.get_unix_time() - 10

# Called when the node enters the scene tree for the first time.
func _ready():
	attack_damage = 3

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if can_see_player:
		move_toward_player()
		
	else:
		if last_seen_player != Vector3.ZERO:
			move_toward_pos(last_seen_player)
	
	
	if attack_ready:
		if distance_from_player() < attack_range:	
			damage_player(attack_damage)
			attack_ready = false
			attacked_time = OS.get_unix_time()
	
	if OS.get_unix_time() - attacked_time >= attack_interval:
		attack_ready = true
