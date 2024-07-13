class_name save_Wolves
extends Node

const save_wolves = "res://Assets/Script/Class/Wolf/Wolves_Save/Wolves.json"

var Data_Wolves = {}

func _ready():
	Data_Wolves = load_wolves_data(save_wolves)

func load_wolves_data(file_path : String):      
	if FileAccess.file_exists(file_path):
		
		var wolf_Data_File = FileAccess.open(file_path,FileAccess.READ)
		var result = JSON.parse_string(wolf_Data_File.get_as_text())
		
		if result is Dictionary:
			return result
		else:
			print("Error reading file")	
	else:
		print("File does not exist!")


#######################################################################################################
#												WOLVES DATA LISTS
#
# Info
# Key Auto Sorted by JSON self 
#######################################################################################################
#1
#Gray Wolf 
#Image
func _get_Gray_Wolf_Image_Path():
	var _gray_Wolf_Image = Data_Wolves["Gray Wolf"]["Image"]
	return _gray_Wolf_Image

#Name Wolf
func _get_Gray_Wolf_Name():
	var _gray_Wolf_Name = Data_Wolves["Gray Wolf"]["Name_Wolf"]
	return _gray_Wolf_Name
	
#Species
func _get_Gray_Wolf_Species():
	var _gray_Wolf_Species = Data_Wolves["Gray Wolf"]["Species"]
	return _gray_Wolf_Species
	
#Hight
func _get_Gray_Wolf_Height():
	var _gray_Wolf_Height = Data_Wolves["Gray Wolf"]["Height"]
	return _gray_Wolf_Height

#Weight
func _get_Gray_Wolf_Weight():
	var _gray_Wolf_Weight = Data_Wolves["Gray Wolf"]["Weight"]	
	return _gray_Wolf_Weight
	
#Lenght
func _get_Gray_Wolf_Lenght():
	var _gray_Wolf_Lenght = Data_Wolves["Gray Wolf"]["Lenght"]
	return _gray_Wolf_Lenght
	
#Conservation Status
func _get_Gray_Wolf_Conservation_status():
	var _gray_Wolf_Conservation_Status = Data_Wolves ["Gray Wolf"]["Conservation_status"]
	return _gray_Wolf_Conservation_Status

#Region
func _get_Gray_Wolf_Location():
	var _gray_Wolf_Location = Data_Wolves["Gray Wolf"]["Location"]
	return _gray_Wolf_Location
	
#Morphology
func _get_Gray_Wolf_Morphology():
	var _gray_Wolf_Morphology = Data_Wolves["Gray Wolf"]["Morphology"]
	return _gray_Wolf_Morphology
	
#Diets
func _get_Gray_Wolf_Diets():
	var _gray_Wolf_Diets = Data_Wolves["Gray Wolf"]["Diets"]
	return _gray_Wolf_Diets

#######################################################################################################
#2
#Red Wolf
#Image
func _get_Red_Wolf_Image():
	var _red_Wolf_Image = Data_Wolves["Red Wolf"]["Image"]
	return _red_Wolf_Image

#Name Wolf
func _get_Red_Wolf_Name():
	var _red_Wolf_Name = Data_Wolves["Red Wolf"]["Name Wolf"]
	return _red_Wolf_Name
	
#Species
func _get_Red_Wolf_Species():
	var _red_Wolf_Species = Data_Wolves["Red Wolf"]["Species"]
	return _red_Wolf_Species
	
#Hight
func _get_Red_Wolf_Height():
	var _red_Wolf_Height = Data_Wolves["Red Wolf"]["Height"]
	return _red_Wolf_Height

#Weight
func _get_Red_Wolf_Weight():
	var _red_Wolf_Weight = Data_Wolves["Red Wolf"]["Weight"]	
	return _red_Wolf_Weight
	
#Lenght
func _get_Red_Wolf_Lenght():
	var _red_Wolf_Lenght = Data_Wolves["Red Wolf"]["Lenght"]
	return _red_Wolf_Lenght
	
#Conservation Status
func _get_Red_Wolf_Conservation_status():
	var _red_Wolf_Conservation_Status = Data_Wolves ["Red Wolf"]["Conservation_status"]
	return _red_Wolf_Conservation_Status

#Region
func _get_Red_Wolf_Location():
	var _red_Wolf_Location = Data_Wolves["Red Wolf"]["Location"]
	return _red_Wolf_Location
	
#Morphology
func _get_Red_Wolf_Morphology():
	var _red_Wolf_Morphology = Data_Wolves["Red Wolf"]["Morphology"]
	return _red_Wolf_Morphology
	
#Diets
func _get_Red_Wolf_Diets():
	var _red_Wolf_Diets = Data_Wolves["Red Wolf"]["Diets"]
	return _red_Wolf_Diets
	
#######################################################################################################
#3
#Mongolian Wolf
#Image
func _get_Mongolian_Wolf_Image():
	var _mongolian_Wolf_Image = Data_Wolves["Mongolian Wolf"]["Image"]
	return _mongolian_Wolf_Image

#Name Wolf
func _get_Mongolian_Wolf_Name():
	var _mongolian_Wolf_Name = Data_Wolves["Mongolian Wolf"]["Name Wolf"]
	return _mongolian_Wolf_Name
	
#Species
func _get_Mongolian_Wolf_Species():
	var _mongolian_Wolf_Species = Data_Wolves["Mongolian Wolf"]["Species"]
	return _mongolian_Wolf_Species
	
#Hight
func _get_Mongolian_Wolf_Height():
	var _mongolian_Wolf_Height = Data_Wolves["Mongolian Wolf"]["Height"]
	return _mongolian_Wolf_Height

#Weight
func _get_Mongolian_Wolf_Weight():
	var _mongolian_Wolf_Weight = Data_Wolves["Mongolian Wolf"]["Weight"]	
	return _mongolian_Wolf_Weight
	
#Lenght
func _get_Mongolian_Wolf_Lenght():
	var _mongolian_Wolf_Lenght = Data_Wolves["Mongolian Wolf"]["Lenght"]
	return _mongolian_Wolf_Lenght
	
#Conservation Status
func _get_Mongolian_Wolf_Conservation_status():
	var _mongolian_Wolf_Conservation_Status = Data_Wolves ["Mongolian Wolf"]["Conservation_status"]
	return _mongolian_Wolf_Conservation_Status

#Region
func _get_Mongolian_Wolf_Location():
	var _mongolian_Wolf_Location = Data_Wolves["Mongolian Wolf"]["Location"]
	return _mongolian_Wolf_Location
	
#Morphology
func _get_Mongolian_Wolf_Morphology():
	var _mongolian_Wolf_Morphology = Data_Wolves["Mongolian Wolf"]["Morphology"]
	return _mongolian_Wolf_Morphology
	
#Diets
func _get_Mongolian_Wolf_Diets():
	var _mongolian_Wolf_Diets = Data_Wolves["Mongolian Wolf"]["Diets"]
	return _mongolian_Wolf_Diets
	
#######################################################################################################
#4
#Himalayan Wolf
#Image
func _get_Himalayan_Wolf_Image():
	var _himalayan_Wolf_Image = Data_Wolves["Himalayan Wolf"]["Image"]
	return _himalayan_Wolf_Image

#Name Wolf
func _get_Himalayan_Wolf_Name():
	var _himalayan_Wolf_Name = Data_Wolves["Himalayan Wolf"]["Name Wolf"]
	return _himalayan_Wolf_Name
	
#Species
func _get_Himalayan_Wolf_Species():
	var _himalayan_Wolf_Species = Data_Wolves["Himalayan Wolf"]["Species"]
	return _himalayan_Wolf_Species
	
#Hight
func _get_Himalayan_Wolf_Height():
	var _himalayan_Wolf_Height = Data_Wolves["Himalayan Wolf"]["Height"]
	return _himalayan_Wolf_Height

