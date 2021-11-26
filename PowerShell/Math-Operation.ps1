# Define " Function " then give it a name

Function Math-Operation{

# " param() " is necesary for input units to get values from the user
param(

[float]$N1, [float]$N2

)

$Add = $N1 + $N2
$Sub = $N1 - $N2
$Div = $N1 / $N2
$Mul = $N1 * $N2

Write-Host "Performed Addition: $Add"
Write-Host "Performed Subtraction: $Sub"
Write-Host "Performed Divition: $Div"
Write-Host "Performed Multiplication: $Mul"

}


# How to Run
# Examole:- Math-Operation -N1 4.76 -N2 5.84
# The above command can be run from the ISE