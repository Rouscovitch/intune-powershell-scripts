####################################
### Remove unwanted shortcuts ######
####################################

### Define the path to the folder to clean ###
$Path = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\'

### Shortcuts to look for in the given path ###
$ShortCuts = 'Skype for Business.lnk','OneDrive.lnk','OneDrive for Business.lnk'

foreach($shortcut in $Shortcuts){
    if (Test-Path "$Path$shortcut"){
        Remove-Item -path "$Path$shortcut" -Force -Recurse
    }
}
