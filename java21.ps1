$env:JAVA_HOME = "C:\Program Files\Java\jdk21liberica"
$env:Path = "$env:JAVA_HOME\bin;" + ($env:Path -replace "[^;]*\\Java\\[^;]*\\bin;?", "")
Write-Host "Cambiado exitosamente a Java 21 (Liberica)" -ForegroundColor Green
java -version