$docLabel = "org.opencontainers.image.documentation"
$docLabelValue = "https://github.com/MatteoSp/ConTools/blob/main/README.md"
$descLabel = "org.opencontainers.image.description"

$baseTag = "matteosp/pg-client"
$relTag = "16"
$readme = Get-Content .\Readme.md

docker build . -f $relTag -t $baseTag -t "$baseTag`:latest" -t "$baseTag`:$relTag" --label "$docLabel=$docLabelValue" --label "$descLabel=$readme"
docker push $baseTag
docker push "$baseTag`:latest"
docker push "$baseTag`:$relTag"