extends Area2D

func _ready():
	var callable = Callable(self, "_on_body_entered")
	connect("body_entered",callable)

func _on_body_entered(other):
	queue_free()	
	if (other.has_method("add_coin")):
		other.add_coin()