#Weight
func _get_Himalayan_Wolf_Weight():
	var _himalayan_Wolf_Weight = Data_Wolves["Himalayan Wolf"]["Weight"]	
	return _himalayan_Wolf_Weight
	
#Lenght
func _get_Himalayan_Wolf_Lenght():
	var _himalayan_Wolf_Lenght = Data_Wolves["Himalayan Wolf"]["Lenght"]
	return _himalayan_Wolf_Lenght
	
#Conservation Status
func _get_Himalayan_Wolf_Conservation_status():
	var _himalayan_Wolf_Conservation_Status = Data_Wolves ["Himalayan Wolf"]["Conservation_status"]
	return _himalayan_Wolf_Conservation_Status

#Region
func _get_Himalayan_Wolf_Location():
	var _himalayan_Wolf_Location = Data_Wolves["Himalayan Wolf"]["Location"]
	return _himalayan_Wolf_Location
	
#Morphology
func _get_Himalayan_Wolf_Morphology():
	var _himalayan_Wolf_Morphology = Data_Wolves["Himalayan Wolf"]["Morphology"]
	return _himalayan_Wolf_Morphology
	
#Diets
func _get_Himalayan_Wolf_Diets():
	var _himalayan_Wolf_Diets = Data_Wolves["Himalayan Wolf"]["Diets"]
	return _himalayan_Wolf_Diets
	
#######################################################################################################
#5
#Steppe Wolf (Caspian Sea Wolf)
#Image
func _get_Steppe_Wolf_Image():
	var _steppe_Wolf_Image = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Image"]
	return _steppe_Wolf_Image

#Name Wolf
func _get_Steppe_Wolf_Name():
	var _steppe_Wolf_Name = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Name Wolf"]
	return _steppe_Wolf_Name
	
#Species
func _get_Steppe_Wolf_Species():
	var _steppe_Wolf_Species = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Species"]
	return _steppe_Wolf_Species
	
#Hight
func _get_Steppe_Wolf_Height():
	var _steppe_Wolf_Height = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Height"]
	return _steppe_Wolf_Height

#Weight
func _get_Steppe_Wolf_Weight():
	var _steppe_Wolf_Weight = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Weight"]	
	return _steppe_Wolf_Weight
	
#Lenght
func _get_Steppe_Wolf_Lenght():
	var _steppe_Wolf_Lenght = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Lenght"]
	return _steppe_Wolf_Lenght
	
#Conservation Status
func _get_Steppe_Wolf_Conservation_status():
	var _steppe_Wolf_Conservation_Status = Data_Wolves ["Steppe Wolf (Caspian Sea Wolf)"]["Conservation_status"]
	return _steppe_Wolf_Conservation_Status

#Region
func _get_Steppe_Wolf_Location():
	var _steppe_Wolf_Location = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Location"]
	return _steppe_Wolf_Location
	
#Morphology
func _get_Steppe_Wolf_Morphology():
	var _steppe_Wolf_Morphology = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Morphology"]
	return _steppe_Wolf_Morphology
	
#Diets
func _get_Steppe_Wolf_Diets():
	var _steppe_Wolf_Diets = Data_Wolves["Steppe Wolf (Caspian Sea Wolf)"]["Diets"]
	return _steppe_Wolf_Diets
	
#######################################################################################################
#6
#Tundra Wolf
#Image
func _get_Tundra_Wolf_Image():
	var _tundra_Wolf_Image = Data_Wolves["Tundra Wolf"]["Image"]
	return _tundra_Wolf_Image

#Name Wolf
func _get_Tundra_Wolf_Name():
	var _tundra_Wolf_Name = Data_Wolves["Tundra Wolf"]["Name Wolf"]
	return _tundra_Wolf_Name
	
#Species
func _get_Tundra_Wolf_Species():
	var _tundra_Wolf_Species = Data_Wolves["Tundra Wolf"]["Species"]
	return _tundra_Wolf_Species
	
#Hight
func _get_Tundra_Wolf_Height():
	var _tundra_Wolf_Height = Data_Wolves["Tundra Wolf"]["Height"]
	return _tundra_Wolf_Height

#Weight
func _get_Tundra_Wolf_Weight():
	var _tundra_Wolf_Weight = Data_Wolves["Tundra Wolf"]["Weight"]	
	return _tundra_Wolf_Weight
	
#Lenght
func _get_Tundra_Wolf_Lenght():
	var _tundra_Wolf_Lenght = Data_Wolves["Tundra Wolf"]["Lenght"]
	return _tundra_Wolf_Lenght
	
#Conservation Status
func _get_Tundra_Wolf_Conservation_status():
	var _tundra_Wolf_Conservation_Status = Data_Wolves ["Tundra Wolf"]["Conservation_status"]
	return _tundra_Wolf_Conservation_Status

#Region
func _get_Tundra_Wolf_Location():
	var _tundra_Wolf_Location = Data_Wolves["Tundra Wolf"]["Location"]
	return _tundra_Wolf_Location
	
#Morphology
func _get_Tundra_Wolf_Morphology():
	var _tundra_Wolf_Morphology = Data_Wolves["Tundra Wolf"]["Morphology"]
	return _tundra_Wolf_Morphology
	
#Diets
func _get_Tundra_Wolf_Diets():
	var _tundra_Wolf_Diets = Data_Wolves["Tundra Wolf"]["Diets"]
	return _tundra_Wolf_Diets
	
#######################################################################################################
#7
#Arctic Wolf
#Image
func _get_Arctic_Wolf_Image():
	var _arctic_Wolf_Image = Data_Wolves["Arctic Wolf"]["Image"]
	return _arctic_Wolf_Image

#Name Wolf
func _get_Arctic_Wolf_Name():
	var _arctic_Wolf_Name = Data_Wolves["Arctic Wolf"]["Name Wolf"]
	return _arctic_Wolf_Name
	
#Species
func _get_Arctic_Wolf_Species():
	var _arctic_Wolf_Species = Data_Wolves["Arctic Wolf"]["Species"]
	return _arctic_Wolf_Species
	
#Hight
func _get_Arctic_Wolf_Height():
	var _arctic_Wolf_Height = Data_Wolves["Arctic Wolf"]["Height"]
	return _arctic_Wolf_Height

#Weight
func _get_Arctic_Wolf_Weight():
	var _arctic_Wolf_Weight = Data_Wolves["Arctic Wolf"]["Weight"]	
	return _arctic_Wolf_Weight
	
#Lenght
func _get_Arctic_Wolf_Lenght():
	var _arctic_Wolf_Lenght = Data_Wolves["Arctic Wolf"]["Lenght"]
	return _arctic_Wolf_Lenght
	
#Conservation Status
func _get_Arctic_Wolf_Conservation_status():
	var _arctic_Wolf_Conservation_Status = Data_Wolves ["Arctic Wolf"]["Conservation_status"]
	return _arctic_Wolf_Conservation_Status

#Region
func _get_Arctic_Wolf_Location():
	var _arctic_Wolf_Location = Data_Wolves["Arctic Wolf"]["Location"]
	return _arctic_Wolf_Location
	
#Morphology
func _get_Arctic_Wolf_Morphology():
	var _arctic_Wolf_Morphology = Data_Wolves["Arctic Wolf"]["Morphology"]
	return _arctic_Wolf_Morphology
	
#Diets
func _get_Arctic_Wolf_Diets():
	var _arctic_Wolf_Diets = Data_Wolves["Arctic Wolf"]["Diets"]
	return _arctic_Wolf_Diets
	
#######################################################################################################
#8
#Northern Rocky Mountain Wolf
#Image
func _get_Northern_Rocky_Mountain_Wolf_Image():
	var _northern_Rocky_Mountain_Wolf_Image = Data_Wolves["Northern Rocky Mountain Wolf"]["Image"]
	return _northern_Rocky_Mountain_Wolf_Image

