class_name JumpHandler
extends Node2D

@onready var audio_stream_player_2d = $AudioStreamPlayer2D as AudioStreamPlayer2D


@export var jump_speed : float = -400.0
@export var fall_speed : float = 400.0
@export var max_jumps : int = 2

var current_jumps_remaining : int = 0
var has_jumped : bool = false

func _ready():
	current_jumps_remaining = max_jumps

func handle_jump(entity : CharacterBody2D, jump_pressed : bool) -> void: 
	if not entity.is_on_floor() and has_jumped == false:
		return
	if entity.is_on_floor() == true: 
		current_jumps_remaining = max_jumps
		has_jumped = false
	if jump_pressed == true and current_jumps_remaining > 0:
		has_jumped = true
		current_jumps_remaining -=1
		entity.velocity.y = jump_speed
		audio_stream_player_2d.play()
		handle_fall(entity)

func handle_fall(entity : CharacterBody2D) -> void:
	#if entity.is_on_floor() == false and has_jumped == true:
	pass
