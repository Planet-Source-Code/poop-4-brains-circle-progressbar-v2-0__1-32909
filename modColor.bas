Attribute VB_Name = "modColor"
Const ShadeChange = 50

Function GetBlue(CVal) As Long
GetBlue = Int(CVal / 65536)
End Function

Function GetGreen(CVal) As Long
GetGreen = Int((CVal - ((65536) * GetBlue(CVal))) / 255)
End Function

Function GetRed(CVal) As Long
GetRed = CVal - (65536 * GetBlue(CVal) + 256 * GetGreen(CVal))
End Function

Function EndNum(val As Long)
If val < 0 Then val = 0
If val > 255 Then val = 255
End Function

Function GetDarkerColor(CVal As Long) As Long
Dim r As Long, g As Long, b As Long
r = GetRed(CVal)
g = GetGreen(CVal)
b = GetBlue(CVal)
r = r - ShadeChange
g = g - ShadeChange
b = b - ShadeChange
EndNum r
EndNum g
EndNum b
GetDarkerColor = RGB(r, g, b)
End Function
