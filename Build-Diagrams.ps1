$plantumlHome = "Tools";
$plantumlJarPath = (Join-Path $plantumlHome "plantuml.jar");

Write-Output "Checking java existence...";
Get-Command java -ErrorAction Stop | Out-Null;

if (-not (Test-Path $plantumlHome -PathType Container)) {
    New-Item $plantumlHome -ItemType Directory | Out-Null;
    ./Get-Plantuml.ps1 -plantumlFile $plantumlJarPath;
}

Write-Output "Building diagrams...";

java -jar $plantumlJarPath **.pu -o Build -progress -failfast

Write-Output "`nDone.";