#Name Wolf
func _get_Northern_Rocky_Mountain_Wolf_Name():
	var _northern_Rocky_Mountain_Wolf_Name = Data_Wolves["Northern Rocky Mountain Wolf"]["Name Wolf"]
	return _northern_Rocky_Mountain_Wolf_Name
	
#Species
func _get_Northern_Rocky_Mountain_Wolf_Species():
	var _northern_Rocky_Mountain_Wolf_Species = Data_Wolves["Northern Rocky Mountain Wolf"]["Species"]
	return _northern_Rocky_Mountain_Wolf_Species
	
#Hight
func _get_Northern_Rocky_Mountain_Wolf_Height():
	var _northern_Rocky_Mountain_Wolf_Height = Data_Wolves["Northern Rocky Mountain Wolf"]["Height"]
	return _northern_Rocky_Mountain_Wolf_Height

#Weight
func _get_Northern_Rocky_Mountain_Wolf_Weight():
	var _northern_Rocky_Mountain_Wolf_Weight = Data_Wolves["Northern Rocky Mountain Wolf"]["Weight"]	
	return _northern_Rocky_Mountain_Wolf_Weight
	
#Lenght
func _get_Northern_Rocky_Mountain_Wolf_Lenght():
	var _northern_Rocky_Mountain_Wolf_Lenght = Data_Wolves["Northern Rocky Mountain Wolf"]["Lenght"]
	return _northern_Rocky_Mountain_Wolf_Lenght
	
#Conservation Status
func _get_Northern_Rocky_Mountain_Wolf_Conservation_status():
	var _northern_Rocky_Mountain_Wolf_Conservation_Status = Data_Wolves ["Northern Rocky Mountain Wolf"]["Conservation_status"]
	return _northern_Rocky_Mountain_Wolf_Conservation_Status

#Region
func _get_Northern_Rocky_Mountain_Wolf_Location():
	var _northern_Rocky_Mountain_Wolf_Location = Data_Wolves["Northern Rocky Mountain Wolf"]["Location"]
	return _northern_Rocky_Mountain_Wolf_Location
	
#Morphology
func _get_Northern_Rocky_Mountain_Wolf_Morphology():
	var _northern_Rocky_Mountain_Wolf_Morphology = Data_Wolves["Northern Rocky Mountain Wolf"]["Morphology"]
	return _northern_Rocky_Mountain_Wolf_Morphology
	
#Diets
func _get_Northern_Rocky_Mountain_Wolf_Diets():
	var _northern_Rocky_Mountain_Wolf_Diets = Data_Wolves["Northern Rocky Mountain Wolf"]["Diets"]
	return _northern_Rocky_Mountain_Wolf_Diets
	
#######################################################################################################
#9
#Eurasian Wolf
#Image
func _get_Eurasian_Wolf_Image():
	var _eurasian_Wolf_Image = Data_Wolves["Eurasian Wolf"]["Image"]
	return _eurasian_Wolf_Image

#Name Wolf
func _get_Eurasian_Wolf_Name():
	var _eurasian_Wolf_Name = Data_Wolves["Eurasian Wolf"]["Name Wolf"]
	return _eurasian_Wolf_Name
	
#Species
func _get_Eurasian_Wolf_Species():
	var _eurasian_Wolf_Species = Data_Wolves["Eurasian Wolf"]["Species"]
	return _eurasian_Wolf_Species
	
#Hight
func _get_Eurasian_Wolf_Height():
	var _eurasian_Wolf_Height = Data_Wolves["Eurasian Wolf"]["Height"]
	return _eurasian_Wolf_Height

#Weight
func _get_Eurasian_Wolf_Weight():
	var _eurasian_Wolf_Weight = Data_Wolves["Eurasian Wolf"]["Weight"]	
	return _eurasian_Wolf_Weight
	
#Lenght
func _get_Eurasian_Wolf_Lenght():
	var _eurasian_Wolf_Lenght = Data_Wolves["Eurasian Wolf"]["Lenght"]
	return _eurasian_Wolf_Lenght
	
#Conservation Status
func _get_Eurasian_Wolf_status():
	var _eurasian_Wolf_Conservation_Status = Data_Wolves ["Eurasian Wolf"]["Conservation_status"]
	return _eurasian_Wolf_Conservation_Status

#Region
func _get_Eurasian_Wolf_Location():
	var _eurasian_Wolf_Location = Data_Wolves["Eurasian Wolf"]["Location"]
	return _eurasian_Wolf_Location
	
#Morphology
func _get_Eurasian_Wolf_Morphology():
	var _eurasian_Wolf_Morphology = Data_Wolves["Eurasian Wolf"]["Morphology"]
	return _eurasian_Wolf_Morphology
	
#Diets
func _get_Eurasian_Wolf_Diets():
	var _eurasian_Wolf_Diets = Data_Wolves["Eurasian Wolf"]["Diets"]
	return _eurasian_Wolf_Diets
	
#######################################################################################################
#10
#Interior Alaskan Wolf (Yukon Wolf)
#Image
func _get_Interior_Alaskan_Wolf_Image():
	var _interior_Alaskan_Wolf_Image = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Image"]
	return _interior_Alaskan_Wolf_Image

#Name Wolf
func _get_Interior_Alaskan_Wolf_Name():
	var _interior_Alaskan_Wolf_Name = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Name Wolf"]
	return _interior_Alaskan_Wolf_Name
	
#Species
func _get_Interior_Alaskan_Wolf_Species():
	var _interior_Alaskan_Wolf_Species = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Species"]
	return _interior_Alaskan_Wolf_Species
	
#Hight
func _get_Interior_Alaskan_Wolf_Height():
	var _interior_Alaskan_Wolf_Height = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Height"]
	return _interior_Alaskan_Wolf_Height

#Weight
func _get_Interior_Alaskan_Wolf_Weight():
	var _interior_Alaskan_Wolf_Weight = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Weight"]	
	return _interior_Alaskan_Wolf_Weight
	
#Lenght
func _get_Interior_Alaskan_Wolf_Lenght():
	var _interior_Alaskan_Wolf_Lenght = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Lenght"]
	return _interior_Alaskan_Wolf_Lenght
	
#Conservation Status
func _get_Interior_Alaskan_Wolf_status():
	var _interior_Alaskan_Wolf_Conservation_Status = Data_Wolves ["Interior Alaskan Wolf (Yukon Wolf)"]["Conservation_status"]
	return _interior_Alaskan_Wolf_Conservation_Status

#Region
func _get_Interior_Alaskan_Wolf_Location():
	var _interior_Alaskan_Wolf_Location = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Location"]
	return _interior_Alaskan_Wolf_Location
	
#Morphology
func _get_Interior_Alaskan_Wolf_Morphology():
	var _interior_Alaskan_Wolf_Morphology = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Morphology"]
	return _interior_Alaskan_Wolf_Morphology
	
#Diets
func _get_Interior_Alaskan_Wolf_Diets():
	var _interior_Alaskan_Wolf_Diets = Data_Wolves["Interior Alaskan Wolf (Yukon Wolf)"]["Diets"]
	return _interior_Alaskan_Wolf_Diets
	
#######################################################################################################
#11
#Northwestern Wolf
#Image
func _get_Northwestern_Wolf_Image():
	var _northwestern_Wolf_Image = Data_Wolves["Northwestern Wolf"]["Image"]
	return _northwestern_Wolf_Image

#Name Wolf
func _get_Northwestern_Wolf_Name():
	var _northwestern_Wolf_Name = Data_Wolves["Northwestern Wolf"]["Name Wolf"]
	return _northwestern_Wolf_Name
	
#Species
func _get_Northwestern_Wolf_Species():
	var _northwestern_Wolf_Species = Data_Wolves["Northwestern Wolf"]["Species"]
	return _northwestern_Wolf_Species
	
#Hight
func _get_Northwestern_Wolf_Height():
	var _northwestern_Wolf_Height = Data_Wolves["Northwestern Wolf"]["Height"]
	return _northwestern_Wolf_Height

