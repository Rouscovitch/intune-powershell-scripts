####################################
### Remove unwanted shortcuts ######
####################################

#### Set shortcut(s) path as variable #### 
$Skype = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business.lnk'
$OneDrive = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk'
$OneDriveBusiness = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OneDrive for Business.lnk'

#### Add the variable(s) created to the list ####
$Shortcuts = @($Skype,$OneDrive,$OneDriveBusiness)

foreach($shortcut in $Shortcuts){
    if (Test-Path $shortcut){
        Remove-Item -path $shortcut -Force -Recurse
    }
}
