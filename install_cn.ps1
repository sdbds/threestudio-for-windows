Set-Location $PSScriptRoot

#$Env:PIP_DISABLE_PIP_VERSION_CHECK = 1

if (!(Test-Path -Path "venv")) {
    Write-Output  "创建python虚拟环境venv..."
    python -m venv venv
}
.\venv\Scripts\activate

python -m pip install pip==23.0.1 -i https://mirror.baidu.com/pypi/simple

pip install ninja -i https://mirror.baidu.com/pypi/simple

pip install torch==2.0.1+cu118 torchvision==0.15.2+cu118 -f https://mirror.sjtu.edu.cn/pytorch-wheels/torch_stable.html -i https://mirror.baidu.com/pypi/simple

pip install bitsandbytes==0.41.1 --prefer-binary --extra-index-url https://jllllll.github.io/bitsandbytes-windows-webui

Write-Output "安装依赖..."
pip install -U -r requirements-windows.txt -i https://mirror.baidu.com/pypi/simple

Write-Output "安装完毕"
Read-Host | Out-Null ;