#Weight
func _get_Northwestern_Wolf_Weight():
	var _northwestern_Wolf_Weight = Data_Wolves["Northwestern Wolf"]["Weight"]	
	return _northwestern_Wolf_Weight
	
#Lenght
func _get_Northwestern_Wolf_Lenght():
	var _northwestern_Wolf_Lenght = Data_Wolves["Northwestern Wolf"]["Lenght"]
	return _northwestern_Wolf_Lenght
	
#Conservation Status
func _get_Northwestern_Wolf_status():
	var _northwestern_Wolf_Conservation_Status = Data_Wolves ["Northwestern Wolf"]["Conservation_status"]
	return _northwestern_Wolf_Conservation_Status

#Region
func _get_Northwestern_Wolf_Location():
	var _northwestern_Wolf_Location = Data_Wolves["Northwestern Wolf"]["Location"]
	return _northwestern_Wolf_Location
	
#Morphology
func _get_Northwestern_Wolf_Morphology():
	var _northwestern_Wolf_Morphology = Data_Wolves["Northwestern Wolf"]["Morphology"]
	return _northwestern_Wolf_Morphology
	
#Diets
func _get_Northwestern_Wolf_Diets():
	var _northwestern_Wolf_Diets = Data_Wolves["Northwestern Wolf"]["Diets"]
	return _northwestern_Wolf_Diets
	
#######################################################################################################
 #12
#Arabian Wolf 
#Image
func _get_Arabian_Wolf_Image():
	var _arabian_Wolf_Image = Data_Wolves["Arabian Wolf"]["Image"]
	return _arabian_Wolf_Image

#Name Wolf
func _get_Arabian_Wolf_Name():
	var _arabian_Wolf_Name = Data_Wolves["Arabian Wolf"]["Name Wolf"]
	return _arabian_Wolf_Name
	
#Species
func _get_Arabian_Wolf_Species():
	var _arabian_Wolf_Species = Data_Wolves["Arabian Wolf"]["Species"]
	return _arabian_Wolf_Species
	
#Hight
func _get_Arabian_Wolf_Height():
	var _arabian_Wolf_Height = Data_Wolves["Arabian Wolf"]["Height"]
	return _arabian_Wolf_Height

#Weight
func _get_Arabian_Wolf_Weight():
	var _arabian_Wolf_Weight = Data_Wolves["Arabian Wolf"]["Weight"]	
	return _arabian_Wolf_Weight
	
#Lenght
func _get_Arabian_Wolf_Lenght():
	var _arabian_Wolf_Lenght = Data_Wolves["Arabian Wolf"]["Lenght"]
	return _arabian_Wolf_Lenght
	
#Conservation Status
func _get_Arabian_Wolf_status():
	var _arabian_Wolf_Conservation_Status = Data_Wolves ["Arabian Wolf"]["Conservation_status"]
	return _arabian_Wolf_Conservation_Status

#Region
func _get_Arabian_Wolf_Location():
	var _arabian_Wolf_Location = Data_Wolves["Arabian Wolf"]["Location"]
	return _arabian_Wolf_Location
	
#Morphology
func _get_Arabian_Wolf_Morphology():
	var _arabian_Wolf_Morphology = Data_Wolves["Arabian Wolf"]["Morphology"]
	return _arabian_Wolf_Morphology
	
#Diets
func _get_Arabian_Wolf_Diets():
	var _arabian_Wolf_Diets = Data_Wolves["Arabian Wolf"]["Diets"]
	return _arabian_Wolf_Diets
	
#######################################################################################################
#13
#Indian Wolf 
#Image
func _get_Indian_Wolf_Image():
	var _indian_Wolf_Image = Data_Wolves["Indian Wolf"]["Image"]
	return _indian_Wolf_Image

#Name Wolf
func _get_Indian_Wolf_Name():
	var _indian_Wolf_Name = Data_Wolves["Indian Wolf"]["Name Wolf"]
	return _indian_Wolf_Name
	
#Species
func _get_Indian_Wolf_Species():
	var _indian_Wolf_Species = Data_Wolves["Indian Wolf"]["Species"]
	return _indian_Wolf_Species
	
#Hight
func _get_Indian_Wolf_Height():
	var _indian_Wolf_Height = Data_Wolves["Indian Wolf"]["Height"]
	return _indian_Wolf_Height

#Weight
func _get_Indian_Wolf_Weight():
	var _indian_Wolf_Weight = Data_Wolves["Indian Wolf"]["Weight"]	
	return _indian_Wolf_Weight
	
#Lenght
func _get_Indian_Wolf_Lenght():
	var _indian_Wolf_Lenght = Data_Wolves["Indian Wolf"]["Lenght"]
	return _indian_Wolf_Lenght
	
#Conservation Status
func _get_Indian_Wolf_status():
	var _indian_Wolf_Conservation_Status = Data_Wolves ["Indian Wolf"]["Conservation_status"]
	return _indian_Wolf_Conservation_Status

#Region
func _get_Indian_Wolf_Location():
	var _indian_Wolf_Location = Data_Wolves["Indian Wolf"]["Location"]
	return _indian_Wolf_Location
	
#Morphology
func _get_Indian_Wolf_Morphology():
	var _indian_Wolf_Morphology = Data_Wolves["Indian Wolf"]["Morphology"]
	return _indian_Wolf_Morphology
	
#Diets
func _get_Indian_Wolf_Diets():
	var _indian_Wolf_Diets = Data_Wolves["Arabian Wolf"]["Diets"]
	return _indian_Wolf_Diets
	
#######################################################################################################
#14
#Mexican Wolf 
#Image
func _get_Mexican_Wolf_Image():
	var _mexican_Wolf_Image = Data_Wolves["Mexican Wolf"]["Image"]
	return _mexican_Wolf_Image

#Name Wolf
func _get_Mexican_Wolf_Name():
	var _mexican_Wolf_Name = Data_Wolves["Mexican Wolf"]["Name Wolf"]
	return _mexican_Wolf_Name
	
#Species
func _get_Mexican_Wolf_Species():
	var _mexican_Wolf_Species = Data_Wolves["Mexican Wolf"]["Species"]
	return _mexican_Wolf_Species
	
#Hight
func _get_Mexican_Wolf_Height():
	var _mexican_Wolf_Height = Data_Wolves["Mexican Wolf"]["Height"]
	return _mexican_Wolf_Height

#Weight
func _get_Mexican_Wolf_Weight():
	var _mexican_Wolf_Weight = Data_Wolves["Mexican Wolf"]["Weight"]	
	return _mexican_Wolf_Weight
	
#Lenght
func _get_Mexican_Wolf_Lenght():
	var _mexican_Wolf_Lenght = Data_Wolves["Mexican Wolf"]["Lenght"]
	return _mexican_Wolf_Lenght
	
#Conservation Status
func _get_Mexican_Wolf_status():
	var _mexican_Wolf_Conservation_Status = Data_Wolves ["Mexican Wolf"]["Conservation_status"]
	return _mexican_Wolf_Conservation_Status

#Region
func _get_Mexican_Wolf_Location():
	var _mexican_Wolf_Location = Data_Wolves["Mexican Wolf"]["Location"]
	return _mexican_Wolf_Location
	
#Morphology
func _get_Mexican_Wolf_Morphology():
	var _mexican_Wolf_Morphology = Data_Wolves["Mexican Wolf"]["Morphology"]
	return _mexican_Wolf_Morphology
	
#Diets
func _get_Mexican_Wolf_Diets():
	var _mexican_Wolf_Diets = Data_Wolves["Mexican Wolf"]["Diets"]
	return _mexican_Wolf_Diets
	
#######################################################################################################
#15
#British Columbian Wolf 
#Image
func _get_British_Columbian_Wolf_Image():
	var _british_Columbian_Wolf_Image = Data_Wolves["British Columbian Wolf"]["Image"]
	return _british_Columbian_Wolf_Image

