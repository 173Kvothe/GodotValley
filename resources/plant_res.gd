class_name PlantResource extends Resource

@export var texture: Texture2D
@export var grow_speed := 1

var age: float 
var not_water = 0

func grow(sprite: Sprite2D):
	age = min(age + grow_speed, sprite.hframes - 1) 
	sprite.frame = int(age)
	not_water = 0

func death(plant: StaticBody2D):
	not_water += 1
	print(not_water)
	if not_water >= 3:
		plant.queue_free()
		print('dead')
