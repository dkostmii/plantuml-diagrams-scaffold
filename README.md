# plantuml-diagrams-scaffold

This project contains scaffold for PlantUML diagrams project
using PowerShell scripts.

## Features

- downloads PlantUML automatically
- runs PlantUML with progress indicator
- fails fast

## How to use

1. Clone this repository
2. Ensure Java and PS Core is installed, and
everything is accessible from your shell
3. Using PS Core (`pwsh` command) start [`.\Build-Diagrams.ps1`](./Build-Diagrams.ps1)
script and check the contents of `Build/` directory.

    PlantUML is downloaded into `Tools/` directory.

Scaffold includes example `HelloWorld` diagram with `amiga` theme applied.

