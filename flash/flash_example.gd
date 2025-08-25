extends Node2D

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D
@onready var clickable_area: ClickableArea = $ClickableArea

func _ready() -> void:
    clickable_area.clicked.connect(example)

func example():
    var tween = get_tree().create_tween()
    tween.tween_method(flash, 1.0, 0.0,0.5)

func flash(flash_intensity: float):
    var mat : ShaderMaterial = sprite.material
    mat.set_shader_parameter("flash_intensity", flash_intensity)