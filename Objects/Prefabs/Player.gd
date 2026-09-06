extends Node2D

@onready var game_manager: GameManager = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_manager.node_bought.connect(GotoNode)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func GotoNode(new_posi) -> void:
	while position.distance_to(new_posi) >= 10:
		position = lerp(position, new_posi, 0.1)
		await get_tree().process_frame
