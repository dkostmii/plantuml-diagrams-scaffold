param(
    [string] $plantumlFile = "plantuml.jar"
)

$plantumlUrl = "https://github.com/plantuml/plantuml/releases/download/v1.2023.2/plantuml-1.2023.2.jar";

if ( -not (Test-Path $plantumlFile -PathType Leaf)) {
    Write-Output "Downloading $plantumlFile...";
    Invoke-WebRequest $plantumlUrl -OutFile $plantumlFile -ErrorAction Stop | Out-Null
    Write-Output "Done.";
}
else {
    Write-Output "$plantumlFile already exists";
    Write-Output "Doing nothing.";
}

