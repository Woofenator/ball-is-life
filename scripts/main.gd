extends Node

signal start_game

# Called when the node enters the scene tree for the first time.
func _ready():
  pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
  pass


func _on_out_of_bounds_game_over():
  print('Game Over :(')
  pass # Replace with function body.
