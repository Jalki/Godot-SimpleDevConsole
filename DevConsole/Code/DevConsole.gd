extends Control

onready var UserInput = $InputArea/TextEdit
onready var Textedit = load("res://Scenes/ConsoleOutput.tscn")
onready var OutputRegion = $OutputArea/ScrollContainer/Output
var input

#Once the user press enter on their input, run a check to test to make sure its an actually viable input!
func _inputCheck():
	if input == null:
		print("You didnt put an actual value!!!")
	elif input == "help" or input == "Help" or input == "HELP!":
		print("Help Commands")
	elif input == "ai" or input == "Ai" or input == "AI":
		print("Ai Toggle")
	else:
		print(input)
		var Post = Textedit.instance()
		Post.text = input
		OutputRegion.add_child(Post)


func _on_TextEdit_text_entered(new_text):
	input = new_text
	_inputCheck()
	UserInput.text = ""
