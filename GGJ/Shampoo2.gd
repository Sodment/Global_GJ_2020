extends Button

var HHead2 = 0
var Col2 = 0
var Smoo2 = 0
var HairC2 = 0
var Tr2 = 0
onready var HairHead = $"../HairHead"
onready var Colorness = $"../Colorness"
onready var SilkySmooth = $"../SilkySmooth"
onready var HairChest = $"../HairChest"
onready var Trees = $"../Trees"

func randShampoo2():
	 HHead2 = randi()%13+7
	 Col2 = randi()%31+15
	 Smoo2 = randi()%15+7
	 HairC2 = randi()%12+4
	 Tr2 = randi()%4+1
	 $ShampooLabel2.text = "HairHead: -"+ str(HHead2)+ "\n\nColorness: +"+str(Col2)+\
	 "\n\nSmoothness: -"+ str(Smoo2)+ "\n\nHairChest: -"+ str(HairC2)+"\n\nTrees: -"+str(Tr2)
func _on_Shampoo2_pressed():
	self.HairHead.value -= HHead2
	self.Colorness.value += Col2
	self.SilkySmooth.value -= Smoo2
	self.HairChest.value -= HairC2
	self.Trees.value -= Tr2
