class_name Option_Menu
extends Control

#Info Label
@onready var info_lbl = $"Backkground/Info Label"

#Button Sound
@onready var button_sound = $Button

#Video Settings
#Display Mode
@onready var Display_Mode = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Video/Video_Settings/Display_Mode_Option"	
	
#V_Sync
@onready var V_Sync = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Video/Video_Settings/V_Sync_Switch"
#Label Switch
@onready var label_switch = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Video/Video_Settings/V_Sync_Switch/Switch_vsyin"
	
#Audio Settings
#Master Volume Slider
@onready var Master_Volume = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Audio/Audio_Settings/Master_Volume_Setings/Master_Slider"
#Master Volume Max Label
@onready var Max_Label_Master_Volume = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Audio/Audio_Settings/Master_Volume_Setings/Master_Max_Label"
	
#Music Volume Slider
@onready var Music_Volume = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Audio/Audio_Settings/Music_Volume_Setings/Music_Slider"	
#Music Volume Max Label
@onready var  Max_Label_Music_Volume = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Audio/Audio_Settings/Music_Volume_Setings/Music_Max-Label"

#Dialogue Volume Slider
@onready var Dialogue_Volume = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Audio/Audio_Settings/Voice_Volume_Setings/Voice_Slider"
#Dialogue Volume Max Label
@onready var Max_Label_Dialogue_Volume = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Audio/Audio_Settings/Voice_Volume_Setings/Max_Voice_Label"

#Sound Effect Volume Slider
@onready var sfx_Volume = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Audio/Audio_Settings/SFX_Volume_Setings/SFX_Slider"
#Sound Effect Volume Max Label
@onready var Max_Label_SFX_Volume = $"Backkground/Options Menu/Settings_Option_Tab_Menu/Audio/Audio_Settings/SFX_Volume_Setings/Max_SFX_Label"

func _ready():
	Display_Mode.select(1 if SaveSettings.Data_Settings.FullScreen_on else 0)
	V_Sync.button_pressed = SaveSettings.Data_Settings.V_Sync_on
	Master_Volume.value = SaveSettings.Data_Settings.Master_Volume
	Music_Volume.value = SaveSettings.Data_Settings.Music_Volume
	sfx_Volume.value = SaveSettings.Data_Settings.SFX_Volume
	Dialogue_Volume.value = SaveSettings.Data_Settings.Dialogue_Volume
	info_lbl.hide()
	
	#Label V-Sync On/Off
	label_switch.text = str(V_Sync.button_pressed)
	match V_Sync.button_pressed :
		true :
			label_switch.set_text("ON")
		false:
			label_switch.set_text("OFF")	
	
	#Label Master Volume
	Max_Label_Master_Volume.text=str(Master_Volume.value) if Master_Volume.value < Master_Volume.max_value else  "MAX"
	
	#Music Volume Max Label
	Max_Label_Music_Volume.text=str(Music_Volume.value) if Music_Volume.value < Music_Volume.max_value else "MAX"
	
	#Dialogue Volume Max Label
	Max_Label_Dialogue_Volume.text=str(Dialogue_Volume.value) if Dialogue_Volume.value < Dialogue_Volume.max_value else "MAX"
	
	#SFX Volume Max Label\
	Max_Label_SFX_Volume.text=str(sfx_Volume.value) if sfx_Volume.value < sfx_Volume.max_value else "MAX"
	
func _on_back_button_pressed():
	button_sound.play()
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Settings_Confrimation/settings_confrimation.tscn")

func _on_display_mode_option_item_selected(index):
	GlobalSettings._toggle_fullscreen(true if index==1 else false)

func _on_v_sync_switch_pressed(button_pressed):
	label_switch.text = str(button_pressed)
	match button_pressed :
		true :
			label_switch.set_text("ON")
		false:
			label_switch.set_text("OFF")	
	GlobalSettings._toggle_vsync(button_pressed)


func _on_master_slider_value_changed(value):
	GlobalSettings._update_master_Volume(value)
	Max_Label_Master_Volume.text=str(value) if value < Master_Volume.max_value else  "MAX"


func _on_music_slider_value_changed(value):
	GlobalSettings._update_music_Volume(value)
	Max_Label_Music_Volume.text=str(value) if value < Music_Volume.max_value else "MAX"


func _on_voice_slider_value_changed(value):
	GlobalSettings._update_dialogue_Volume(value)
	Max_Label_Dialogue_Volume.text=str(value) if value < Dialogue_Volume.max_value else "MAX"

func _on_sfx_slider_value_changed(value):
	GlobalSettings._update_SFX_Volume(value)
	Max_Label_SFX_Volume.text=str(value) if value < sfx_Volume.max_value else "MAX"
	
func _on_save_button_pressed():
	button_sound.play()
	GlobalSettings._toggle_fullscreen(SaveSettings.Data_Settings.FullScreen_on)
	print("Settings Mode Saved")
	LoadingScreen.load_scence("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")

func _on_audio_mouse_entered():
	info_lbl.show()


func _on_audio_mouse_exited():
	info_lbl.hide()


func _on_sfx_slider_mouse_entered():
	info_lbl.show()


func _on_sfx_slider_mouse_exited():
	info_lbl.hide()


func _on_music_slider_mouse_exited():
	info_lbl.hide()


func _on_music_slider_mouse_entered():
	info_lbl.show()


func _on_master_slider_mouse_entered():
	info_lbl.show()


func _on_master_slider_mouse_exited():
	info_lbl.hide()


func _on_voice_slider_mouse_entered():
	info_lbl.show()


func _on_voice_slider_mouse_exited():
	info_lbl.hide()
