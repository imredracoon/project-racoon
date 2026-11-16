# Scarica la biblioteca offline di Project Racoon (Windows, PowerShell).
# Uso: tasto destro -> "Esegui con PowerShell", oppure:
#   powershell -ExecutionPolicy Bypass -File strumenti\scarica-contenuti.ps1 -Variante nopic
param([ValidateSet("nopic","maxi","mini")][string]$Variante = "nopic")
$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
$Dati = Join-Path (Split-Path -Parent $Root) "project-racoon-dati"
$Kiwix = "https://download.kiwix.org/zim"
New-Item -ItemType Directory -Force -Path "$Dati\zim", "$Dati\mappe" | Out-Null

function Ultimo($cartella, $prefisso) {
  $html = (Invoke-WebRequest -UseBasicParsing "$Kiwix/$cartella/").Content
  [regex]::Matches($html, "$prefisso" + "_\d{4}-\d{2}\.zim") | ForEach-Object Value | Sort-Object -Unique | Select-Object -Last 1
}
function Scarica($url, $dest) {
  Write-Host "-> $(Split-Path -Leaf $dest)  ($url)"
  # curl.exe e' incluso in Windows 10/11 e riprende i download interrotti
  curl.exe -fL -C - --retry 5 -o $dest $url
  if ($LASTEXITCODE -ne 0 -and $LASTEXITCODE -ne 33) { throw "Download fallito: $url" }  # 33 = file gia' completo
}

$elenco = @(
  @("wikipedia_it",  "wikipedia",  "wikipedia_it_all_$Variante"),
  @("wikimed",       "other",      "mdwiki_en_all_maxi"),
  @("wikivoyage_it", "wikivoyage", "wikivoyage_it_all_maxi")
)
$fileVersioni = "$Dati\VERSIONI.txt"
if (-not (Test-Path $fileVersioni)) { New-Item -ItemType File $fileVersioni | Out-Null }
function Registra($nome, $riga) {
  $righe = @(Get-Content $fileVersioni | Where-Object { $_ -notlike "$nome *" }) + $riga
  $righe | Set-Content $fileVersioni
}
foreach ($z in $elenco) {
  $nome = "$($z[0]).zim"
  $file = Ultimo $z[1] $z[2]
  if (-not $file) { Write-Warning "Non trovo $($z[2])"; continue }
  if ((Test-Path "$Dati\zim\$nome") -and (Select-String -Quiet -SimpleMatch "$nome <- $file " $fileVersioni)) {
    Write-Host "OK $nome e' gia' l'edizione piu' recente ($file)"; continue
  }
  Scarica "$Kiwix/$($z[1])/$file" "$Dati\zim\$file.part"
  Move-Item -Force "$Dati\zim\$file.part" "$Dati\zim\$nome"
  Registra $nome "$nome <- $file (scaricato il $(Get-Date -Format yyyy-MM-dd))"
}
$mappa = "https://download.mapsforge.org/maps/v5/europe/italy.map"
if (Test-Path "$Dati\mappe\italy.map") {
  Write-Host "OK italy.map gia' presente (cancellala per riscaricarla)"
} else {
  Scarica $mappa "$Dati\mappe\italy.map.part"
  Move-Item -Force "$Dati\mappe\italy.map.part" "$Dati\mappe\italy.map"
  Registra "italy.map" "italy.map <- $mappa (scaricato il $(Get-Date -Format yyyy-MM-dd))"
}
Write-Host "`nFatto. Apri i file .zim con Kiwix Desktop e italy.map con GPXSee."
