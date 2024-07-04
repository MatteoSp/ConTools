$docLabel = "org.opencontainers.image.documentation"
$docLabelValue = "https://github.com/MatteoSp/ConTools/blob/main/README.md"
$descLabel = "org.opencontainers.image.description"

$folder = ".\sqljdbc_12.6.3.0_enu"
$zipFile = "$folder.zip"

if ((Test-Path $folder) -eq $true) { Remove-Item $folder -Recurse -Force }
if ((Test-Path $zipFile) -eq $true) { Remove-Item $zipFile }

Invoke-WebRequest -uri "https://download.microsoft.com/download/9/e/9/9e97cef4-4c64-484c-bd1b-192147912c47/enu/sqljdbc_12.6.3.0_enu.zip" -OutFile $zipFile
Expand-Archive $zipFile

Copy-Item .\sqljdbc_12.6.3.0_enu\sqljdbc_12.6\enu\jars\mssql-jdbc-12.6.3.jre8.jar . -Force
Copy-Item .\sqljdbc_12.6.3.0_enu\sqljdbc_12.6\enu\jars\mssql-jdbc-12.6.3.jre11.jar . -Force

$baseTag = "matteosp/logstash"
$relTag = "20240704"
$readme = Get-Content .\Readme.md

docker build . -f $relTag -t $baseTag -t "$baseTag`:latest" -t "$baseTag`:$relTag" --label "$docLabel=$docLabelValue" --label "$descLabel=$readme"
docker push $baseTag
docker push "$baseTag`:latest"
docker push "$baseTag`:$relTag"