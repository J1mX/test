Add-Type -AssemblyName PresentationFramework
$os = Get-WmiObject win32_operatingsystem
#[System.Windows.MessageBox]::Show("Powershell execution",'RCE warning')
#Start-Sleep -Seconds 2 ;
#[console]::beep(5000,500)
#code for speech warnings
Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak("Powershell executed")
(New-Object Media.SoundPlayer "C:\WINDOWS\Media\notify.wav").play();
# Display text in random colours
# $colours = [System.Enum]::GetValues('ConsoleColor')
# Write-Host "Hello" -ForegroundColor ($colours | Get-Random) -BackgroundColor ($colours | Get-Random)
#
# Launch local/remote content
#$file='https://test.com/test.docx'
#$Word=NEW-Object -comobject Word.Application
#$Document=$Word.documents.open($file)
#
# Check Windows Version
# [Environment]::OSVersion.Version).Build
# (Get-Item "HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion").GetValue('ReleaseID')  
#	