;----------------------------------Glabal Perfomance--------------------------------
#NoEnv 
#MaxHotkeysPerInterval 99000000 
#HotkeyInterval 99000000 
#KeyHistory 0 
#SingleInstance
ListLines Off 
Process, Priority, , H 
SetWinDelay, 0 
SetMouseDelay, -1 
SetBatchLines, -1 
SetDefaultMouseSpeed, 0 
SetControlDelay, 0 
SetKeyDelay, -1, -1, -1 
SendMode Input 
SetTitleMatchMode 2
SetTitleMatchMode Fast

;----------------------------------Glabal Perfomance--------------------------------





;________________________________Gui_____________________________________________

#IfWinActive ahk_exe Code.exe

Menu, VScde, Add, Class.Object.Function, MainMenuStudio

Menu, Three Menu, Add, Function, MainMenuStudio
Menu, Three Menu, Add, Class Konstructor, MainMenuStudio
Menu, Three Menu, Add, ValueRefType, MainMenuStudio
Menu, Three Menu, Add, Object, MainMenuStudio
Menu, Three Menu, Add, Convert, MainMenuStudio

Menu, Function Menu, Add, Type of Function, MainMenuStudio1
Menu, Function Menu, Add, CallBack, MainMenuStudio1
Menu, Function Menu, Add, freeks, MainMenuStudio1

Menu, Three Menu, Add, Function, :Function Menu

Menu, Class Three Menu, Add, Basic Class.Konstructor, MainMenuStudio2
Menu, Class Three Menu, Add, ClassPrClass 2, MainMenuStudio2
Menu, Class Three Menu, Add, ClassPrClass 3, MainMenuStudio2

Menu, Three Menu, Add, Class Konstructor, :Class Three Menu

Menu, ValueRefType Three Menu, Add, Ref. Value. Stack. Heap, MainMenuStudio3
Menu, ValueRefType Three Menu, Add, Null Ref Out, MainMenuStudio3
Menu, ValueRefType Three Menu, Add, In Param, MainMenuStudio3

Menu, Three Menu, Add, ValueRefType, :ValueRefType Three Menu

Menu, Object Three Menu, Add, Object Concept, MainMenuStudio4
Menu, Object Three Menu, Add, Metods.This.For(in), MainMenuStudio4
Menu, Object Three Menu, Add, ObjectPrint 3, MainMenuStudio4

Menu, Three Menu, Add, Object, :Object Three Menu

Menu, Convert Three Menu, Add, ConvertPrint 1, MainMenuStudio5
Menu, Convert Three Menu, Add, ConvertPrint 2, MainMenuStudio5
Menu, Convert Three Menu, Add, ConvertPrint 3, MainMenuStudio5

Menu, Three Menu, Add, Convert, :Convert Three Menu

Menu, VScde, Add, Class.Object.Function, :Three Menu
;-------------------------------------------------------

Menu, VScde, Add, DOM, MenuHandler
Menu, MySubMenu6, Add, DOM Element, SubMenu6Label
Menu, MySubMenu6, Add, Frees, SubMenu6Label
Menu, VScde, Add, DOM, :MySubMenu6

Menu, VScde, Add, If|else|TernarnOp, MainMenuLabel

Menu, VScde, Add, Array , MenuHandler
Menu, MySubMenu3, Add, BaseArray, SubMenu3Label
Menu, MySubMenu3, Add, LoopMethod, SubMenu3Label
Menu, MySubMenu3, Add, Array2D+Foreach, SubMenu3Label
Menu, MySubMenu3, Add, SharpArray, SubMenu3Label
Menu, MySubMenu3, Add, Array3D, SubMenu3Label
Menu, MySubMenu3, Add, Basic Method, SubMenu3Label
Menu, VScde, Add, Array , :MySubMenu3

Menu, VScde, Add, Recursia + Algoritm, MainMenuLabel
Menu, VScde, Add, free5, MainMenuLabel
Menu, VScde, Add, frees6, MainMenuLabel

Menu, VScde, Add, JSON, MenuHandler
Menu, MySubMenu5, Add, BasicJSON, SubMenu5Label
Menu, MySubMenu5, Add, Frees, SubMenu5Label
Menu, VScde, Add, JSON, :MySubMenu5


Menu, VScde, Add, C#cookie, MenuHandler
Menu, MySubMenu4, Add, StopWath, SubMenu4Label
Menu, MySubMenu4, Add, Frees, SubMenu4Label
Menu, VScde, Add, C#cookie, :MySubMenu4



Menu, VScde, Add, PureCode, MainMenuLabel

Menu, VScde, Add, Loop Operators, MenuHandler
Menu, MySubMenu1, Add, While, SubMenu1Label
Menu, MySubMenu1, Add, DoWhile, SubMenu1Label
Menu, MySubMenu1, Add, For, SubMenu1Label
Menu, MySubMenu1, Add, NestedLoop, SubMenu1Label
Menu, VScde, Add, Loop Operators, :MySubMenu1

