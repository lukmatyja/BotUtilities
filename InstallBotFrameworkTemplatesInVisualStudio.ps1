$url = "http://aka.ms/bf-bc-vstemplate"
$outputBot = $env:USERPROFILE + "\Downloads\Bot Application.zip"
Write-Host Downloading template to $outputBot
Invoke-WebRequest -Uri $url -OutFile $outputBot

$url = "https://aka.ms/bf-cortanaskill-template"
$outputBotCortana = $env:USERPROFILE + "\Downloads\Bot Application - Cortana Skill.zip"
Write-Host Downloading template to $outputBotCortana
Invoke-WebRequest -Uri $url -OutFile $outputBotCortana

Write-Host Copy files to template directory
Copy-Item $outputBot -Destination "$env:USERPROFILE\Documents\Visual Studio 2017\Templates\ProjectTemplates\Visual C#\Bot Application.zip"
Copy-Item $outputBot -Destination "$env:USERPROFILE\Documents\Visual Studio 2017\Templates\ProjectTemplates\Visual C#\Bot Application - Cortana Skill.zip"