#Name Wolf
func _get_British_Columbian_Wolf_Name():
	var _british_Columbian_Wolf_Name = Data_Wolves["British Columbian Wolf"]["Name Wolf"]
	return _british_Columbian_Wolf_Name
	
#Species
func _get_British_Columbian_Wolf_Species():
	var _british_Columbian_Wolf_Species = Data_Wolves["British Columbian Wolf"]["Species"]
	return _british_Columbian_Wolf_Species
	
#Hight
func _get_British_Columbian_Wolf_Height():
	var _british_Columbian_Wolf_Height = Data_Wolves["British Columbian Wolf"]["Height"]
	return _british_Columbian_Wolf_Height

#Weight
func _get_British_Columbian_Wolf_Weight():
	var _british_Columbian_Wolf_Weight = Data_Wolves["British Columbian Wolf"]["Weight"]	
	return _british_Columbian_Wolf_Weight
	
#Lenght
func _get_British_Columbian_Wolf_Lenght():
	var _british_Columbian_Wolf_Lenght = Data_Wolves["British Columbian Wolf"]["Lenght"]
	return _british_Columbian_Wolf_Lenght
	
#Conservation Status
func _get_British_Columbian_Wolf_status():
	var _british_Columbian_Wolf_Conservation_Status = Data_Wolves ["British Columbian Wolf"]["Conservation_status"]
	return _british_Columbian_Wolf_Conservation_Status

#Region
func _get_British_Columbian_Wolf_Location():
	var _british_Columbian_Wolf_Location = Data_Wolves["British Columbian Wolf"]["Location"]
	return _british_Columbian_Wolf_Location
	
#Morphology
func _get_British_Columbian_Wolf_Morphology():
	var _british_Columbian_Wolf_Morphology = Data_Wolves["British Columbian Wolf"]["Morphology"]
	return _british_Columbian_Wolf_Morphology
	
#Diets
func _get_British_Columbian_Wolf_Diets():
	var _british_Columbian_Wolf_Diets = Data_Wolves["British Columbian Wolf"]["Diets"]
	return _british_Columbian_Wolf_Diets
	
#######################################################################################################
#16
#Vancouver Coastal Island Wolf 
#Image
func _get_Vancouver_Coastal_Island_Wolf_Image():
	var _vancouver_Coastal_Island_Wolf_Image = Data_Wolves["Vancouver Coastal Island Wolf"]["Image"]
	return _vancouver_Coastal_Island_Wolf_Image

#Name Wolf
func _get_Vancouver_Coastal_Island_Wolf_Name():
	var _vancouver_Coastal_Island_Wolf_Name = Data_Wolves["Vancouver Coastal Island Wolf"]["Name Wolf"]
	return _vancouver_Coastal_Island_Wolf_Name
	
#Species
func _get_Vancouver_Coastal_Island_Species():
	var _vancouver_Coastal_Island_Wolf_Species = Data_Wolves["Vancouver Coastal Island Wolf"]["Species"]
	return _vancouver_Coastal_Island_Wolf_Species
	
#Hight
func _get_Vancouver_Coastal_Island_Wolf_Height():
	var _vancouver_Coastal_Island_Wolf_Height = Data_Wolves["Vancouver Coastal Island Wolf"]["Height"]
	return _vancouver_Coastal_Island_Wolf_Height

#Weight
func _get_Vancouver_Coastal_Island_Wolf_Weight():
	var _vancouver_Coastal_Island_Wolf_Weight = Data_Wolves["Vancouver Coastal Island Wolf"]["Weight"]	
	return _vancouver_Coastal_Island_Wolf_Weight
	
#Lenght
func _get_Vancouver_Coastal_Island_Wolf_Lenght():
	var _vancouver_Coastal_Island_Wolf_Lenght = Data_Wolves["Vancouver Coastal Island Wolf"]["Lenght"]
	return _vancouver_Coastal_Island_Wolf_Lenght
	
#Conservation Status
func _get_Vancouver_Coastal_Island_Wolf_status():
	var _vancouver_Coastal_Island_Wolf_Conservation_Status = Data_Wolves ["Vancouver Coastal Island Wolf"]["Conservation_status"]
	return _vancouver_Coastal_Island_Wolf_Conservation_Status

#Region
func _get_Vancouver_Coastal_Island_Wolf_Location():
	var _vancouver_Coastal_Island_Wolf_Location = Data_Wolves["Vancouver Coastal Island Wolf"]["Location"]
	return _vancouver_Coastal_Island_Wolf_Location
	
#Morphology
func _get_Vancouver_Coastal_Island_Wolf_Morphology():
	var _vancouver_Coastal_Island_Wolf_Morphology = Data_Wolves["Vancouver Coastal Island Wolf"]["Morphology"]
	return _vancouver_Coastal_Island_Wolf_Morphology
	
#Diets
func _get_Vancouver_Coastal_Island_Wolf_Diets():
	var _vancouver_Coastal_Island_Wolf_Diets = Data_Wolves["Vancouver Coastal Island Wolf"]["Diets"]
	return _vancouver_Coastal_Island_Wolf_Diets
	
#######################################################################################################
#17
#Hudson Bay Wolf 
#Image
func _get_Hudson_Bay_Wolf_Image():
	var _hudson_Bay_Wolf_Image = Data_Wolves["Hudson Bay Wolf"]["Image"]
	return _hudson_Bay_Wolf_Image

#Name Wolf
func _get_Hudson_Bay_Wolf_Name():
	var _hudson_Bay_Wolf_Name = Data_Wolves["Hudson Bay Wolf"]["Name Wolf"]
	return _hudson_Bay_Wolf_Name
	
#Species
func _get_Hudson_Bay_Wolf_Species():
	var _hudson_Bay_Wolf_Species = Data_Wolves["Hudson Bay Wolf"]["Species"]
	return _hudson_Bay_Wolf_Species
	
#Hight
func _get_Hudson_Bay_Wolf_Height():
	var _hudson_Bay_Wolf_Height = Data_Wolves["Hudson Bay Wolf"]["Height"]
	return _hudson_Bay_Wolf_Height

#Weight
func _get_Hudson_Bay_Wolf_Weight():
	var _hudson_Bay_Wolf_Weight = Data_Wolves["Hudson Bay Wolf"]["Weight"]	
	return _hudson_Bay_Wolf_Weight
	
#Lenght
func _get_Hudson_Bay_Wolf_Lenght():
	var _hudson_Bay_Wolf_Lenght = Data_Wolves["Hudson Bay Wolf"]["Lenght"]
	return _hudson_Bay_Wolf_Lenght
	
#Conservation Status
func _get_Hudson_Bay_Wolf_status():
	var _hudson_Bay_Wolf_Conservation_Status = Data_Wolves ["Hudson Bay Wolf"]["Conservation_status"]
	return _hudson_Bay_Wolf_Conservation_Status

#Region
func _get_Hudson_Bay_Wolf_Location():
	var _hudson_Bay_Wolf_Location = Data_Wolves["Hudson Bay Wolf"]["Location"]
	return _hudson_Bay_Wolf_Location
	
#Morphology
func _get_Hudson_Bay_Wolf_Morphology():
	var _hudson_Bay_Wolf_Morphology = Data_Wolves["Hudson Bay Wolf"]["Morphology"]
	return _hudson_Bay_Wolf_Morphology
	
#Diets
func _get_Hudson_Bay_Wolf_Diets():
	var _hudson_Bay_Wolf_Diets = Data_Wolves["Hudson Bay Wolf"]["Diets"]
	return _hudson_Bay_Wolf_Diets
	
#######################################################################################################
#18
#Alexander Archipelago Wolf 
#Image
func _get_Alexander_Archipelago_Wolf_Image():
	var _alexander_Archipelago_Wolf_Image = Data_Wolves["Alexander Archipelago Wolf"]["Image"]
	return _alexander_Archipelago_Wolf_Image