Menu, VScde, Add,Math|LogicOperators, MenuHandler
Menu, MySubMenu2, Add, Swith, SubMenu2Label
Menu, MySubMenu2, Add, BasicLogic and Math, SubMenu2Label
Menu, VScde, Add, Math|LogicOperators, :MySubMenu2

;-------------------------------------------------

Menu, VScde, Add, DataType, MainMenuVisual

Menu, Two Menu, Add, Data, MainMenuVisual
Menu, Two Menu, Add, String, MainMenuVisual
Menu, Two Menu, Add, Double, MainMenuVisual
Menu, Two Menu, Add, Dynamic, MainMenuVisual
Menu, Two Menu, Add, Convert, MainMenuVisual

Menu, ADataTwo Menu, Add, Data Basic, MainMenuVisual1
Menu, ADataTwo Menu, Add, Cast, MainMenuVisual1
Menu, ADataTwo Menu, Add, HousePrint 3, MainMenuVisual1

Menu, Two Menu, Add, Data, :ADataTwo Menu

Menu, String Two Menu, Add, Work with String, MainMenuVisual2
Menu, String Two Menu, Add, StringPrString 2, MainMenuVisual2
Menu, String Two Menu, Add, StringPrString 3, MainMenuVisual2

Menu, Two Menu, Add, String, :String Two Menu

Menu, Double Two Menu, Add, DoublePrint 1, MainMenuVisual3
Menu, Double Two Menu, Add, DoublePrint 2, MainMenuVisual3
Menu, Double Two Menu, Add, DoublePrint 3, MainMenuVisual3

Menu, Two Menu, Add, Double, :Double Two Menu

Menu, Dynamic Two Menu, Add, DynamicPrint 1, MainMenuVisual4
Menu, Dynamic Two Menu, Add, DynamicPrint 2, MainMenuVisual4
Menu, Dynamic Two Menu, Add, DynamicPrint 3, MainMenuVisual4

Menu, Two Menu, Add, Dynamic, :Dynamic Two Menu

Menu, Convert Two Menu, Add, ConvertPrint 1, MainMenuVisual5
Menu, Convert Two Menu, Add, ConvertPrint 2, MainMenuVisual5
Menu, Convert Two Menu, Add, ConvertPrint 3, MainMenuVisual5

Menu, Two Menu, Add, Convert, :Convert Two Menu

Menu, VScde, Add, DataType, :Two Menu



Menu, VScde, Add, Close, MainMenu2Label

return

^!p::
Menu, VScde, Show
return


MainMenuLabel:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\BasicPart\String.Operatros.Metods\String.Operatros.Metods.png
} else if (A_ThisMenuItemPos = 2) {
	Run E:\GlobalLibrary\VisualStudio\BasicPart\LogicOperators\LogicOperators.png
	
}else if (A_ThisMenuItemPos = 3) {
	Run E:\GlobalLibrary\VisualStudio\LogicOperators\Ifelse.cs
}else if (A_ThisMenuItemPos = 4) {
	 Run E:\GlobalLibrary\VisualStudio\Array\Array.cs
}else if (A_ThisMenuItemPos = 5) {
	 Run E:\GlobalLibrary\VisualStudio\Other\Recursia\Recursia.cs
}else if (A_ThisMenuItemPos = 6) {
	 Run E:\GlobalLibrary\ShaderLibrary\Afina\TriPlanarMaterial\TRIPLANAR.png
}else if (A_ThisMenuItemPos = 7) {
	 Run E:\GlobalLibrary\ShaderLibrary\Afina\TriPlanarMaterial\Radius.png
}else if (A_ThisMenuItemPos = 8) {
	 Run E:\GlobalLibrary\ShaderLibrary\Other\ChanellPacking\AdvanceWorkChannel.png
}else if (A_ThisMenuItemPos = 9) {
	 Run E:\GlobalLibrary\VisualStudio\Other\Console\Console.cs
}else if (A_ThisMenuItemPos = 10) {
	 Run E:\GlobalLibrary\VisualStudio\Other\Console\Console.cs
}
return


MenuHandler:
return

SubMenu1Label:
If (A_ThisMenuItemPos = 1) {
	Run, E:\GlobalLibrary\VisualStudio\Loop\While\Whilel.cs
} else if (A_ThisMenuItemPos = 2) {
	Run, E:\GlobalLibrary\VisualStudio\Loop\DoWhile\DoWhile.cs
}else if (A_ThisMenuItemPos = 3) {
	Run, E:\GlobalLibrary\VisualStudio\Loop\For\For.cs
}else if (A_ThisMenuItemPos = 4) {
	Run, E:\GlobalLibrary\VisualStudio\Loop\InsertLoop\Nestedloop.cpp
}
return

