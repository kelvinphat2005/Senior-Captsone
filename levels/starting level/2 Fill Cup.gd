extends Event

# Called when the node enters the scene tree for the first time.
func _ready():
	event_id = 2
	active = false
	result_quest = [null]
	completed_quest = 2
	trigger = TRIGGER.INTERACT
	result = [RESULT.QUEST_COMPLETE]
	required_item = 3