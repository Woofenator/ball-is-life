extends CharacterBody2D

@export var leftEvent = 'paddle_left'
@export var rightEvent = 'paddle_right'
@export var maxSpeed = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
  pass # Replace with function body.

func _physics_process(delta):
  var movement = Vector2.ZERO
  if Input.is_action_pressed(leftEvent):
    movement = delta * Vector2.LEFT * maxSpeed;
  elif Input.is_action_pressed(rightEvent):
    movement = delta * Vector2.RIGHT * maxSpeed;
  
  move_and_collide(movement)
