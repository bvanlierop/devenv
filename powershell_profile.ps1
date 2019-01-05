# Add-PoshGitToProfile -StartSshAgent
# $Global:GitPromptSettings.BranchBehindAndAheadDisplay = "Compact"
# Enable-GitColors

# General actions
function edit ($file) { & "notepad++.exe" $file }
function vim () { & "${env:ProgramFiles(x86)}\Vim\vim74\gvim.exe" $args }
function sln { ls -Filter "*.sln" | select -first 1 | %{& ".\$_"} }
function explore { "explorer.exe `"$(pwd)`"" | iex }
function wipe { $Host.UI.RawUI.ForegroundColor = "white"; $Host.UI.RawUI.BackgroundColor = "black"; clear; }
function touch ($file) { echo "" >> $file; }
function nuke { git reset --hard HEAD; git reset --hard origin/master; git clean -xdf;}

$Host.UI.RawUI.ForegroundColor = "white"; $Host.UI.RawUI.BackgroundColor = "black";

# Always start in my dev base folder
cd C:\
cd dev
