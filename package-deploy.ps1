# ============================================
# SERENO - Source Deploy para Hostinger
# Sube CODIGO FUENTE (Hostinger construye solo)
# ============================================

Write-Host "=== SERENO - Creando Source Deploy para Hostinger ==="

# Limpiar zip anterior
Remove-Item -Path "source-deploy.zip" -ErrorAction SilentlyContinue

# Crear zip solo con archivos fuente (SIN node_modules ni .next)
Write-Host "Empaquetando codigo fuente..."

$filesToZip = @()

# Directorios esenciales
if (Test-Path "src")           { $filesToZip += "src" }
if (Test-Path "public")        { $filesToZip += "public" }

# Archivos de configuracion
if (Test-Path "package.json")      { $filesToZip += "package.json" }
if (Test-Path "package-lock.json") { $filesToZip += "package-lock.json" }
if (Test-Path "next.config.ts")    { $filesToZip += "next.config.ts" }
if (Test-Path "tsconfig.json")     { $filesToZip += "tsconfig.json" }
if (Test-Path "eslint.config.mjs") { $filesToZip += "eslint.config.mjs" }
if (Test-Path ".env.local")        { $filesToZip += ".env.local" }

Compress-Archive -Path $filesToZip -DestinationPath "source-deploy.zip" -Force

$size = [math]::Round((Get-Item "source-deploy.zip").Length / 1MB, 2)
Write-Host ""
Write-Host "source-deploy.zip listo ($size MB)" -ForegroundColor Green
Write-Host ""
Write-Host "=== EN HOSTINGER HACER LO SIGUIENTE ===" -ForegroundColor Yellow
Write-Host "1. PRIMERO: Borrar TODOS los archivos de public_html (incluyendo .next)"
Write-Host "2. Subir source-deploy.zip en la seccion Archivos fuente"
Write-Host "3. Configurar:"
Write-Host "   - Comando compilacion: npm run build"
Write-Host "   - Directorio salida:   .next"
Write-Host "   - Comando inicio:      npm run start"
Write-Host "4. Guardar y Reimplementar"
