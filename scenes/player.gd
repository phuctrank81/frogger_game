extends CharacterBody2D


var direction: Vector2 = Vector2(1,1)
var speed: int = 200

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("Left","Right","Up","Down")	
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_just_pressed("Confirm"):
		print("Chi chay 1 lan khi bam Space")
