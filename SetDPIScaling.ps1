### Set DPI Scaling to 125% ###


### Create a function to test a Key value
function Test-RegistryValue {

param (
    [parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]$Path,

    [parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]$Value

)

try {Get-ItemProperty -Path $Path | Select-Object
    -ExpandProperty $Value -ErrorACtion Stop | Out-Null
    return $true
}
    catch {
    return $false
    }

}


$Path = "HKCU:\Control Panel\Desktop"
$LP = "LogPixels"
$W8dpi = "Win8DpiScaling"

### Create/update "LogPixels" value

if (Test-RegistryValue -path $Path -Value $LP) {
    Set-ItemProperty -Path $Path -Name $LP -Value "120"
    }else{
    New-ItemProperty -Path $Path -Name $LP -Value "120" -PropertyType DWord
    }

### Create/update "Win8DpiScaling"

if (Test-RegistryValue -path $Path -Value $W8dpi) {
    Set-ItemProperty -Path $Path -Name $W8dpi -Value "1"
    }else{
    New-ItemProperty -Path $Path -Name $W8dpi -Value "1"
    }
