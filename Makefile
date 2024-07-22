install_requirements:
	@pip install -r requirements.txt

install_torch_with_cuda:
	@pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

install_torch_without_cuda:
	@pip install torch

poetry_install: install_requirements
	@poetry lock
	@poetry install

poetry_update: install_requirements
	@poetry update
