param (
    [Parameter(Mandate=$true)]
    [ValidateSet("8", "21")]
    [string]$Version
)

if ($Version -eq "21") {
    $env:JAVA_HOME = "C:\Program Files\Java\jdk21liberica"
} else {
    $env:JAVA_HOME = "C:\Program Files\Java\jdk8u412"
}

$env:Path = "$env:JAVA_HOME\bin;" + ($env:Path -replace "[^;]*\\Java\\[^;]*\\bin;?", "")

Write-Host "Cambiado exitosamente a Java $Version" -ForegroundColor Green
Write-Host "JAVA_HOME: $env:JAVA_HOME"
java -version