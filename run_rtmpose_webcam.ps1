# 此脚本用于快速启动 RTMPose Webcam 实时演示
# 确保在 mmpose 环境下运行

$env:PYTHONPATH = "."

Write-Host "正在启动 RTMPose (RTMPose-M + RTMDet-Tiny)..."
Write-Host "按 ESC 键退出窗口"

& "E:\annaconda\envs\mmpose\python.exe" demo/topdown_demo_with_mmdet.py `
    demo/mmdetection_cfg/rtmdet_tiny_8xb32-300e_coco.py `
    checkpoints/rtmdet_tiny.pth `
    configs/body_2d_keypoint/rtmpose/coco/rtmpose-m_8xb256-420e_coco-256x192.py `
    checkpoints/rtmpose-m.pth `
    --input webcam `
    --show

if ($LASTEXITCODE -ne 0) {
    Write-Host "运行出错，请检查错误信息"
    Pause
}
