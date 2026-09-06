class_name DiceMold
extends Button

@onready var game_manager: GameManager = $"../.."

@export var dice_resource: DiceResource

@export var current_value: int

func _ready() -> void:
	pass

func RollDice() -> void:
	current_value = randi_range(1, dice_resource.faces)
	text = str(current_value)
	pass

func AddList() -> void:
	if game_manager.selected_die.has(self):
		game_manager.selected_die.erase(self)
		$".".modulate = Color(1.0, 1.0, 1.0, 1.0)
	else: 
		$".".modulate = Color(0.0, 1.0, 0.0)
		game_manager.selected_die.append(self)
	
	game_manager.dice_select.emit()
