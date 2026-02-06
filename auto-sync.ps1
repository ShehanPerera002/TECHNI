# Auto-sync script for GitHub
$projectPath = "c:\flutter projects\techniworker"

while ($true) {
    try {
        Set-Location $projectPath
        git add .
        git commit -m "Auto-sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" 2>$null
        git push origin main 2>$null
        Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Sync completed" -ForegroundColor Green
    } catch {
        Write-Host "[ERROR] $_" -ForegroundColor Red
    }
    Start-Sleep -Seconds 30
}

