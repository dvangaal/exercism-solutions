Function Get-ColorCode() {
    <#
    .SYNOPSIS
    Translate a color to its corresponding color code.

    .DESCRIPTION
    Given a color, return its corresponding color code.

    .PARAMETER Color
    The color to translate to its corresponding color code.

    .EXAMPLE
    Get-ColorCode -Color "black"
    #>
    [CmdletBinding()]
    Param(
        [string]$Color
    )

    New-Variable -Name Black -Value 0 -Option Constant
    New-Variable -Name Brown -Value 1 -Option Constant
    New-Variable -Name Red -Value 2 -Option Constant
    New-Variable -Name Orange -Value 3 -Option Constant
    New-Variable -Name Yellow -Value 4 -Option Constant
    New-Variable -Name Green -Value 5 -Option Constant
    New-Variable -Name Blue -Value 6 -Option Constant
    New-Variable -Name Violet -Value 7 -Option Constant
    New-Variable -Name Grey -Value 8 -Option Constant
    New-Variable -Name White -Value 9 -Option Constant

    switch ($Color) {
        "black" {
            return $Black
        }
        "brown" {
            return $Brown
        }
        "red" {
            return $Red
        }
        "orange" {
            return $Orange
        }
        "yellow" {
            return $Yellow
        }
        "green" {
            return $Green
        }
        "blue" {
            return $Blue
        }
        "violet" {
            return $Violet
        }
        "grey" {
            return $Grey
        }
        "white" {
            return $White
        }
    }
    
    throw "Please implement this function"
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
    
    $ColorCode = @("black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white")
    
    return $ColorCode
    throw "Please implement this function"
}
