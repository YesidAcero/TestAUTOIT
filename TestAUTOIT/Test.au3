#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=0000080A)  ---

#region --- Internal functions Au3Recorder Start ---

;#include <IE.au3>
#include <Excel.au3>
#include <MsgBoxConstants.au3>

Func _Au3RecordSetup()
Opt('WinWaitDelay',100)
Opt('WinDetectHiddenText',1)
Opt('MouseCoordMode',0)
Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')
If $aResult[1] <> '0000080A' Then
  MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(0000080A->' & $aResult[1] & ')')
EndIf

EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---



Local $sWorkbook = "C:\Test\Lista de Productos.xlsx"
Local $oExcel = _Excel_Open()
Local $bReadOnly = False
Local $bVisible = True
Local $var = 1


Local $oWorkbook = _Excel_BookOpen($oExcel, $sWorkbook, $bReadOnly, $bVisible)



Local $sResult1 = _Excel_RangeRead($oWorkbook, Default, "A3")
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Dato 1 Capturado", "Error reading from workbook." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
MsgBox($MB_SYSTEMMODAL, "Dato 1 Capturado", "Data successfully read." & @CRLF & "Value: " & $sResult1,2)

Local $sResult2 = _Excel_RangeRead($oWorkbook, Default, "A4")
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Dato 2 Capturado", "Error reading from workbook." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
MsgBox($MB_SYSTEMMODAL, "Dato 2 Capturado", "Data successfully read." & @CRLF & "Value: " & $sResult2,2)

Local $sResult3 = _Excel_RangeRead($oWorkbook, Default, "A5")
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Dato 2 Capturado", "Error reading from workbook." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
MsgBox($MB_SYSTEMMODAL, "Dato 2 Capturado", "Data successfully read." & @CRLF & "Value: " & $sResult3,2)

;BrowserML---------------------------

ShellExecute("chrome.exe", "http://www.google.com --new-window --start -")
_WinWaitActivate("Google - Google Chrome","")
Sleep(1000)

Send("mercadolibre{ENTER}")
_WinWaitActivate("mercadolibre - Buscar con Google - Google Chrome","")
Sleep(1000)

MouseClick("left",353,339,1)
Sleep(1000)

;Escribir búsqueda
_WinWaitActivate("(1) Mercado Libre Colombia - Google Chrome","Chrome Legacy Window")
MouseClick("left",396,146,1)
Send($sResult1)
Send("{ENTER}")

_WinWaitActivate("(1) Teclado Lenovo G40 30 G40 45 G40 70 G40 80 Flex 2 14 | MercadoLibre.com.co - Google Chrome","")
MouseClick("left",723,413,2)
Sleep(1000)
Send("{CTRLDOWN}c{CTRLUP}")
Local $PrecioML1 = ClipGet()
MsgBox($MB_SYSTEMMODAL, "Valor Capturado", "Value: " & $PrecioML1,2)

ProcessClose("chrome.exe")
;------------------------------------------------------------------------------------------------

ShellExecute("chrome.exe", "http://www.google.com --new-window --start -")
_WinWaitActivate("Google - Google Chrome","")
Sleep(1000)

Send("mercadolibre{ENTER}")
_WinWaitActivate("mercadolibre - Buscar con Google - Google Chrome","")
Sleep(1000)

MouseClick("left",353,339,1)
Sleep(1000)

;Escribir búsqueda
_WinWaitActivate("(1) Mercado Libre Colombia - Google Chrome","Chrome Legacy Window")
MouseClick("left",396,146,1)
Send($sResult2)
Send("{ENTER}")

_WinWaitActivate("(1) Memoria Ram Ddr3 8gb Pc Corsair Vengeance 1600 Mhz Pc3 12800 | MercadoLibre.com.co - Google Chrome","")
MouseClick("left",732,445,2)
Sleep(1000)
Send("{CTRLDOWN}c{CTRLUP}")
Local $PrecioML2 = ClipGet()
MsgBox($MB_SYSTEMMODAL, "Valor Capturado", "Value: " & $PrecioML2,2)

ProcessClose("chrome.exe")

;------------------------------------------------------------------------------------------------

ShellExecute("chrome.exe", "http://www.google.com --new-window --start -")
_WinWaitActivate("Google - Google Chrome","")
Sleep(1000)

Send("mercadolibre{ENTER}")
_WinWaitActivate("mercadolibre - Buscar con Google - Google Chrome","")
Sleep(1000)

MouseClick("left",353,339,1)
Sleep(1000)

;Escribir búsqueda
_WinWaitActivate("(1) Mercado Libre Colombia - Google Chrome","Chrome Legacy Window")
MouseClick("left",396,146,1)
Send($sResult3)
Send("{ENTER}")

_WinWaitActivate("(1) Impresora Multifuncional Epson Ecotank L3110 | MercadoLibre.com.co - Google Chrome","")
MouseClick("left",706,533,2)
Sleep(1000)
Send("{CTRLDOWN}c{CTRLUP}")
Local $PrecioML3 = ClipGet()
ClipPut("")
MsgBox($MB_SYSTEMMODAL, "Valor Capturado", "Value: " & $PrecioML3,2)

ProcessClose("chrome.exe")

_Excel_RangeWrite($oWorkbook, Default,$PrecioML1, "B3")
_Excel_RangeWrite($oWorkbook, Default,$PrecioML2, "B4")
_Excel_RangeWrite($oWorkbook, Default,$PrecioML3, "B5")

