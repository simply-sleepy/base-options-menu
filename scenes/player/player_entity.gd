extends CharacterBody2D

@export_category("Player Variables")
@export var move_speed : float = 100.0
@export var jump_speed : float = 50.0

@export_category("World Variables")
@export var gravity : float = 9.8


func _ready():
	pass


func _physics_process(delta):
	# get input()
	# move_character()
	apply_gravity(delta)
	
	move_and_slide()


func apply_gravity(delta : float) -> void:
	velocity.y += gravity * delta
