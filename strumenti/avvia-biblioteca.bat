@echo off
rem Accende Wikipedia offline per i link della wiki su http://localhost:8080 (Windows).
rem Richiede kiwix-serve.exe in project-racoon-dati\bin\ (vedi README).
rem In alternativa usa Kiwix Desktop: menu -> Server locale -> porta 8080 -> Avvia.
set DATI=%~dp0..\..\project-racoon-dati
if not exist "%DATI%\bin\kiwix-serve.exe" (
  echo kiwix-serve.exe non trovato in %DATI%\bin. Vedi il README.
  pause
  exit /b 1
)
echo Biblioteca accesa su http://localhost:8080  - chiudi questa finestra per spegnerla
"%DATI%\bin\kiwix-serve.exe" -i 127.0.0.1 -p 8080 "%DATI%\zim\wikipedia_it.zim" "%DATI%\zim\wikimed.zim" "%DATI%\zim\wikivoyage_it.zim"
