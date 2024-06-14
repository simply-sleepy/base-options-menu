extends Control

@onready var name_label = $HBoxContainer/Name_Label as Label
@onready var state_label = $HBoxContainer/State_Label as Label
@onready var check_button = $HBoxContainer/CheckButton as CheckButton


func _ready():
	check_button.toggled.connect(on_subtitles_toggled)


func set_label_text(button_pressed : bool) -> void:
	if button_pressed != true:
		state_label.text = "OFF"
	else: 
		state_label.text = "ON"

func on_subtitles_toggled(button_pressed : bool) -> void:
	set_label_text(button_pressed)
	state_label.text = str(button_pressed)
