# Nome do projeto
project_name   = "meu-projeto"

# Ambiente: dev, prod, staging, etc.
environment    = "dev"

# Chave pública extraída do seu PPK (via PuTTYgen)
ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDC8pmD2KGLTJwoBZRWjor/JXJigg/MDmHR7PMvLpGPTwltCDgYnKnzqka0l++v1cgDwgQSFEZZt/je/+yYfijiY9bESTbmNZTcqFO8+64GPuK406u9IUawMPYINss1C4XsgIFnXT+KkHVXu9c+VjyTpXMG4B4UQ9xb0PZ+njwtsZvHhTBrj4RwFNRdHwN7kZzYHh88A/qUhJX6Yxhyn2NpTbN3XbPLmDDDXShq73g1B/ZlSPjW9VTejDwD+3OBEFfiTcv2vNsM9/TxpiEiK2htv58Mg9HRV4vZPGQV8Af6onGM3PSFBrldLsb+aSPnPwoHsQqLyYWqbNwphBN5pcTp"

# Opcional: você pode sobrescrever AMI e tipo de instância
ami_id        = "ami-0c94855ba95c71c99"  # ajuste conforme região
instance_type = "t3.micro"