class_name DiceManager
extends Node2D

@onready var game_manager: GameManager = $".."
@export_category("Player_dice")
@export var dice_amount: int

@export var current_value: int:
	set(value):
		current_value = value
		$"../Label".text = str(current_value)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_manager.dice_select.connect(SumDice)
	pass # Replace with function body.

func SumDice() -> void:
	current_value = 0
	for dice: DiceMold in game_manager.selected_die:
		current_value += dice.current_value
		#print(current_value)
