# Creating a powershell script for displaying data in a chart (From .Net Library)

# Email: hinga.muchoki@strathmore.edu


# We use a cmdlet called Add-Type (TO ADD ASSEMBLY)

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Windows.Forms.DataVisualization

# 1.  Create a Windows Form

$Form = New-Object System.Windows.Forms.Form 
$Form.Width = 600
$Form.Height = 600

$Form.Controls.Add($Chart)

    # 5. Additional info for the Chart
$Chart.Titles.Add("Population of 5 Counties in Kenya ")
$ChartArea.AxisX.Title = "5 Kenyan Counties"
$ChartArea.AxisY.Title = "Population Count"
    
$Form.ShowDialog()

# 2. Create a chart

$Chart = New-Object System.Windows.Forms.DataVisualization.Charting.Chart
$Chart.Width = 500
$Chart.Height = 400
$Chart.Left = 40

# 3. Creating The Chart Area

$ChartArea = New-Object System.Windows.Forms.DataVisualization.Charting.ChartArea
$Chart.ChartAreas.Add($ChartArea)

# 4. Adding Data to The Chart (Using Hash tables)

$Counties = @{
Kajiado = 687312; Kisumu = 968909; Lamu = 101539; Mombasa = 939370; Nairobi = 3138369 
}
 
$Chart.Series.Add("Data")
$Chart.Series["Data"].Points.DataBindXY($Counties.Keys,$Counties.Values) 