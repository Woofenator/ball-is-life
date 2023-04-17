extends StaticBody2D

signal collided

# Called when the node enters the scene tree for the first time.
func _ready():
  pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
  pass


func _on_collided():
  get_parent().remove_child(self)
  pass # Replace with function body.
