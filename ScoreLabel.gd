extends Label

var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _on_player_coin_touch():
	score += 1;
	text = "Score: %s" % score

