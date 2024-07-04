#Mongo-Tools
$baseTag = "matteosp/mongo-tools"
$relTag = "100.9.4"
docker build . -f ".\DockerFiles\Mongo\DatabaseTools\$relTag" -t $baseTag -t "$baseTag`:latest" -t "$baseTag`:$relTag"
docker push $baseTag
docker push "$baseTag`:latest"
docker push "$baseTag`:$relTag"

#PgClient
$baseTag = "matteosp/pg-client"
$relTag = "16"
docker build . -f ".\DockerFiles\Postgres\Client\$relTag" -t $baseTag -t "$baseTag`:latest" -t "$baseTag`:$relTag"
docker push $baseTag
docker push "$baseTag`:latest"
docker push "$baseTag`:$relTag"

#Logstash
Invoke-WebRequest -uri "https://download.microsoft.com/download/9/e/9/9e97cef4-4c64-484c-bd1b-192147912c47/enu/sqljdbc_12.6.3.0_enu.zip" -OutFile "sqljdbc_12.6.3.0_enu.zip"
Expand-Archive ".\sqljdbc_12.6.3.0_enu.zip"

$baseTag = "matteosp/logstash"
$relTag = "20240704"
docker build . -f ".\DockerFiles\logstash\$relTag" -t $baseTag -t "$baseTag`:latest" -t "$baseTag`:$relTag"
docker push $baseTag
docker push "$baseTag`:latest"
docker push "$baseTag`:$relTag"