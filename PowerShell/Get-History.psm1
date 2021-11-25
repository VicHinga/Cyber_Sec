Function Get-History{
	[CmdletBinding()] # allow the use of 7 common parameters in PowerShell functions
	Param([Parameter(Mandatory = $false)] $Search) # The input for the cmdlet
	import-module PSSQLite # Library for SQL Queries

# Path to the sql db file for Mozilla 

	$db = "C:\users\POWER\AppData\Roaming\Mozilla\firefox\Profiles\3b0uarc1.default-release\places.sqlite"
	if($search){
		Invoke-SqliteQuery -DataSource $db -Query "SELECT url FROM moz_places WHERE url LIKE '%$search%'"
}
	else{
		Invoke-SqliteQuery -DataSource $db -Query "SELECT * FROM moz_places"
}		
} 