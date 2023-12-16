Set-Location $PSScriptRoot

$Env:PIP_DISABLE_PIP_VERSION_CHECK = 1

if (!(Test-Path -Path "venv")) {
    Write-Output  "Creating venv for python..."
    python -m venv venv
}
.\venv\Scripts\activate

Write-Output "Installing deps..."

python -m pip install pip==23.0.1

pip install ninja -i

pip install torch==2.0.1+cu118 torchvision==0.15.2+cu118 --extra-index-url https://download.pytorch.org/whl/cu118

pip install bitsandbytes==0.41.1 --prefer-binary --extra-index-url https://jllllll.github.io/bitsandbytes-windows-webui

pip install -U -r requirements-windows.txt

Write-Output "Install completed"
Read-Host | Out-Null ;
