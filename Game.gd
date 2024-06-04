extends Node2D


func _on_top_body_entered(body):
	body.direction.y *= -1
	
func _on_bottom_body_entered(body):
	body.diirection.y *= -1
	
func _on_left_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(576, 320)
	add_child(e)
	Main.p2_score += 1
	
func _on_right_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(576, 320)
	add_child(e)
	Main.p1_score += 1
