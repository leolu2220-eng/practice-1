extends Node2D

var trust = 0
func _ready() -> void:
	update_UI()
func _on_button_pressed() -> void:
	change_trust(10)
	print(trust)
	update_UI()
func _on_button_2_pressed() -> void:
	change_trust(20)
	print(trust)
	update_UI()
func change_trust(amount: int) ->void:
	trust += amount
func check_hand_hold() ->bool:
	return trust >= 60
func update_UI() ->void:
	$Label.text = "trust:" + str(trust)
	if check_hand_hold():
		$Label2.text = "Relationship:" + "friend"
		$Label3.text = "we are friend now"
	else:
		$Label2.text = "Relationship:" + "stranger"
		$Label3.text= "I cannot belief a stranger"
