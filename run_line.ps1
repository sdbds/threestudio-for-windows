$configs="configs/stable-zero123.yaml"
$image_path="./load/images/anya_front_rgba.png"
$gpu=0

Set-Location $PSScriptRoot
.\venv\Scripts\activate

$Env:HF_HOME = "./huggingface"
$Env:XFORMERS_FORCE_DISABLE_TRITON = "1"
#$Env:PYTHONPATH = $PSScriptRoot

#python gradio_app.py launch
python launch.py --config=$configs --train --gpu=$gpu data.image_path=$image_path