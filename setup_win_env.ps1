# This script sets up Windows development environment

choco install ConsoleZ --confirm
# Under Tabs, paste the path %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe into the “Shell” text box.
choco install git --params='/NoShellIntegration' --confirm
$env:path+='C:\Program Files\Git\cmd'
Write-Output "Git installed"
choco install poshgit -y
refreshenv
Write-Output "Posh Git installed"

# Customize the PowerShell Prompt
# Create new profile
if (!(Test-Path -Path $PROFILE )) { 
	New-Item -Type File -Path $PROFILE -Force 
}

# Install powershell profile
Copy-Item .\powershell_profile.ps1 -Destination $PROFILE -Force

# Configure Git
git config --global user.email "bartvanlierop@gmail.com"
git config --global user.name "bvanlierop"

# Tip: edit profile manually using command:
# 	.:\> notepad $PROFILE
# Reload profile using:
#   .:\> & $profile