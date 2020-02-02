extends Button

var HHead1 = 0
var Col1 = 0
var Smoo1 = 0
var HairC1 = 0
var Tr1 = 0
onready var HairHead = $"../HairHead"
onready var Colorness = $"../Colorness"
onready var SilkySmooth = $"../SilkySmooth"
onready var HairChest = $"../HairChest"
onready var Trees = $"../Trees"

func randShampoo1():
	 HHead1 = randi()%10+8
	 Col1 = randi()%16+1
	 Smoo1 = randi()%20+7
	 HairC1 = randi()%17+5
	 Tr1 = randi()%4+1
	 $ShampooLabel1.text = "HairHead: -"+ str(HHead1)+ "\n\nColorness: -"+str(Col1)+\
	 "\n\nSmoothness: +"+ str(Smoo1)+ "\n\nHairChest:"+ str(HairC1)+"\n\nTrees: -"+str(Tr1)
func _on_Shampoo1_pressed():
	self.HairHead.value -= HHead1
	self.Colorness.value -= Col1
	self.SilkySmooth.value += Smoo1
	self.HairChest.value += HairC1
	self.Trees.value -= Tr1
