extends Node2D

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D
@onready var clickable_area: ClickableArea = $ClickableArea
var outline_active : bool = false

func _ready() -> void:
    clickable_area.clicked.connect(example)

func example():
    outline_active = !outline_active
    var mat : ShaderMaterial = sprite.material
    mat.set_shader_parameter("outline_active", outline_active)