#Name Wolf
func _get_Alexander_Archipelago_Wolf_Name():
	var _alexander_Archipelago_Wolf_Name = Data_Wolves["Alexander Archipelago Wolf"]["Name Wolf"]
	return _alexander_Archipelago_Wolf_Name
	
#Species
func _get_Alexander_ArchipelagoWolf_Species():
	var _alexander_Archipelago_Wolf_Species = Data_Wolves["Alexander Archipelago Wolf"]["Species"]
	return _alexander_Archipelago_Wolf_Species
	
#Hight
func _get_Alexander_Archipelago_Wolf_Height():
	var _alexander_Archipelago_Wolf_Height = Data_Wolves["Alexander Archipelago Wolf"]["Height"]
	return _alexander_Archipelago_Wolf_Height

#Weight
func _get_Alexander_Archipelago_Wolf_Weight():
	var _alexander_Archipelago_Wolf_Weight = Data_Wolves["Alexander Archipelago Wolf"]["Weight"]	
	return _alexander_Archipelago_Wolf_Weight
	
#Lenght
func _get_Alexander_Archipelago_Wolf_Lenght():
	var _alexander_Archipelago_Wolf_Lenght = Data_Wolves["Alexander Archipelago Wolf"]["Lenght"]
	return _alexander_Archipelago_Wolf_Lenght
	
#Conservation Status
func _get_Alexander_Archipelago_Wolf_status():
	var _alexander_Archipelago_Wolf_Conservation_Status = Data_Wolves ["Alexander Archipelago Wolf"]["Conservation_status"]
	return _alexander_Archipelago_Wolf_Conservation_Status

#Region
func _get_Alexander_Archipelago_Wolf_Location():
	var _alexander_Archipelago_Wolf_Location = Data_Wolves["Alexander Archipelago Wolf"]["Location"]
	return _alexander_Archipelago_Wolf_Location
	
#Morphology
func _get_Alexander_Archipelago_Wolf_Morphology():
	var _alexander_Archipelago_Wolf_Morphology = Data_Wolves["Alexander Archipelago Wolf"]["Morphology"]
	return _alexander_Archipelago_Wolf_Morphology
	
#Diets
func _get_Alexander_Archipelago_Wolf_Diets():
	var _alexander_Archipelago_Wolf_Diets = Data_Wolves["Alexander Archipelago Wolf"]["Diets"]
	return _alexander_Archipelago_Wolf_Diets
	
#######################################################################################################
#19
#Eastern Wolf 
#Image
func _get_Eastern_Wolf_Image():
	var _eastern_Wolf_Image = Data_Wolves["Eastern Wolf"]["Image"]
	return _eastern_Wolf_Image

#Name Wolf
func _get_Eastern_Wolf_Name():
	var _eastern_Wolf_Name = Data_Wolves["Eastern Wolf"]["Name Wolf"]
	return _eastern_Wolf_Name
	
#Species
func _get_Eastern_Wolf_Species():
	var _eastern_Wolf_Species = Data_Wolves["Eastern Wolf"]["Species"]
	return _eastern_Wolf_Species
	
#Hight
func _get_Eastern_Wolf_Height():
	var _eastern_Wolf_Height = Data_Wolves["Eastern Wolf"]["Height"]
	return _eastern_Wolf_Height

#Weight
func _get_Eastern_Wolf_Weight():
	var _eastern_Wolf_Weight = Data_Wolves["Eastern Wolf"]["Weight"]	
	return _eastern_Wolf_Weight
	
#Lenght
func _get_Eastern_Wolf_Lenght():
	var _eastern_Wolf_Lenght = Data_Wolves["Eastern Wolf"]["Lenght"]
	return _eastern_Wolf_Lenght
	
#Conservation Status
func _get_Eastern_Wolf_status():
	var _eastern_Wolf_Conservation_Status = Data_Wolves ["Eastern Wolf"]["Conservation_status"]
	return _eastern_Wolf_Conservation_Status

#Region
func _get_Eastern_Wolf_Location():
	var _eastern_Wolf_Location = Data_Wolves["Eastern Wolf"]["Location"]
	return _eastern_Wolf_Location
	
#Morphology
func _get_Eastern_Wolf_Morphology():
	var _eastern_Wolf_Morphology = Data_Wolves["Eastern Wolf"]["Morphology"]
	return _eastern_Wolf_Morphology
	
#Diets
func _get_Eastern_Wolf_Diets():
	var _eastern_Wolf_Diets = Data_Wolves["Eastern Wolf"]["Diets"]
	return _eastern_Wolf_Diets
	
#######################################################################################################
#20
#Mackenzie River  Wolf 
#Image
func _get_Mackenzie_River_Wolf_Image():
	var _mackenzie_River_Wolf_Image = Data_Wolves["Mackenzie River Wolf"]["Image"]
	return _mackenzie_River_Wolf_Image

#Name Wolf
func _get_Mackenzie_River_Wolf_Name():
	var _mackenzie_River_Wolf_Name = Data_Wolves["Mackenzie River Wolf"]["Name Wolf"]
	return _british_Columbian_Wolf_Name
	
#Species
func _get_Mackenzie_River_Wolf_Species():
	var _mackenzie_River_Wolf_Species = Data_Wolves["Mackenzie River Wolf"]["Species"]
	return _mackenzie_River_Wolf_Species
	
#Hight
func _get_Mackenzie_River_Wolf_Height():
	var _mackenzie_River_Wolf_Height = Data_Wolves["Mackenzie River Wolf"]["Height"]
	return _mackenzie_River_Wolf_Height

#Weight
func _get_Mackenzie_River_Wolf_Weight():
	var _mackenzie_River_Wolf_Weight = Data_Wolves["Mackenzie River Wolf"]["Weight"]	
	return _mackenzie_River_Wolf_Weight
	
#Lenght
func _get_Mackenzie_River_Wolf_Lenght():
	var _mackenzie_River_Wolf_Lenght = Data_Wolves["Mackenzie River Wolf"]["Lenght"]
	return _mackenzie_River_Wolf_Lenght
	
#Conservation Status
func _get_Mackenzie_River_Wolf_status():
	var _mackenzie_River_Wolf_Conservation_Status = Data_Wolves ["Mackenzie River Wolf"]["Conservation_status"]
	return _mackenzie_River_Wolf_Conservation_Status

#Region
func _get_Mackenzie_River_Wolf_Location():
	var _mackenzie_River_Wolf_Location = Data_Wolves["Mackenzie River Wolf"]["Location"]
	return _mackenzie_River_Wolf_Location
	
#Morphology
func _get_Mackenzie_River_Wolf_Morphology():
	var _mackenzie_River_Wolf_Morphology = Data_Wolves["Mackenzie River Wolf"]["Morphology"]
	return _mackenzie_River_Wolf_Morphology
	
#Diets
func _get_Mackenzie_River_Wolf_Diets():
	var _mackenzie_River_Wolf_Diets = Data_Wolves["Mackenzie River Wolf"]["Diets"]
	return _mackenzie_River_Wolf_Diets
	
#######################################################################################################
#21
#Baffin Island Wolf 
#Image
func _get_Baffin_Island_Wolf_Image():
	var _baffin_Island_Wolf_Image = Data_Wolves["Baffin Island Wolf"]["Image"]
	return _baffin_Island_Wolf_Image

#Name Wolf
func _get_Baffin_Island_Wolf_Name():
	var _baffin_Island_Wolf_Name = Data_Wolves["Baffin Island Wolf"]["Name Wolf"]
	return _baffin_Island_Wolf_Name
	
#Species
func _get_Baffin_Island_Wolf_Species():
	var _baffin_Island_Wolf_Species = Data_Wolves["Baffin Island Wolf"]["Species"]
	return _baffin_Island_Wolf_Species
	
#Hight
func _get_Baffin_Island_Wolf_Height():
	var _baffin_Island_Wolf_Height = Data_Wolves["Baffin Island Wolf"]["Height"]
	return _baffin_Island_Wolf_Height

