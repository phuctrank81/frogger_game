extends Area2D


# Called when the node enters the scene tree for the first time.
var direction = Vector2.LEFT
var speed = 100
var colors = [
	preload("res://graphics/cars/green.png"),
	preload("res://graphics/cars/red.png"),
	preload("res://graphics/cars/yellow.png")
	]

func _ready() -> void:
	if position.x < 0:
		direction.x = 1
		$Sprite2D.flip_h = true
	$Sprite2D.texture = colors.pick_random()

func _process(delta: float) -> void:
	position += direction * speed * delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
