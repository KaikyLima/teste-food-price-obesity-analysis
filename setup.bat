@echo off
echo Configurando ambiente do projeto...

:: 1. Criar ambiente virtual se não existir
if not exist ".venv" (
    echo Criando ambiente virtual...
    python -m venv .venv
) else (
    echo Ambiente virtual já existe.
)

:: 2. Ativar ambiente virtual
echo Ativando ambiente virtual...
call .venv\Scripts\activate.bat

:: 3. Atualizar pip
echo Atualizando pip...
python -m pip install --upgrade pip --quiet

:: 4. Instalar dependências do requirements.txt
echo Instalando dependências...
pip install -r requirements.txt --quiet

:: 5. Criar pasta data se não existir
if not exist "data" (
    echo Criando pasta data...
    mkdir data
) else (
    echo Pasta data já existe.
)

echo.
echo Ambiente pronto!
echo.
echo Para ativar manualmente depois:
echo   .venv\Scripts\activate
echo.
echo Para abrir o notebook:
echo   jupyter notebook note.ipynb
echo.
pause