#Weight
func _get_Baffin_Island_Wolf_Weight():
	var _baffin_Island_Wolf_Weight = Data_Wolves["Baffin Island Wolf"]["Weight"]	
	return _baffin_Island_Wolf_Weight
	
#Lenght
func _get_Baffin_Island_Wolf_Lenght():
	var _baffin_Island_Wolf_Lenght = Data_Wolves["Baffin Island Wolf"]["Lenght"]
	return _baffin_Island_Wolf_Lenght
	
#Conservation Status
func _get_Baffin_Island_Wolf_status():
	var _baffin_Island_Wolf_Conservation_Status = Data_Wolves ["Baffin Island Wolf"]["Conservation_status"]
	return _baffin_Island_Wolf_Conservation_Status

#Region
func _get_Baffin_Island_Wolf_Location():
	var _baffin_Island_Wolf_Location = Data_Wolves["Baffin Island Wolf"]["Location"]
	return _baffin_Island_Wolf_Location
	
#Morphology
func _get_baffin_Island_Wolf_Morphology():
	var _baffin_Island_Wolf_Morphology = Data_Wolves["Baffin Island Wolf"]["Morphology"]
	return _baffin_Island_Wolf_Morphology
	
#Diets
func _get_baffin_Island_Wolf_Diets():
	var _baffin_Island_Wolf_Diets = Data_Wolves["Baffin Island Wolf"]["Diets"]
	return _baffin_Island_Wolf_Diets
	
#######################################################################################################
#22
#Greenland Wolf 
#Image
func _get_Greenland_Wolf_Image():
	var _greenland_Wolf_Image = Data_Wolves["Greenland Wolf"]["Image"]
	return _greenland_Wolf_Image

#Name Wolf
func _get_Greenland_Wolf_Name():
	var _greenland_Wolf_Name = Data_Wolves["Greenland Wolf"]["Name Wolf"]
	return _greenland_Wolf_Name
	
#Species
func _get_Greenland_Wolf_Species():
	var _greenland_Wolf_Species = Data_Wolves["Greenland Wolf"]["Species"]
	return _greenland_Wolf_Species
	
#Hight
func _get_Greenland_Wolf_Height():
	var _greenland_Wolf_Height = Data_Wolves["Greenland Wolf"]["Height"]
	return _greenland_Wolf_Height

#Weight
func _get_Greenland_Wolf_Weight():
	var _greenland_Wolf_Weight = Data_Wolves["Greenland Wolf"]["Weight"]	
	return _greenland_Wolf_Weight
	
#Lenght
func _get_Greenland_Wolf_Lenght():
	var _greenland_Wolf_Lenght = Data_Wolves["Greenland Wolf"]["Lenght"]
	return _greenland_Wolf_Lenght
	
#Conservation Status
func _get_Greenland_Wolf_status():
	var _greenland_Wolf_Conservation_Status = Data_Wolves ["Greenland Wolf"]["Conservation_status"]
	return _greenland_Wolf_Conservation_Status

#Region
func _get_Greenland_Wolf_Location():
	var _greenland_Wolf_Location = Data_Wolves["Greenland Wolf"]["Location"]
	return _greenland_Wolf_Location
	
#Morphology
func _get_Greenland_Wolf_Morphology():
	var _greenland_Wolf_Morphology = Data_Wolves["Greenland Wolf"]["Morphology"]
	return _greenland_Wolf_Morphology
	
#Diets
func _get_Greenland_Wolf_Diets():
	var _greenland_Wolf_Diets = Data_Wolves["Greenland Wolf"]["Diets"]
	return _greenland_Wolf_Diets
	
#######################################################################################################
#23
#Alaskan Tundra  Wolf 
#Image
func _get_Alaskan_Tundra_Wolf_Image():
	var _alaskan_Tundra_Wolf_Image = Data_Wolves["Alaskan Tundra Wolf"]["Image"]
	return _alaskan_Tundra_Wolf_Image

#Name Wolf
func _get_Alaskan_Tundra_Wolf_Name():
	var _alaskan_Tundra_Wolf_Name = Data_Wolves["Alaskan Tundra Wolf"]["Name Wolf"]
	return _alaskan_Tundra_Wolf_Name
	
#Species
func _get_Alaskan_Tundra_Wolf_Species():
	var _alaskan_Tundra_Wolf_Species = Data_Wolves["Alaskan Tundra Wolf"]["Species"]
	return _alaskan_Tundra_Wolf_Species
	
#Hight
func _get_Alaskan_Tundra_Wolf_Height():
	var _alaskan_Tundra_Wolf_Height = Data_Wolves["Alaskan Tundra Wolf"]["Height"]
	return _alaskan_Tundra_Wolf_Height

#Weight
func _get_Alaskan_Tundra_Wolf_Weight():
	var _alaskan_Tundra_Wolf_Weight = Data_Wolves["Alaskan Tundra Wolf"]["Weight"]	
	return _alaskan_Tundra_Wolf_Weight
	
#Lenght
func _get_Alaskan_Tundra_Wolf_Lenght():
	var _alaskan_Tundra_Wolf_Lenght = Data_Wolves["Alaskan Tundra Wolf"]["Lenght"]
	return _alaskan_Tundra_Wolf_Lenght
	
#Conservation Status
func _get_Alaskan_Tundra_Wolf_status():
	var _alaskan_Tundra_Wolf_Conservation_Status = Data_Wolves ["Alaskan Tundra Wolf"]["Conservation_status"]
	return _alaskan_Tundra_Wolf_Conservation_Status

#Region
func _get_Alaskan_Tundra_Wolf_Location():
	var _alaskan_Tundra_Wolf_Location = Data_Wolves["Alaskan Tundra Wolf"]["Location"]
	return _alaskan_Tundra_Wolf_Location
	
#Morphology
func _get_Alaskan_Tundra_Wolf_Morphology():
	var _alaskan_Tundra_Wolf_Morphology = Data_Wolves["Alaskan Tundra Wolf"]["Morphology"]
	return _alaskan_Tundra_Wolf_Morphology
	
#Diets
func _get_Alaskan_Tundra_Wolf_Diets():
	var _alaskan_Tundra_Wolf_Diets = Data_Wolves["Alaskan Tundra Wolf"]["Diets"]
	return _alaskan_Tundra_Wolf_Diets
	
#######################################################################################################
#24
#Labrador Wolf 
#Image
func _get_Labrador_Wolf_Image():
	var _british_Columbian_Wolf_Image = Data_Wolves["Labrador Wolf"]["Image"]
	return _british_Columbian_Wolf_Image

#Name Wolf
func _get_British_Columbian_Wolf_Name():
	var _british_Columbian_Wolf_Name = Data_Wolves["Labrador Wolf"]["Name Wolf"]
	return _british_Columbian_Wolf_Name
	
#Species
func _get_British_Columbian_Wolf_Species():
	var _british_Columbian_Wolf_Species = Data_Wolves["Labrador Wolf"]["Species"]
	return _british_Columbian_Wolf_Species
	
#Hight
func _get_British_Columbian_Wolf_Height():
	var _british_Columbian_Wolf_Height = Data_Wolves["British Columbian Wolf"]["Height"]
	return _british_Columbian_Wolf_Height

#Weight
func _get_British_Columbian_Wolf_Weight():
	var _british_Columbian_Wolf_Weight = Data_Wolves["British Columbian Wolf"]["Weight"]	
	return _british_Columbian_Wolf_Weight
	
#Lenght
func _get_British_Columbian_Wolf_Lenght():
	var _british_Columbian_Wolf_Lenght = Data_Wolves["British Columbian Wolf"]["Lenght"]
	return _british_Columbian_Wolf_Lenght
	
