Add-Type user32_dll @'
    [DllImport("user32.dll")]
    public static extern short GetAsyncKeyState(int vKey);
'@ -namespace System


Add-Type -As System.Windows.Forms

function keyPressed($key) {
    return [user32_dll]::GetAsyncKeyState([Windows.Forms.Keys]::$key) -band 32768
}

Write-Host " __      __       _        _____                       
 \ \    / /      | |      / ____|                      
  \ \  / /__ _ __| |__   | (___  _ __   __ _ _ __ ___  
   \ \/ / _ \ '__| '_ \   \___ \| '_ \ / _` | '_ ` _ \ 
    \  /  __/ |  | |_) |  ____) | |_) | (_| | | | | | |
     \/ \___|_|  |_.__/  |_____/| .__/ \__,_|_| |_| |_|
                                | |                    
                                |_|                    " -ForegroundColor Green
Write-Host ''
Write-Host '       Développé et concéption par Verb' -ForegroundColor Cyan
Write-Host ''
Write-Host '| SABRE [F1] | VISER [F2] | HAGAR [F3] | DOLI [F4] |' -ForegroundColor Red


function sendkeysabre{

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('title of the application window')
    $wshell.SendKeys(":eq sabre")
    $wshell.SendKeys("~")
    $wshell.SendKeys(":eq sabre")
    $wshell.SendKeys("~")
    $wshell.SendKeys(":crier SPAM VERB")
    $wshell.SendKeys("~")
                

}
function sendkeyviser{

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('title of the application window')
  $wshell.SendKeys("x")
                $wshell.SendKeys("~")
                $wshell.SendKeys("x")
                $wshell.SendKeys("~")
                $wshell.SendKeys("x")
                $wshell.SendKeys("~")
                $wshell.SendKeys("x")
                $wshell.SendKeys("~")
                $wshell.SendKeys("x")
                $wshell.SendKeys("~")
                $wshell.SendKeys("x")
                $wshell.SendKeys("~")
                $wshell.SendKeys("x")
                $wshell.SendKeys("~")

                

}
function sendkeyhagar{

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('title of the application window')
    $wshell.SendKeys("x")
                    $wshell.SendKeys("~")
                $wshell.SendKeys(":doliprane")
                $wshell.SendKeys("~")
                $wshell.SendKeys("x")
                $wshell.SendKeys("~")
                $wshell.SendKeys(":boire coca")
                $wshell.SendKeys("~")
                $wshell.SendKeys(":doliprane")
                $wshell.SendKeys("~")
                $wshell.SendKeys(":boire coca")
                $wshell.SendKeys("~")

}
function sendkeydoli{

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('title of the application window')
    $wshell.SendKeys(":doliprane")
    $wshell.SendKeys("~")
    $wshell.SendKeys(":doliprane")
    $wshell.SendKeys("~")
    $wshell.SendKeys(":doliprane")
    $wshell.SendKeys("~")
                

}
$i = 0
$Multiplier = '1'

while ($true) {
    $sabre = keyPressed "F1"
    $viser = keyPressed "F2"
    $hagar = keyPressed "F3"
    $doli = keyPressed "F4"

if ($sabre) {
    sleep .00000001
    sendkeysabre
    $i = $i + 1
}
if ($viser) {
    sleep .00000001
    sendkeyviser
    $i = $i + 1
}
if ($hagar) {
    sleep .00000001
    sendkeyhagar
    $i = $i + 1
}
if ($doli) {
    sleep .00000001
    sendkeydoli
    $i = $i + 1
}
}

$Host.UI.RawUI.FlushInputBuffer()
