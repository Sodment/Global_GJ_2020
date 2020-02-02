extends Node2D
var score = 0
func _on_HUD_start_game():
	$Timer.start()
	$Trees.value = 100
	$HairHead.value = randi()%41 +20
	$Colorness.value = randi()%41 +20
	$SilkySmooth.value = randi()%41 +20
	$HairChest.value = 20
	$HUD.hide()
	$Shampoo1.randShampoo1()
	$Shampoo2.randShampoo2()
	$Shampoo3.randShampoo3()
	$Score.show()
	score = 0
func game_over():
	score = 0
	$Score.hide()
	$HUD.show()
	$Timer.stop()
	
	
func _on_Timer_timeout():
	$Shampoo1.randShampoo1()
	$Shampoo2.randShampoo2()
	$Shampoo3.randShampoo3()
	

func _on_Shampoo1_pressed():
	$Shampoo1._on_Shampoo1_pressed()
	_on_Timer_timeout()
	$Timer.start()
	score += 1

func _on_Shampoo2_pressed():
	$Shampoo2._on_Shampoo2_pressed()
	_on_Timer_timeout()
	$Timer.start()
	score += 1


func _on_Shampoo3_pressed():
	$Shampoo3._on_Shampoo3_pressed()
	_on_Timer_timeout()
	$Timer.start()
	score += 1

func _process(delta):
	$Score.text = "Score: "+ str(score)
	if $Trees.value == 0:
		game_over()
	elif $HairChest.value == 0:
		game_over()
	elif $HairHead.value == 0:
		game_over()
		$Bald.show()
		yield(get_tree().create_timer(2), 'timeout')
		$Bald.hide()
	elif $Colorness.value == 100:
		game_over()
		$Colorful.show()
		yield(get_tree().create_timer(2), 'timeout')
		$Colorful.hide()
	elif $SilkySmooth.value == 100:
		game_over()
		$Smooth.show()
		yield(get_tree().create_timer(2), 'timeout')
		$Smooth.hide()
	elif $HairChest.value == 100:
		game_over()
		$HairyC.show()
		yield(get_tree().create_timer(2), 'timeout')
		$HairyC.hide()
	elif $Colorness.value == 0:
		game_over()
		$NoColor.show()
		yield(get_tree().create_timer(2), 'timeout')
		$NoColor.hide()
	elif $HairHead.value == 100:
		game_over()
		$FullHair.show()
		yield(get_tree().create_timer(2), 'timeout')
		$FullHair.hide()
