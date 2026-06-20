  FROM runpod/worker-comfyui:5.8.6-base-cuda12.8.1
  RUN comfy-node-install ComfyUI-LTXVideo comfyui-kjnodes
  RUN pip install kornia==0.8.2
  RUN rm -rf /comfyui/models/text_encoders && mkdir -p /comfyui/models && \
      ln -s /runpod-volume/models/text_encoders /comfyui/models/text_encoders
