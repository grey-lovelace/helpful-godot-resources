extends Node2D

@export var camera2D : Camera2D
@onready var clickable_area: ClickableArea = $ClickableArea
var cameraShakeNoise : FastNoiseLite

func _ready() -> void:
	clickable_area.clicked.connect(example)
	cameraShakeNoise = FastNoiseLite.new()

func example():
	var tween = get_tree().create_tween()
	tween.tween_method(shake, 5.0, 1.0, 0.5)

func shake(intensity: float):
	var camera_offset = cameraShakeNoise.get_noise_1d(Time.get_ticks_msec()) * intensity
	camera2D.offset.x = camera_offset
	camera2D.offset.y = camera_offset
