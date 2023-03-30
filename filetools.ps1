function Compare-Items {
    param (
        [string]$FirstFilePath,
        [string]$SecondFilePath
    )

    $FirstFilePathFiles = Get-ChildItem -Path $FirstFilePath -Depth 50
    $SecondFilePathFiles = Get-ChildItem -Path $SecondFilePath -Depth 50

    return Compare-Object $FirstFilePathFiles $SecondFilePathFiles -Property name,size,lastwritetime
}