extends CharacterBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

@export var intialSpeed = 500


# Set initial speed to 0 to have the game be startable by space
var speed = 0;

# Pick random starting direction
func _ready():
  velocity = Vector2(500, 0)
  pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
  var collision = move_and_collide(velocity * delta)
