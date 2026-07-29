# Terraform Starter Kit

Projeto de exemplo com Terraform para provisionar uma VPC na AWS e uma instância EC2 Ubuntu.

## Pré-requisitos

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.15
- Credenciais AWS configuradas (por exemplo, via `aws configure` ou variáveis de ambiente)

## Comandos básicos do Terraform

### Verificar a versão

Você pode verificar sua versão atual do Terraform executando:

```bash
terraform -version
```

### Formatar arquivos

O comando `terraform fmt` reformata automaticamente todos os arquivos de configuração no diretório atual de acordo com o estilo recomendado pela HashiCorp.

```bash
terraform fmt
```

### Inicializar o workspace

Antes de poder aplicar sua configuração, você deve inicializar seu workspace Terraform com o comando `terraform init`. Como parte da inicialização, o Terraform baixa e instala os provedores definidos em sua configuração no diretório de trabalho atual.

```bash
terraform init
```

### Validar a configuração

Certifique-se de que sua configuração seja sintaticamente válida e internamente consistente usando o comando `terraform validate`.

```bash
terraform validate
```

### Planejar e aplicar

Planeje e aplique sua configuração com o comando `terraform apply`. O Terraform imprimirá o plano de execução e solicitará que você confirme as alterações antes de aplicá-las.

```bash
terraform apply
```

Para aplicar sem confirmação interativa:

```bash
terraform apply -auto-approve
```

### Inspecionar o estado

Liste os recursos e fontes de dados no estado do seu workspace Terraform com o comando `terraform state list`.

```bash
terraform state list
```

Mesmo que a fonte de dados não seja um recurso real, o Terraform a rastreia em seu arquivo de estado. Imprima todo o estado do seu workspace usando o comando `terraform show`.

```bash
terraform show
```

### Revisar outputs

Revise seus valores de saída usando o comando `terraform output`.

```bash
terraform output
```

Para um output específico:

```bash
terraform output instance_hostname
```

### Destruir recursos

Destrua seu workspace executando `terraform destroy`. Aprove o plano do Terraform para remover seus recursos respondendo `yes` ao prompt de confirmação.

```bash
terraform destroy
```

## Fluxo recomendado

```bash
terraform fmt
terraform init
terraform validate
terraform apply
```

Para remover tudo ao final:

```bash
terraform destroy
```
