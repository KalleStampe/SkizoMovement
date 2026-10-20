extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_setup_level()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _setup_level() -> void:
#connect enemies
	var enemies = $LevelRoot.get_node_or_null("Enemies")
	print("enemies node: ", enemies)
	if enemies:
		for enemy in enemies.get_children():
			print("connecting: ", enemy.name)
			enemy.player_died.connect(_on_player_died)
#---
#sinal handlers
#---
func _on_player_died(body):
	print("player killed")
			
