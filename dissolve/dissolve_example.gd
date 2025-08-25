extends Node2D

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D
@onready var clickable_area: ClickableArea = $ClickableArea

func _ready() -> void:
	clickable_area.clicked.connect(example)

func example():
	var tween = get_tree().create_tween().set_parallel(false)
	tween.tween_method(dissolve, 0.0, 1.0, 2)
	tween.tween_method(dissolve, 1.0, 0.0, 2)

func dissolve(intensity: float):
	var mat : ShaderMaterial = sprite.material
	mat.set_shader_parameter("dissolve_amount", intensity)
