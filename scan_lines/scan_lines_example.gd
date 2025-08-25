extends Node2D

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D
@onready var clickable_area: ClickableArea = $ClickableArea
var scan_lines_active : bool = false

func _ready() -> void:
    clickable_area.clicked.connect(example)

func example():
    scan_lines_active = !scan_lines_active
    var mat : ShaderMaterial = sprite.material
    mat.set_shader_parameter("scan_lines_active", scan_lines_active)