FROM runpod/worker-comfyui:5.8.6-base-cuda12.8.1
  RUN comfy-node-install ComfyUI-LTXVideo comfyui-kjnodes
