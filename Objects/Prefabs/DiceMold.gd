class_name DiceMold
extends Node2D

@export var faces: int = 6
@export var current_value: int


func RollDice() -> void:
	current_value = randi_range(1, faces)
	$Label.text = str(current_value)
	pass