#Conservation Status
func _get_British_Columbian_Wolf_status():
	var _british_Columbian_Wolf_Conservation_Status = Data_Wolves ["British Columbian Wolf"]["Conservation_status"]
	return _british_Columbian_Wolf_Conservation_Status

#Region
func _get_British_Columbian_Wolf_Location():
	var _british_Columbian_Wolf_Location = Data_Wolves["British Columbian Wolf"]["Location"]
	return _british_Columbian_Wolf_Location
	
#Morphology
func _get_British_Columbian_Wolf_Morphology():
	var _british_Columbian_Wolf_Morphology = Data_Wolves["British Columbian Wolf"]["Morphology"]
	return _british_Columbian_Wolf_Morphology
	
#Diets
func _get_British_Columbian_Wolf_Diets():
	var _british_Columbian_Wolf_Diets = Data_Wolves["British Columbian Wolf"]["Diets"]
	return _british_Columbian_Wolf_Diets
	
#######################################################################################################
#25
#British Columbian Wolf 
#Image
func _get_British_Columbian_Wolf_Image():
	var _british_Columbian_Wolf_Image = Data_Wolves["British Columbian Wolf"]["Image"]
	return _british_Columbian_Wolf_Image

#Name Wolf
func _get_British_Columbian_Wolf_Name():
	var _british_Columbian_Wolf_Name = Data_Wolves["British Columbian Wolf"]["Name Wolf"]
	return _british_Columbian_Wolf_Name
	
#Species
func _get_British_Columbian_Wolf_Species():
	var _british_Columbian_Wolf_Species = Data_Wolves["British Columbian Wolf"]["Species"]
	return _british_Columbian_Wolf_Species
	
#Hight
func _get_British_Columbian_Wolf_Height():
	var _british_Columbian_Wolf_Height = Data_Wolves["British Columbian Wolf"]["Height"]
	return _british_Columbian_Wolf_Height

#Weight
func _get_British_Columbian_Wolf_Weight():
	var _british_Columbian_Wolf_Weight = Data_Wolves["British Columbian Wolf"]["Weight"]	
	return _british_Columbian_Wolf_Weight
	
#Lenght
func _get_British_Columbian_Wolf_Lenght():
	var _british_Columbian_Wolf_Lenght = Data_Wolves["British Columbian Wolf"]["Lenght"]
	return _british_Columbian_Wolf_Lenght
	
#Conservation Status
func _get_British_Columbian_Wolf_status():
	var _british_Columbian_Wolf_Conservation_Status = Data_Wolves ["British Columbian Wolf"]["Conservation_status"]
	return _british_Columbian_Wolf_Conservation_Status

#Region
func _get_British_Columbian_Wolf_Location():
	var _british_Columbian_Wolf_Location = Data_Wolves["British Columbian Wolf"]["Location"]
	return _british_Columbian_Wolf_Location
	
#Morphology
func _get_British_Columbian_Wolf_Morphology():
	var _british_Columbian_Wolf_Morphology = Data_Wolves["British Columbian Wolf"]["Morphology"]
	return _british_Columbian_Wolf_Morphology
	
#Diets
func _get_British_Columbian_Wolf_Diets():
	var _british_Columbian_Wolf_Diets = Data_Wolves["British Columbian Wolf"]["Diets"]
	return _british_Columbian_Wolf_Diets
	
#######################################################################################################
#26
#British Columbian Wolf 
#Image
func _get_British_Columbian_Wolf_Image():
	var _british_Columbian_Wolf_Image = Data_Wolves["British Columbian Wolf"]["Image"]
	return _british_Columbian_Wolf_Image

#Name Wolf
func _get_British_Columbian_Wolf_Name():
	var _british_Columbian_Wolf_Name = Data_Wolves["British Columbian Wolf"]["Name Wolf"]
	return _british_Columbian_Wolf_Name
	
#Species
func _get_British_Columbian_Wolf_Species():
	var _british_Columbian_Wolf_Species = Data_Wolves["British Columbian Wolf"]["Species"]
	return _british_Columbian_Wolf_Species
	
#Hight
func _get_British_Columbian_Wolf_Height():
	var _british_Columbian_Wolf_Height = Data_Wolves["British Columbian Wolf"]["Height"]
	return _british_Columbian_Wolf_Height

#Weight
func _get_British_Columbian_Wolf_Weight():
	var _british_Columbian_Wolf_Weight = Data_Wolves["British Columbian Wolf"]["Weight"]	
	return _british_Columbian_Wolf_Weight
	
#Lenght
func _get_British_Columbian_Wolf_Lenght():
	var _british_Columbian_Wolf_Lenght = Data_Wolves["British Columbian Wolf"]["Lenght"]
	return _british_Columbian_Wolf_Lenght
	
#Conservation Status
func _get_British_Columbian_Wolf_status():
	var _british_Columbian_Wolf_Conservation_Status = Data_Wolves ["British Columbian Wolf"]["Conservation_status"]
	return _british_Columbian_Wolf_Conservation_Status

#Region
func _get_British_Columbian_Wolf_Location():
	var _british_Columbian_Wolf_Location = Data_Wolves["British Columbian Wolf"]["Location"]
	return _british_Columbian_Wolf_Location
	
#Morphology
func _get_British_Columbian_Wolf_Morphology():
	var _british_Columbian_Wolf_Morphology = Data_Wolves["British Columbian Wolf"]["Morphology"]
	return _british_Columbian_Wolf_Morphology
	
#Diets
func _get_British_Columbian_Wolf_Diets():
	var _british_Columbian_Wolf_Diets = Data_Wolves["British Columbian Wolf"]["Diets"]
	return _british_Columbian_Wolf_Diets
	
#######################################################################################################
#27
#British Columbian Wolf 
#Image
func _get_British_Columbian_Wolf_Image():
	var _british_Columbian_Wolf_Image = Data_Wolves["British Columbian Wolf"]["Image"]
	return _british_Columbian_Wolf_Image

#Name Wolf
func _get_British_Columbian_Wolf_Name():
	var _british_Columbian_Wolf_Name = Data_Wolves["British Columbian Wolf"]["Name Wolf"]
	return _british_Columbian_Wolf_Name
	
#Species
func _get_British_Columbian_Wolf_Species():
	var _british_Columbian_Wolf_Species = Data_Wolves["British Columbian Wolf"]["Species"]
	return _british_Columbian_Wolf_Species
	
#Hight
func _get_British_Columbian_Wolf_Height():
	var _british_Columbian_Wolf_Height = Data_Wolves["British Columbian Wolf"]["Height"]
	return _british_Columbian_Wolf_Height

#Weight
func _get_British_Columbian_Wolf_Weight():
	var _british_Columbian_Wolf_Weight = Data_Wolves["British Columbian Wolf"]["Weight"]	
	return _british_Columbian_Wolf_Weight
	
#Lenght
func _get_British_Columbian_Wolf_Lenght():
	var _british_Columbian_Wolf_Lenght = Data_Wolves["British Columbian Wolf"]["Lenght"]
	return _british_Columbian_Wolf_Lenght
	
#Conservation Status
func _get_British_Columbian_Wolf_status():
	var _british_Columbian_Wolf_Conservation_Status = Data_Wolves ["British Columbian Wolf"]["Conservation_status"]
	return _british_Columbian_Wolf_Conservation_Status

#Region
func _get_British_Columbian_Wolf_Location():
	var _british_Columbian_Wolf_Location = Data_Wolves["British Columbian Wolf"]["Location"]
	return _british_Columbian_Wolf_Location
	
#Morphology
func _get_British_Columbian_Wolf_Morphology():
	var _british_Columbian_Wolf_Morphology = Data_Wolves["British Columbian Wolf"]["Morphology"]
	return _british_Columbian_Wolf_Morphology
	
#Diets
func _get_British_Columbian_Wolf_Diets():
	var _british_Columbian_Wolf_Diets = Data_Wolves["British Columbian Wolf"]["Diets"]
	return _british_Columbian_Wolf_Diets
	
#######################################################################################################
