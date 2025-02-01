function Backup-CDC 
{
    param(
    [uri[]]
    $FileList,

    [int]
    $Maximum = 1kb
    )

    begin {
        $rootDataPath = $MyInvocation.MyCommand.Module | Split-Path | Join-Path "Data"
        $ErrorActionPreference = 'continue'
    }

    process {
        $shuffledFileList = $FileList | Get-Random -Count $fileList.Count

        $FilesDownloaded = 0
        $FilesToPrcess = $shuffledFileList.Count
        foreach ($fileUri in $shuffledFileList) {
            if ($Maximum -and $FilesDownloaded -gt $Maximum) {
                break
            }
            $filePath = Join-Path $rootDataPath $fileUri.LocalPath
            if (-not (Test-Path $filePath)) {
                try { 
                    Invoke-WebRequest -Uri $fileUri -OutFile $filePath                    
                    Write-Verbose "Downloaded $fileUri [$filesDownloaded / $filesToProcess]" -Verbose
                    git add $filePath
                    git commit -m "backup: $fileUri @ $([DateTime]::Now.ToString('o'))"
                    git push
                    $LASTEXITCODE = 0
                    $FilesDownloaded++
                } catch {
                    Write-Verbose "Error Downloading $fileUri : $_" -Verbose
                }                
            }
        }
    }
}
