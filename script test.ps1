# Define the source and destination folders
$SourceFolder = "C:\nls-text-encyclopaediaBritannica"
$DestinationFolder = "C:\nls text sorted"

# Create the destination folder if it doesn't exist
if (!(Test-Path -Path $DestinationFolder)) {
    New-Item -ItemType Directory -Path $DestinationFolder
}

# List of files to move
$FileNames = @(
    "144133902.txt",
    "144133903.txt",
    "144850366.txt",
    "144850367.txt",
    "144850368.txt",
    "144850370.txt",
    "144850373.txt",
    "144850374.txt",
    "190273291.txt",
    "149977338.txt",
    "149977873.txt",
    "191253801.txt",
    "194167545.txt",
    "191253802.txt",
    "191253807.txt",
    "191253808.txt",
    "191253809.txt",
    "191253810.txt",
    "191253818.txt",
    "191253819.txt",
    "192545783.txt",
    "192545784.txt",
    "191809865.txt",
    "191809866.txt",
    "192016229.txt",
    "191689063.txt",
    "193108318.txt",
    "192547781.txt",
    "192015835.txt",
    "193696080.txt",
    "193057498.txt",
    "193108319.txt",
    "192016360.txt",
    "193108320.txt",
    "192693395.txt",
    "193057499.txt",
    "192547790.txt",
    "193109112.txt",
    "193108321.txt",
    "192984258.txt",
    "192984259.txt",
    "193057500.txt",
    "192984260.txt",
    "193322698.txt",
    "193696085.txt"
)

# Move each file
foreach ($FileName in $FileNames) {
    $SourcePath = Join-Path -Path $SourceFolder -ChildPath $FileName
    $DestinationPath = Join-Path -Path $DestinationFolder -ChildPath $FileName
    
    if (Test-Path -Path $SourcePath) {
        Move-Item -Path $SourcePath -Destination $DestinationPath
        Write-Host "Moved $FileName to $DestinationFolder"
    } else {
        Write-Host "File $FileName does not exist in $SourceFolder"
    }
}
