# Terraform Project

Este projeto utiliza **Terraform** para provisionar infraestrutura na nuvem (ex: AWS). Ele inclui os passos básicos para iniciar, verificar e aplicar a infraestrutura definida.

## Pré-requisitos

- Terraform instalado (versão mínima recomendada: 1.5.0)
- Conta na AWS (ou outro provedor definido no projeto)
- Credenciais configuradas (ex: `aws configure`)

## Comandos Terraform

O fluxo padrão para usar o Terraform é:

```bash
# Inicializa o diretório do projeto Terraform e baixa os providers
terraform init

# Cria um plano de execução, mostrando as ações que serão realizadas
terraform plan

# Aplica as alterações na infraestrutura
terraform apply
