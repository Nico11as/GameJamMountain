class_name MapNode
extends Button

@onready var game_manager: GameManager = $".."
@onready var dice_holder: DiceManager = $"../DiceHolder"

@export_category("Config")
@export var cost: int = 5
@export var bought: bool

func CheckBuying() -> void:
	if dice_holder.current_value >= cost && !bought:
		dice_holder.current_value -= cost
		bought = true
		game_manager.node_bought.emit(position)
	pass
