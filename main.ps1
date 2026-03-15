
Write-Host "=== Установка OptimAI Core Node ===" -ForegroundColor Cyan
Write-Host "Это официальный скрипт для быстрой загрузки и запуска." -ForegroundColor Yellow
Write-Host ""

$Url       = "https://optimai.network/download/core-node/win"
$FileName  = "OptimAI-CoreNode-Setup.exe"   
$OutPath   = "$env:TEMP\$FileName"

Write-Host "1. Скачиваю установщик..." -ForegroundColor Green

try {
    Invoke-WebRequest -Uri $Url -OutFile $OutPath -UseBasicParsing -ErrorAction Stop
    Write-Host "   Успешно скачано → $OutPath" -ForegroundColor Green
    Write-Host "   Размер файла ≈ 100–200 МБ (зависит от версии)" -ForegroundColor DarkGray
}
catch {
    Write-Host "Ошибка скачивания: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Проверь интернет или попробуй скачать вручную: $Url" -ForegroundColor Yellow
    pause
    exit
}

Write-Host ""
Write-Host "2. Запускаю установщик..." -ForegroundColor Green

try {
    )
    Start-Process $OutPath -Verb RunAs
    
    Write-Host "   Установщик запущен! Следуй инструкциям на экране." -ForegroundColor Green
    Write-Host "   Важно: перед/во время установки убедись, что Docker Desktop установлен и запущен." -ForegroundColor Yellow
}
catch {
    Write-Host "Ошибка запуска: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Попробуй запустить файл вручную: $OutPath" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Готово! Если возникнут вопросы — пиши в поддержку OptimAI." -ForegroundColor Cyan
Write-Host "Документация: https://docs.optimai.network/docs/optimai-node/core-node" -ForegroundColor DarkCyan


Write-Host ""
pause
