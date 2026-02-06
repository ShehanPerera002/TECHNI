$projectPath = "c:\flutter projects\techniworker"

while ($true) {
    try {
        Set-Location $projectPath
        git add .
        git commit -m "Auto-sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -q 2>$null
        if ($LASTEXITCODE -eq 0) {
            git push origin main -q 2>$null
            Write-Host "✓ Synced at $(Get-Date -Format 'HH:mm:ss')" -ForegroundColor Green
        }
    } catch {
        Write-Host "Error: $_" -ForegroundColor Red
    }
    Start-Sleep -Seconds 30  # Every 30 seconds
}
