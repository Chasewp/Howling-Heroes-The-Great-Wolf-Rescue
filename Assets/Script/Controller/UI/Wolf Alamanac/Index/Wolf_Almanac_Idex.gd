class_name Wolf_Alamac_Index
extends Control

"""Wolves Pictures"""
#Wolf Picture 1 - Gray Wolf
@onready var graywolfimage = $"Background/Almanac Index/WolfVBoxContainer1/Wolf 1"
#Wolf Picture 2 - Red Wolf
@onready var redwolfimage = $"Background/Almanac Index/WolfVBoxContainer2/Wolf 2"
#Wolf Picture 3 - Mongolian Wolf
@onready var mongolianwolfimage = $"Background/Almanac Index/WolfVBoxContainer3/Wolf 3"
#Wolf Picture 4 - Himalayan Wolf
@onready var Himalayanwolfimage = $"Background/Alamac Index/WolfVBoxContainer4/Wolf 4"
#Wolf Picture 5 - Steppe Wolf
@onready var steppewolfimage = $"Background/Alamac Index/WolfVBoxContainer5/Wolf 5"
#Wolf Picture 6 - Thundra Wolf
@onready var thundrawolfimage = $"Background/Alamac Index/WolfVBoxContainer6/Wolf 6"
#Wolf Picture 7 - Artic Wolf
@onready var articwolfimage = $"Background/Alamac Index/WolfVBoxContainer7/Wolf 7"
#Wolf Picture 8 - Northern Rocky Mountain Wolf
@onready var northernrockymountainwolfimage = $"Background/Alamac Index/WolfVBoxContainer8/Wolf 8"
#Wolf Picture 9 - Eurasian Wolf
@onready var eurasianwolf = $"Background/Alamac Index/VBoxContainer9/Wolf 9"
#Wolf Picture 10 - Yukon Wolf#Wolf Picture 10 - Yukon Wolf
@onready var yukonwolfimage = $"Background/Alamac Index/WolfVBoxContainer10/Wolf 10"
#Wolf Picture 11 - Northwestern Wolf
@onready var northwesternwolfimage = $"Background/Alamac Index/WolfVBoxContainer11/Wolf 11"
#Wolf Picture 12 - Arabian Wolf
@onready var arabianwolfimage=$"Background/Alamac Index/VBoxContainer12/Wolf 12"
#Wolf Picture 13 - Indian Wolf
@onready var indianwolfimage = $"Background/Alamac Index/WolfVBoxContainer13/Wolf 13"
#Wolf Picture 14 - Mexican Wolf
@onready var mexicanwolfimage = $"Background/Alamac Index/WolfVBoxContainer14/Wolf 14"
#Wolf Picture 15 - British Columbian Wolf
@onready var britishcolumbianwolfimage = $"Background/Alamac Index/VBoxContainer15/Wolf 15"
#Wolf Picture 16 - Vancouver Coastal Island Wolf
@onready var vancouvercoastalislandwolf
#Wolf Picture 17 - Hudson Bay Wolf
@onready var hudsonbaywolfimage 
#Wolf Picture 18 - Alexander Archipelago Wolf
@onready var alexanderarchipelagowolf
#Wolf Picture 19 - Eastern Wolf
@onready var easternwolfimage
#Wolf Picture 20 - Mackenzie River Wolf
@onready var mackenzieriverwolfimage
#Wolf Picture 21 - Baffin Island Wolf
@onready var baffinislandwolfiamge
#Wolf Picture 22 - Greenland Wolf
@onready var greenlandwolfimage
#Wolf Picture 23 - Alaskan Tundra Wolf
@onready var alaskantundrawolfimage
#Wolf Picture 24 - Iberian Wolf
@onready var iberianwolfimage
#Wolf Picture 25 - Italian Wolf
@onready var italianwolfimage
#Wolf Picture 26 - Labrador Wolf
@onready var labradorwolf
#Wolf Picture 27 - Great Plains Wolf
@onready var greatplainswolfimage

