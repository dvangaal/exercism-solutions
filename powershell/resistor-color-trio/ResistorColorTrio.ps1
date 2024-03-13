Function Get-ResistorLabel() {
    <#
    .SYNOPSIS
    Implement a function to get the label of a resistor with three color-coded bands.

    .DESCRIPTION
    Given an array of colors from a resistor, decode their resistance values and return a string represent the resistor's label.

    .PARAMETER Colors
    The array repesent the 3 colors from left to right.

    .EXAMPLE
    Get-ResistorLabel -Colors @("red", "white", "blue")
    Return: "29 megaohms"
     #>
    [CmdletBinding()]
    Param(
        [string[]]$Colors
    )
    $Magnitude = " ohms"

    $FirstBand = (Get-Colors).IndexOf($Colors[0])
    $SecondBand = (Get-Colors).IndexOf($Colors[1])
    $ThirdBand = (Get-Colors).IndexOf($Colors[2])

    $Value = ($FirstBand * 10 + $SecondBand) * [Math]::Pow(10, $ThirdBand)
    if ($Value -eq 0){
        $Magnitude = " ohms"
    }
    elseif ($Value % 1000000000 -eq 0){
        $Value = $Value / 1000000000
        $Magnitude = " gigaohms"
    }
    elseif ($Value % 1000000 -eq 0){
        $Value = $Value / 1000000
        $Magnitude = " megaohms"
    }
    elseif ($Value % 1000 -eq 0){
        $Value = $Value / 1000
        $Magnitude = " kiloohms"
    }
    
    return $Value.ToString() + $Magnitude
}
Function Get-Colors() {
    <#
    .SYNOPSIS
    Return the list of all colors.
 
    .DESCRIPTION
    Return the list of all colors.
 
    .EXAMPLE
    Get-Colors
    #>
    
    return @("black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white")
}


