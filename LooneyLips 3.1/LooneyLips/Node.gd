extends Node

var player_words = []

var current_story = {}
#can be var current_story = {} to show it's a dictionary

onready var PlayerText = $VBoxContainer/HBoxContainer/PlayerText
onready var DisplayText = $VBoxContainer/DisplayText

func _ready():

	set_current_story()
	DisplayText.text = "Welcome to Loony Lips! We're going to tell a story and have a wonderful time! "
	check_player_words_length()
	
#so pode ser chamado algo que estiver abaixo e nao acima.
	#var intro = DisplayText.text("Welcome to Loony Lips! Are you ready to create your story?")
func set_current_story():
	randomize()
	var stories = $StoryBook.get_child_count()
	var selected_story = randi() % stories
#	current_story = $StoryBook.get_child(selected_story) "this is a comments sugestion instead of the two bellow"
	current_story.storyArray = $StoryBook.get_child(selected_story).storyArray
	current_story.story = $StoryBook.get_child(selected_story).story

func _on_PlayerText_text_entered(new_text):
	add_to_player_words()

func _on_TextureButton_pressed():
	if is_story_done():
		get_tree().reload_current_scene()
	#means getting the entire scene from looney lips
	else:
		add_to_player_words()

func add_to_player_words():
	player_words.append(PlayerText.text)
	DisplayText.text = ""
	PlayerText.clear()
	check_player_words_length()

func is_story_done():
	return player_words.size() == current_story.storyArray.size()
#i think prompts is story arrary, if not, then it should be just story

func check_player_words_length():
#i still have elif not, elif, if not and etc.
	if is_story_done():
		end_game()
	else:
		PlayerText.grab_focus()
		#this is an idea of the comments of the video, the teacher actually used the ready function.
		prompt_player()

func tell_story():
	DisplayText.text = current_story.story % player_words
func prompt_player():
	DisplayText.text += "May i have " + current_story.storyArray[player_words.size()] + " please?"
func end_game():
	PlayerText.queue_free()
	$VBoxContainer/HBoxContainer/Label.text = "Shall we dance again?"
	tell_story()