"""Wolves Labels"""
#Wolf Label 1 - Gray Wolf
@onready var graywolflabel = $"Background/Almanac Index/WolfVBoxContainer1/Label_Wolf1"
#Wolf Label 2 - Red Wolf
@onready var redwolflabel = $"Background/Almanac Index/WolfVBoxContainer2/Label Wolf2"
#Wolf Label 3 - Mongolian Wolf
@onready var mongolianwolflabel = $"Background/Almanac Index/WolfVBoxContainer3/Label Wolf3"
#Wolf Label 4- Himalayan Wolf
@onready var Himalayanwolflabel = $"Background/Alamac Index/WolfVBoxContainer4/Label_Wolf 4"
#Wolf Label 5 - Steppe Wolf
@onready var steppewolflabel = $"Background/Alamac Index/WolfVBoxContainer5/Label Wolf5"
#Wolf Label 6 - Thundra Wolf
@onready var thundrawolflabel = $"Background/Alamac Index/WolfVBoxContainer6/Label Wolf6"
#Wolf Label 7 - Artic Wolf
@onready var articwolflabel = $"Background/Alamac Index/WolfVBoxContainer7/Label_Wolf 7"
#Wolf Label 8 - Northern Rocky Mountain Wolf
@onready var northernrockymountainwolflabel = $"Background/Alamac Index/WolfVBoxContainer8/Label Wolf8"
#Wolf Label 9 - Eurasian Wolf
@onready var eurasianwolflabel = $"Background/Alamac Index/VBoxContainer9/Label Wolf9"
#Wolf Label 10 - Yukon Wolf
@onready var yukonwolflabel = $"Background/Alamac Index/WolfVBoxContainer10/Label_Wolf 10"
#Wolf Label 11 - Northwestern Wolf
@onready var northwesternwolflabel = $"Background/Alamac Index/WolfVBoxContainer11/Label Wolf11"
#Wolf Label 12 - Arabian Wolf
@onready var arabianwolflabel = $"Background/Alamac Index/VBoxContainer12/Label Wolf12"
#Wolf Label 13 - Indian Wolf
@onready var indianwolflabel = $"Background/Alamac Index/WolfVBoxContainer13/Label_Wolf 13"
#Wolf Label 14 - Mexican Wolf
@onready var mexicanwolflabel = $"Background/Alamac Index/WolfVBoxContainer14/Label Wolf14"
#Wolf Label 15 - British Columbian Wolf
@onready var britshcolumbianwolflabel = $"Background/Alamac Index/VBoxContainer15/Label Wolf15"
#Wolf Label 16 - Vancouver Coastal IslandWolf
@onready var vancouvercoastalislandwolflabel 
#Wolf Label 17 - Hudson Bay Wolf
@onready var hudsonbaywolflabel
#Wolf Label 18 - Alexander Archipelago Wolf
@onready var alexanderarchipelagowolflabel
#Wolf Label 19 - Eastern Wolf
@onready var easternwolflabel
#Wolf Label 20 - Mackenzie River Wolf
@onready var machenzieriverwolflabel
#Wolf Label 21 - Baffin Island Wolf
@onready var baffinislandwolflabel
#Wolf Label 22 - Greenland Wolf
@onready var greenlandwolflabel
#Wolf Label 23 - Alaskan Tundra Wolf
@onready var alaskantundrawolflabel
#Wolf Label 24 - Iberian Wolf
@onready var iberianwolflabel
#Wolf Label 25 - Italian Wolf
@onready var italianwolflabel
#Wolf Label 26 - Labrador Wolf
@onready var labradorwolflabel
#Wolf Label 27 - Great Plains Wolf
@onready var greatplainswolflabel

"""Next Buttons"""
#next button to page 2
@onready var nextbtnp2 =$Background/Next
#next button to page 3
@onready var nextbtnp3 = $Background/Next_Button_Page_2
#next button to page 4
@onready var nextbtnp4 = $Background/Back_Button_Page_3
#next button to page 5
@onready var nextbtn5 = $Background/Next_Button_Page_4
#next button to page 6
@onready var nextbtn6
#next button to page 7
@onready var nextbtn7
#next button to page 8
@onready var nextbtn8
#next button to page 9
@onready var nextbtn9

"""Back Buttons"""
#back button to page 1
@onready var backbtnp1 = $Background/Back_Button_Page_2
#back button to page 2
@onready var backbtnp2 = $Background/Back_Button_Page_3
#back button to page 3
@onready var backbtn3 = $Background/Back_Button_Page_4
#back button to page 4 
@onready var backbtn4 = $Background/Back_Button_Page_5
#back button to page 5
@onready var backbtn5
#back button to page 6
@onready var backbtn6
#back button to page 7
@onready var backbtn7
#back button to page 8
@onready var backbtn8 


"""Inisiate Page"""
@export var indexpage1 = load("res://Assets/Scences/UI/Wolf_Almanac/Index/Wolf_Almanac_Idex_Page 1.tscn")

#Button Click Sound
@onready var buttonsound = $Button_Click

