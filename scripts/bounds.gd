extends Area2D

signal game_over

# Called when the node enters the scene tree for the first time.
func _ready():
  pass # Replace with function body.


func _on_body_entered(node):
  game_over.emit()


func _on_game_over():
  get_node("GameOver").play()
