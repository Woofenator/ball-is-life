extends Node

signal start_game
signal end_game

# Called when the node enters the scene tree for the first time.
func _ready():
  pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.extends Control
var game_state = 'start'

func _process(delta):
  if Input.is_action_pressed('ui_select'):
    match game_state:
      'start':
        print('start')
        start_game.emit()
      'over':
        start_game.emit()
  
func _on_out_of_bounds_game_over():
  print('Game Over :(')
  end_game.emit()
  pass # Replace with function body.

func _on_end_game():
  game_state = 'over'


func _on_start_game():
  game_state = 'playing'
