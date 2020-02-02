extends Button

var HHead3 = 0
var Col3 = 0
var Smoo3 = 0
var HairC3 = 0
var Tr3 = 0
onready var HairHead = $"../HairHead"
onready var Colorness = $"../Colorness"
onready var SilkySmooth = $"../SilkySmooth"
onready var HairChest = $"../HairChest"
onready var Trees = $"../Trees"

func randShampoo3():
	 HHead3 = randi()%19+8
	 Col3 = randi()%16+8
	 Smoo3 = randi()%9+5
	 HairC3 = randi()%19+9
	 Tr3 = randi()%5+2
	 $ShampooLabel3.text = "HairHead: +"+ str(HHead3)+ "\n\nColorness: -"+str(Col3)+\
	 "\n\nSmoothness: +"+ str(Smoo3)+ "\n\nHairChest: +"+ str(HairC3)+"\n\nTrees: -"+str(Tr3)
func _on_Shampoo3_pressed():
	self.HairHead.value += HHead3
	self.Colorness.value -= Col3
	self.SilkySmooth.value += Smoo3
	self.HairChest.value += HairC3
	self.Trees.value -= Tr3
