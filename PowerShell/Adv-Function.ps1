# Advanced Functions in PowerShell
# The function comes with many capabilities

Function Adv-Function{

# The functions in line 7 and 8 makes the function advanced
[CmdletBinding()]
Param([Parameter(Mandatory=$True)]$a, $b)

# [Parameter(Mandatory=$True)] Make the parameter mandatory so that without it the function may not run

Write-Host "This is an advanced function"
Write-Host "$a $b"

}