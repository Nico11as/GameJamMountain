class_name MapNode
extends Button

@onready var game_manager: GameManager = $"../.."
@onready var dice_holder: DiceManager = $"../../DiceHolder"

@export_subgroup("Config")
@export var cost: int = 5
@export var bought: bool

@export_category("Nodes next to it")
@export var next: MapNode
@export var left: MapNode
@export var right: MapNode

func CheckBuying() -> void:
	if dice_holder.current_value >= cost && !bought:
		#dice_holder.current_value -= cost
		bought = true
		game_manager.node_bought.emit(position)
	pass
