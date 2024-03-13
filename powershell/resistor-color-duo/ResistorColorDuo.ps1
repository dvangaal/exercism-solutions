Function Get-ColorCodeValue() {
    <#
    .SYNOPSIS
    Translate a list of colors to their corresponding color code values.

    .DESCRIPTION
    Given 2 colors, take the first one and times it by 10 and add the second color to it.

    .PARAMETER Colors
    The colors to translate to their corresponding color codes.

    .EXAMPLE
    Get-ColorCodeValue -Colors @("black", "brown")
    #>
    [CmdletBinding()]
    Param(
        [string[]]$Colors
    )
    $FirstBand = (Get-Colors).IndexOf($Colors[0])
    $SecondBand = (Get-Colors).IndexOf($Colors[1])
    return $FirstBand * 10 + $SecondBand
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