SubMenu2Label:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\LogicOperators\Switch.cs
} else if (A_ThisMenuItemPos = 2) {
	Run, E:\GlobalLibrary\VisualStudio\LogicOperators\&.cs
}
return

SubMenu3Label:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\Array\Array.cs
} else if (A_ThisMenuItemPos = 2) {
	Run, E:\GlobalLibrary\VisualStudio\Array\ArrayLoop.cs
}
else if (A_ThisMenuItemPos = 3) {
	Run, E:\GlobalLibrary\VisualStudio\Array\Array2D.cs
}
else if (A_ThisMenuItemPos = 4) {
	Run, E:\GlobalLibrary\VisualStudio\Array\SharpArray.cs
}
else if (A_ThisMenuItemPos = 5) {
	Run, E:\GlobalLibrary\VisualStudio\Array\Array3D.cs
}
else if (A_ThisMenuItemPos = 6) {
	Run, E:\GlobalLibrary\VisualStudio\Array\ArrayMetods.cs
}
return


SubMenu4Label:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\Other\С#Cokie\С#Cokie.cs
} else if (A_ThisMenuItemPos = 2) {
	Run, E:\GlobalLibrary\VisualStudio\LogicOperators\&.cs
}
return


SubMenu5Label:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\DOM\DOMelement.cs
} else if (A_ThisMenuItemPos = 2) {
	Run, E:\GlobalLibrary\VisualStudio\LogicOperators\&.cs
}
return

SubMenu6Label:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\DOM\DOMelement.cs
} else if (A_ThisMenuItemPos = 2) {
	Run, E:\GlobalLibrary\VisualStudio\LogicOperators\&.cs
}
return

;---------------------------------------

MainMenuStudio1:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\Class.Object.Metods\ConceptOfMetods.cs
} else if (A_ThisMenuItemPos = 2) {
	Run E:\GlobalLibrary\VisualStudio\Class.Object.Metods\CallBack.cs
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return

MainMenuStudio2:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\Class.Object.Metods\Class\ClassKonstructor.cs
} else if (A_ThisMenuItemPos = 2) {
	MsgBox, you press button 2
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return

MainMenuStudio3:
If (A_ThisMenuItemPos = 1) {
	Run	E:\GlobalLibrary\VisualStudio\Class.Object.Metods\Ref.Value.Stack\Ref.Value.Stack.cs
} else if (A_ThisMenuItemPos = 2) {
	Run E:\GlobalLibrary\VisualStudio\Class.Object.Metods\Ref.Value.Stack\Null.cs
} else if (A_ThisMenuItemPos = 3) {
	Run E:\GlobalLibrary\VisualStudio\Class.Object.Metods\Ref.Value.Stack\InParam.cs
}
return

MainMenuStudio4:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\Class.Object.Metods\Object\Object.cs
} else if (A_ThisMenuItemPos = 2) {
	Run E:\GlobalLibrary\VisualStudio\Class.Object.Metods\Object\MetodsObject.cs
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return

MainMenuStudio5:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\DataType\Convert.cs
} else if (A_ThisMenuItemPos = 2) {
	MsgBox, you press button 2
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return

MainMenuStudio:
return
;--------------------------------------

MainMenuVisual1:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\DataType\string\String.cs
} else if (A_ThisMenuItemPos = 2) {
	Run E:\GlobalLibrary\VisualStudio\DataType\cast\Cast.cs
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return

MainMenuVisual2:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\DataType\string\BasicString.cs
} else if (A_ThisMenuItemPos = 2) {
	MsgBox, you press button 2
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return

MainMenuVisual3:
If (A_ThisMenuItemPos = 1) {
	MsgBox, you press button 1
} else if (A_ThisMenuItemPos = 2) {
	MsgBox, you press button 2
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return

MainMenuVisual4:
If (A_ThisMenuItemPos = 1) {
	MsgBox, you press button 1
} else if (A_ThisMenuItemPos = 2) {
	MsgBox, you press button 2
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return

MainMenuVisual5:
If (A_ThisMenuItemPos = 1) {
	Run E:\GlobalLibrary\VisualStudio\DataType\Convert.cs
} else if (A_ThisMenuItemPos = 2) {
	MsgBox, you press button 2
} else if (A_ThisMenuItemPos = 3) {
	MsgBox, you press button 3
}
return


MainMenuVisual:
return



MainMenu2Label:

return


;________________________________Gui_____________________________________________

#IfWinActive ahk_exe Code.exe

!/::
send,!+a
Return
; !e::
; send,^1
; Return
; !d::
; send,^2
; Return
; !s::
; send,^3
; Return
; !f::
; send,^4
; Return


#IfWinActive









