@echo off
TITLE INEMAVOX OFICIAL
color 0a

set HF_HOME=F:\INEMAVOX_OFICIAL\.cache_ai
set TMP=F:\INEMAVOX_OFICIAL\.cache_ai
set TEMP=F:\INEMAVOX_OFICIAL\.cache_ai

echo [SISTEMA] Iniciando Servidor de Dublagem...
:: Mudamos para chamar o script sem o --help para evitar o erro de texto
start cmd /k "cd /d F:\INEMAVOX_OFICIAL && .\venv\Scripts\activate && python dublar_pro_v5.py --server"

timeout /t 5

echo [SISTEMA] Iniciando Dashboard...
start cmd /k "cd /d F:\INEMAVOX_OFICIAL\web && npx next dev"

echo ===========================================
echo   SE O BACKEND DER ERRO DE 'UNRECOGNIZED ARGUMENT',
echo   REMOVA O '--server' DO ARQUIVO .BAT
echo ===========================================
pause