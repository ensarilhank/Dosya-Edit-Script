
#$Date=$args[0];
$Date = "01/19/2020";
$xsltfiles = (Get-ChildItem . *.xslt -rec | WHERE{$_.LastWriteTime -gt ${Date}})
echo "" > output.txt
$filecount=0;

foreach ($file in $xsltfiles)

{

$filecount++

(Get-Content $file.PSPath -Encoding UTF8) | 

ForEach-Object{$_-replace'border-collapse:collapse;',""} |

ForEach-Object{$_-replace'border-collapse: collapse;',""} |

Set-Content $file.PSPath -Encoding UTF8

try {

$filedirectory = $file.Directory-Replace'/',"\"

$command = "java -jar Saxon-HE-9.6.0-10.jar -o:output.html (xml dosyası) "+$filedirectory+"\"+$file+" >> output.txt 2>&1"

iex $command 

Write-Host ""

Write-Host "Kontrol Edildi : $file"

}

catch {

Write-Host "$file adlı dosyada sorun çıktı !"

}

}

Write-Host ""

Write-Host "$filecount Adet Dosya Düzenlendi."

Write-Host ""

$regex = 'java : Error'
$regex2 = 'SXXP0003:'
 
$nl = [Environment]::NewLine
echo "" > rapor.txt

switch -regex -file ".\output.txt" { 

   $regex { "RAPOR : $_ " >> "rapor.txt"}

   $regex2 { "HATA : $_ $nl" >> "rapor.txt"}

}

 Write-Host " " 



pause

