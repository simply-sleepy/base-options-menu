class_name MainMenu
extends Control


@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button as Button
@onready var options_button = $MarginContainer/HBoxContainer/VBoxContainer/Options_Button as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/Exit_Button as Button
@onready var margin_container = $MarginContainer as MarginContainer
@onready var options_menu = $Options_Menu as OptionsMenu



func _ready():
	handle_connecting_signals()


func _on_start_button_pressed():

	pass


func _on_options_button_pressed():
	margin_container.visible = false
	options_menu.set_process(true)
	options_menu.visible = true



func _on_exit_button_pressed():
	get_tree().quit()
	

func on_exit_options_menu() -> void:
	margin_container.visible = true
	options_menu.visible = false


func handle_connecting_signals() -> void:
	start_button.button_down.connect(_on_start_button_pressed)
	options_button.button_down.connect(_on_options_button_pressed)
	exit_button.button_down.connect(_on_exit_button_pressed)
	options_menu.exit_options_menu.connect(on_exit_options_menu)
