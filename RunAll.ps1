# Edit your server name, e.g. "DESKTOP-5\SQLEXPRESS" 
$ServerName = "ENTER_SERVER_NAME"
$UserName = "ENTER_SQL_SERVER_USERNAME"
$Password = "ENTER_SQL_SERVER_PASSWORD"

$files = Get-ChildItem -Path "./Models" -Filter *.sql

foreach($file in $files){
	$outputFile = [System.IO.Path]::ChangeExtension($file.FullName, ".txt")
	
	sqlcmd -S $ServerName -U $UserName -P $Password -i $file.FullName > $outputFile
}