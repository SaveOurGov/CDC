function Backup-CDC 
{
    [CmdletBinding()]
    param(
    [uri[]]
    $FileList,

    [int]
    $Maximum = 1kb
    )

    begin {
        $rootDataPath = $MyInvocation.MyCommand.Module | Split-Path | Join-Path -ChildPath "Data"
        $ErrorActionPreference = 'continue'
    }

    process {
        $shuffledFileList = $FileList | Get-Random -Count $fileList.Count

        $FilesDownloaded = 0
        $FilesToPrcess = $shuffledFileList.Count
        foreach ($fileUri in $shuffledFileList) {
            if ($Maximum -and ($FilesDownloaded -gt $Maximum)) {
                break
            }
            $filePath = Join-Path $rootDataPath $fileUri.LocalPath
            if (-not (Test-Path $filePath)) {
                try {
                    $newFile = New-Item -ItemType File -Path $filePath  -Force 
                    $newFile | Out-Host
                    Invoke-WebRequest -Uri $fileUri -OutFile $filePath                    
                    Write-Verbose "Downloaded $fileUri [$filesDownloaded / $filesToProcess]" -Verbose
                    if ($env:GITHUB_WORKSPACE) {
                        git add $filePath
                        git commit -m "backup: $fileUri @ $([DateTime]::Now.ToString('o'))"
                        git push
                        $LASTEXITCODE = 0
                    }
                    $FilesDownloaded++
                } catch {
                    Write-Verbose "Error Downloading $fileUri : $_" -Verbose
                }                
            }
        }
    }
}
