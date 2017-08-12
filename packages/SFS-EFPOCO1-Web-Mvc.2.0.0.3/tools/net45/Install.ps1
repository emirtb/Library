param($installPath, $toolsPath, $package, $project)
Write-Host "Replacing tokens..."
[xml]$xmlcontent 
$path = [System.IO.Path]::GetDirectoryName($project.FullName)
foreach ($item in $project.ProjectItems){
	Write-Host $item.Name
	if ($item.Name -eq "update.sfs.config"){
		$f = [String]::Format("{0}{1}{2}", $path, "\", $item.Name)
		$xmlcontent  = [xml](Get-Content $f -EA stop)
		Write-Host "---Reading the update file..."
	}
}
$sfs_namespace ="";
$sfs_safenamespace = "";
$replacement_general_wilcard = "";
foreach ($i in $xmlcontent.SelectNodes("/UpdateModel/General"))
{
	Write-Host "---reading token values..."
    $sfs_namespace = $i.Namespace
    $sfs_safenamespace = $i.SafeNamespace
}  

Write-Host "The namespace is " $sfs_namespace
Write-Host "The safe namespace is " $sfs_safenamespace

$replacement_general_wilcard = $xmlcontent.SelectNodes("/UpdateModel/Replacements").GeneralTokens

Write-Host "The general tokens wilcard are " $replacement_general_wilcard
foreach ($wil in $replacement_general_wilcard.Split(","))
{
    Write-Host "Work in " $wil + " wilcard"
   
	
   $test= [String]::Format("{0}{2}{1}", $path, $wil.Trim(), "\")
   Write-Host $test
   $files = Get-ChildItem $test
   foreach($file in $files){
     Write-Host $file
        echo "`$namespace`$"
        $cont = (Get-Content $file)
        Write-Host $cont
        $cont= $cont.Replace("`$namespace`$", $sfs_namespace)
         Write-Host $tt
         $cont=  $cont.Replace("`$safenamespace`$", $sfs_safenamespace)
         Write-Host $cont
         Set-Content $file $cont
  
   }

}