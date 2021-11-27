# Take Screenshots Function with PowerShell

# We use a cmdlet called Add-Type (TO ADD ASSEMBLY)
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# To capture screen resolution (area) <This is using .Net capabilities or params>
$Screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
$ScreenWidth = $Screen.Width
$ScreenHeight = $Screen.Height
$ScreenLeft = $Screen.Left
$ScreenTop = $Screen.Top

# Type of image you wamt to capture, we want a bitmap
# Convert the assembly into an object and store in a variable

$bitmap = New-Object System.Drawing.Bitmap $ScreenWidth, $ScreenHeight

# Ask the PowerShell function to capture the image and indicate the type
# Store in variable 

$graphic = [System.Drawing.Graphics]::FromImage($bitmap)

# Capture the Image
$graphic.CopyFromScreen($ScreenLeft, $ScreenTop,0,0,$bitmap.Size)

# Save the file in a Location
$bitmap.Save("C:\Users\POWER\Desktop\PowerShellCapture.bmp")