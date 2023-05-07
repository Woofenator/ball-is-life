extends Control

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
  pass

func _on_main_end_game():
  get_node("GameOver").show()

func _on_main_start_game():
  get_node("GameOver").hide()
  get_node("SpaceToStart").hide()
