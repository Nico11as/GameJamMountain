class_name GameManager
extends Node2D

signal dice_rolled
signal node_bought(node_posi: Vector2)
signal dice_select


@export_subgroup("Config")
@export var reroll_amount: int = 2

@export_subgroup("System")
var selected_die: Array[DiceMold]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Action"):
		for dice in $DiceHolder.get_children():
			dice.RollDice()
			dice_rolled.emit()
		
	pass
