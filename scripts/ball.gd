extends CharacterBody2D

var block = preload("res://scripts/block.gd")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

@export var intialSpeed = 500
@export var min_angle = 0.25
@export var max_angle = 0.75
@export var initialPosition = Vector2.ZERO


# Set initial speed to 0 to have the game be startable by space
var speed = 0;

# Pick random starting direction
func _ready():
  pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
  var collision = move_and_collide(velocity * delta)
  if(collision):
    velocity=velocity.bounce(collision.get_normal())
    var collider = collision.get_collider()
    if (collider.has_signal('collided')):
      collider.emit_signal('collided')
    else:
      get_node('WallHit').play()


func _on_main_start_game():
  position = initialPosition
  var intialDirection = Vector2.from_angle(PI * randf_range(min_angle, max_angle))
  velocity = intialDirection.normalized() * intialSpeed


func _on_main_end_game():
  velocity = Vector2.ZERO
