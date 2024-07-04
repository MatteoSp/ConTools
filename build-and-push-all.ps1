# Mongo-Tools
Push-Location .\DockerFiles\Mongo\DatabaseTools
.\build-and-push.ps1
Pop-Location

# PgClient
Push-Location .\DockerFiles\Postgres\Client
.\build-and-push.ps1
Pop-Location

# Logstash
Push-Location .\DockerFiles\logstash
.\build-and-push.ps1
Pop-Location