;BrowserAMZ-------------------------------------
Local $AMZ1 = 0
Local $AMZ2 = 0
Local $PrecioAMZ3 = 0

ShellExecute("chrome.exe", "http://www.google.com --new-window --start -")
_WinWaitActivate("Google - Google Chrome","")
Sleep(1000)

Send("amazon.com{ENTER}")
_WinWaitActivate("amazon.com - Buscar con Google - Google Chrome","Chrome Legacy Window")
Sleep(1000)

MouseClick("left",365,344,1)
Sleep(1000)

;Escribir búsqueda
_WinWaitActivate("Amazon.com: Compras en Línea de Electrónicos, Ropa, Computadoras, Libros, DVDs y más - Google Chrome","Chrome Legacy Window")
MouseClick("left",396,146,1)
Send($sResult1)
Send("{ENTER}")

_WinWaitActivate("Amazon.com : Teclado Lenovo G40-30 G40-45 G40-70 G40-80 Flex 2 14 - Google Chrome","")
MouseClick("left",717,316,1)
_WinWaitActivate("Amazon.com: Teclado de repuesto compatible con Lenovo ideapad 330S-15 330S-15ARR 330S-15AST 330S-15IKB 330S-15ISK Series portátil sin retroiluminación: Computers & Accessories - Google Chrome","")
MouseClick("left",1331,275,2)
Sleep(5000)
Send("{CTRLDOWN}c{CTRLUP}")
Send("{CTRLDOWN}c{CTRLUP}")
Send("{CTRLDOWN}c{CTRLUP}")

$AMZ1 = ClipGet()
ClipPut("")
MsgBox($MB_SYSTEMMODAL, "Valor Capturado", "Value: " & $AMZ1,2)

ProcessClose("chrome.exe")
;------------------------------------------------------------------------------------------------

ShellExecute("chrome.exe", "http://www.google.com --new-window --start -")
_WinWaitActivate("Google - Google Chrome","")
Sleep(1000)

Send("amazon.com{ENTER}")
_WinWaitActivate("amazon.com - Buscar con Google - Google Chrome","Chrome Legacy Window")
Sleep(1000)

MouseClick("left",365,344,1)
Sleep(1000)

;Escribir búsqueda
_WinWaitActivate("Amazon.com: Compras en Línea de Electrónicos, Ropa, Computadoras, Libros, DVDs y más - Google Chrome","Chrome Legacy Window")
MouseClick("left",396,146,1)
Send($sResult2)
Send("{ENTER}")

_WinWaitActivate("Amazon.com : Memoria Ram Ddr3 8gb Pc Corsair Vengeance 1600 Mhz Pc3 12800 - Google Chrome","")
MouseClick("left",840,364,1)
_WinWaitActivate("Amazon.com: Corsair Vengeance LP 32 GB (4 x 8GB) DDR3 1600 MHz (PC3 12800) Desktop Memory 1,5 V: Computers & Accessories - Google Chrome","")
MouseClick("left",1342,363,2)
Sleep(3000)
Send("{CTRLDOWN}c{CTRLUP}")
Send("{CTRLDOWN}c{CTRLUP}")
Send("{CTRLDOWN}c{CTRLUP}")

$AMZ2 = ClipGet()
MsgBox($MB_SYSTEMMODAL, "Valor Capturado", "Value: " & $AMZ2,2)

ProcessClose("chrome.exe")
;------------------------------------------------------------------------------------------------

ShellExecute("chrome.exe", "http://www.google.com --new-window --start -")
_WinWaitActivate("Google - Google Chrome","")
Sleep(1000)

Send("amazon.com{ENTER}")
_WinWaitActivate("amazon.com - Buscar con Google - Google Chrome","Chrome Legacy Window")
Sleep(1000)

MouseClick("left",365,344,1)
Sleep(1000)

;Escribir búsqueda
_WinWaitActivate("Amazon.com: Compras en Línea de Electrónicos, Ropa, Computadoras, Libros, DVDs y más - Google Chrome","Chrome Legacy Window")
MouseClick("left",396,146,1)
Send($sResult3)
Send("{ENTER}")

_WinWaitActivate("Amazon.com : Impresora Multifuncional Epson Ecotank L3110 - Google Chrome","")
MouseClick("left",701,369,1)
_WinWaitActivate("Amazon.com: Epson ReadyPrint T20 Impresora térmica directa - Monocromo - Escritorio - Impresión de recibos (C31CB10021): Office Products - Google Chrome","")
MouseClick("left",1337,282,2)
Sleep(3000)
Send("{CTRLDOWN}c{CTRLUP}")
Send("{CTRLDOWN}c{CTRLUP}")
Send("{CTRLDOWN}c{CTRLUP}")

$PrecioAMZ3 = ClipGet()
ClipPut("")
MsgBox($MB_SYSTEMMODAL, "Valor Capturado", "Value: " & $PrecioAMZ3,2)

ProcessClose("chrome.exe")

;---------------------------------------------------------------------------------------------


_Excel_RangeWrite($oWorkbook, Default,$AMZ1, "C3")
_Excel_RangeWrite($oWorkbook, Default,$AMZ2, "C4")
_Excel_RangeWrite($oWorkbook, Default,$PrecioAMZ3, "C5")

_Excel_BookSave($oWorkbook)
_Excel_Close($oWorkbook)


#endregion --- Au3Recorder generated code End ---
