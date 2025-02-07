# Monitor
Write-Host "=== MONITOR ==="
Get-CimInstance WmiMonitorID -Namespace root\wmi | Select-Object ManufacturerName, ProductCodeID, SerialNumberID

# Keyboard
Write-Host "`n=== KEYBOARD ==="
Get-CimInstance Win32_Keyboard | Select-Object Name, Description

# Mouse
Write-Host "`n=== MOUSE ==="
Get-CimInstance Win32_PointingDevice | Select-Object Name, Description, NumberOfButtons

# Motherboard
Write-Host "`n=== MOTHERBOARD ==="
Get-CimInstance Win32_BaseBoard | Select-Object Manufacturer, Product, SerialNumber

# CPU
Write-Host "`n=== CPU ==="
Get-CimInstance Win32_Processor | Select-Object Name, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors

# RAM
Write-Host "`n=== RAM ==="
Get-CimInstance Win32_PhysicalMemory | Select-Object Manufacturer, Capacity, Speed

# HDD/SSD
Write-Host "`n=== STORAGE (HDD/SSD) ==="
Get-PhysicalDisk | Select-Object DeviceID, MediaType, Model, Size, HealthStatus

# PSU (Harus dicek manual)
Write-Host "`n=== PSU ==="
Write-Host "Tidak bisa dideteksi dengan software. Harap cek label di bodi PSU."

# Casing (Harus dicek manual)
Write-Host "`n=== CASING ==="
Write-Host "Tidak bisa dideteksi dengan software. Cek merk dan model di bodi casing."

# Heatsink (Hanya suhu, tidak bisa cek model)
Write-Host "`n=== HEATSINK ==="
Get-CimInstance MSAcpi_ThermalZoneTemperature -Namespace "root/wmi"

# OS
Write-Host "`n=== SISTEM OPERASI ==="
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber, OSArchitecture

