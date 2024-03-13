Function Invoke-Keep() {
    <#
    .SYNOPSIS
    Implement the keep operation on collections.
    
    .DESCRIPTION
    Given an array, apply the predicate on each element and return an array of elements where the predicate is true.

    .PARAMETER Data
    Collection of data to filter through.

    .PARAMETER Predicate
    The predicate to operate on the data.
    
    .EXAMPLE
    $IsNegative = { param($num) $num -lt 0 }
    Invoke-Keep -Data @(0, -2, 4, 8, -16) -Predicate $IsNegative
    Return: @(-2, -16)
    #>
    [CmdletBinding()]
    Param(
        [Object[]]$Data,
        [ScriptBlock]$Predicate
    )

    $kept = @()

    foreach ($item in $Data) {
        if (& $Predicate $item) {
            $kept += , @($item)
        }
    }

    return $kept

    Throw "Please implement this function"
}

Function Invoke-Discard() {
    <#
    .SYNOPSIS
    Implement the discard operation on collections.
    
    .DESCRIPTION
    Given an array, apply the predicate on each element and return an array of elements where the predicate is false.

    .PARAMETER Data
    Collection of data to filter through.

    .PARAMETER Predicate
    The predicate to operate on the data.

    .EXAMPLE
    $IsNegative = { param($num) $num -lt 0 }
    Invoke-Discard -Data @(0, -2, 4, 8, -16) -Predicate $IsNegative
    Return: @(0, 4, 8)
    #>
    [CmdletBinding()]
    Param(
        [Object[]]$Data,
        [ScriptBlock]$Predicate
    )

    $discarded = @()

    foreach ($item in $Data) {
        if (-not (& $Predicate $item)) {
            $discarded += , @($item)
        }
    }

    return $discarded

    Throw "Please implement this function"
}