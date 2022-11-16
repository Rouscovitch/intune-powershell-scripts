###########################################################################
##### Set Regional Settings and Keyboard layout for Belgian Computers #####
###########################################################################

$path = "HKU:\"
$HKUInt = 'HKU:\.DEFAULT\Control Panel\International'
$HKUPreload = 'HKU:\.DEFAULT\Keyboard Layout\Preload'
$HKLMPreload = 'HKLM:\SYSTEM\Keyboard Layout\Preload'
$HKCUInt = 'HKCU:\Control Panel\International'
$HKCUPreload = 'HKCU:\Keyboard Layout\Preload' 


#### First, create a new PSDrive to reach "HKEY_USERS" ####
if (-not (Test-Path $path)){
New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS
}


#### Second, create a function to test if a Registry Value exists ####
Function Test-RegistryValue($regkey, $name) 
{
    try
    {
        $exists = Get-ItemProperty $regkey $name -ErrorAction SilentlyContinue
        Write-Host "Test-RegistryValue: $exists"
        if (($exists -eq $null) -or ($exists.Length -eq 0))
        {
            return $false
        }
        else
        {
            return $true
        }
    }
    catch
    {
        return $false
    }
}

#### Set the keys Values for the default users ####
Set-ItemProperty -Path $HKUInt -Name iCountry 32
Set-ItemProperty -Path $HKUInt -Name LocalName en-BE
Set-ItemProperty -Path $HKUInt -Name sCurrency €
Set-ItemProperty -Path $HKUInt -Name sLongDate dddd-MMMM-yyyy
Set-ItemProperty -Path $HKUInt -Name sShortDate dd-MM-yy
Set-ItemProperty -Path $HKUInt -Name sShortTime HH:mm
Set-ItemProperty -Path $HKUInt -Name sTimeFormat HH:mm:ss
Set-ItemProperty -Path $HKUInt -Name sYearMonth "MMMM yyyy"
Set-ItemProperty -Path $HKUInt -Name Name BE
Set-ItemProperty -Path $HKUInt -Name Nation 21
Set-ItemProperty -Path $HKUPreload -Name 1 0000080c
if (Test-RegistryValue($HKUPreload,2)) {
    Remove-ItemProperty -Path $HKUPreload -Name 2  
}



#### Set the key Values for the Local Machine ####
Set-ItemProperty -Path $HKLMPreload -Name 1 0000080c
if (Test-RegistryValue($HKLMPreload,2)) {
    Remove-ItemProperty -Path $HKLMPreload -Name 2  
}


#### Set the Key Values for the Current User ####
Set-ItemProperty -Path $HKCUInt -Name iCountry 32
Set-ItemProperty -Path $HKCUInt -Name LocalName en-BE
Set-ItemProperty -Path $HKCUInt -Name sCurrency €
Set-ItemProperty -Path $HKCUInt -Name sLongDate dddd-MMMM-yyyy
Set-ItemProperty -Path $HKCUInt -Name sShortDate dd-MM-yy
Set-ItemProperty -Path $HKCUInt -Name sShortTime HH:mm
Set-ItemProperty -Path $HKCUInt -Name sTimeFormat HH:mm:ss
Set-ItemProperty -Path $HKCUInt -Name sYearMonth "MMMM yyyy"
Set-ItemProperty -Path $HKCUInt -Name Name BE
Set-ItemProperty -Path $HKCUInt -Name Nation 21
Set-ItemProperty -Path $HKCUPreload -Name 1 0000080c
if (Test-RegistryValue($HKCUPreload,2)) {
    Remove-ItemProperty -Path $HKCUPreload -Name 2  
}
