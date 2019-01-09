# Tweak UI
$shell = $Host.UI.RawUI
$shell.BackgroundColor = "Black"

# Start always at dev
set-location C:\dev

$shell.ForegroundColor = "White"

# Add alias to notepad++
new-item alias:np -value "C:\Program Files\Notepad++\notepad++.exe"

# Add alias to Git Extensions
new-item alias:gitext -value "C:\Program Files (x86)\GitExtensions\GitExtensions.exe"

# Use poshgit
# Install first via: PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force
# or Update via: PowerShellGet\Update-Module posh-git
Enable-GitColors
$Global:GitPromptSettings.BranchBehindAndAheadDisplay = "Compact"
Import-Module posh-git

# Disable beep
Set-PSReadlineOption -BellStyle None

Clear-Host
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
