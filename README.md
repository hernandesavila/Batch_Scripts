# 🧾 Batch Scripts Toolkit

O **Batch Scripts Toolkit** reúne utilitários em **Windows Batch** para automatizar tarefas de backup, rede e monitoramento no Windows.
Cada script foi pensado para executar rapidamente uma rotina específica sem necessidade de ferramentas adicionais.

---

## 🛠️ Tecnologias Utilizadas

<p align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/windows8/windows8-original.svg" alt="Windows" width="30" height="30"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="Visual Studio Code" width="30" height="30"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="GitHub" width="30" height="30"/>
</p>

- **Windows Batch (.bat)** – linguagem de script
- **Prompt de Comando** – ambiente padrão de execução
- **Visual Studio Code / Bloco de Notas** – edição rápida dos scripts

---

## 📂 Estrutura do Projeto

- `Backup Folder.bat` – backup simples de qualquer pasta para outro diretório
- `Backup Profile v2.bat` – automatiza o backup de perfis de usuário (C:\Users\<user>)
- `Restore Backup Profile.bat` – restaura arquivos de um diretório de backup para o perfil atual
- `matrix_batch.bat` – animação estilo "Matrix" em modo texto
- `ping_batch.bat` – executa testes de ping customizados (pacote e contagem)
- `task_manager_batch.bat` – menu interativo para listar ou finalizar processos
- `LICENSE` – termos da licença MIT do repositório

---

## ✅ Pré-requisitos

- **Windows 7 ou superior** com acesso ao Prompt de Comando
- Permissões para acessar os diretórios de origem/destino dos backups
- Privilégios administrativos opcionais para encerrar processos com `taskkill`

---

## ⚙️ Configuração

1. Faça o clone ou download do repositório.
2. Armazene os arquivos `.bat` em um diretório acessível (ex.: `C:\Scripts`).
3. (Opcional) Adicione o caminho dos scripts à variável de ambiente `PATH` para chamá-los de qualquer lugar.

---

## ▶️ Execução

1. Abra o **Prompt de Comando** (`cmd.exe`).
2. Navegue até a pasta onde o script está localizado (`cd C:\Scripts`).
3. Execute o arquivo desejado (`Backup Folder.bat`, `ping_batch.bat`, etc.).
4. Siga as instruções exibidas na tela para concluir a tarefa.

---

## 🔎 Funcionamento dos Principais Scripts

- **Backup Folder**: solicita os caminhos de origem e destino, valida a existência das pastas e copia os arquivos mantendo o registro de logs.
- **Backup Profile v2**: recebe o `user id`, monta automaticamente o caminho do perfil (`C:\Users\<id>`) e transfere os dados para o destino indicado.
- **Restore Backup Profile**: lê o diretório de backup, restaura para o perfil atual e gera um log em `C:\Restore_Bakup_LOG.txt`.
- **Ping Batch**: pede host, tamanho do pacote e quantidade de requisições, executando `ping` com os parâmetros informados.
- **Task Manager Batch**: apresenta um menu com opções para listar processos (`tasklist`) ou finalizar pelo nome (`taskkill`).
- **Matrix Batch**: imprime linhas pseudoaleatórias verdes em loop infinito para efeito visual.

---

## 📌 Observações

- Personalize os scripts conforme necessário (ex.: caminhos padrão, cores, idiomas).
- Para evitar bloqueios de execução, garanta que os arquivos estejam desbloqueados nas propriedades do Windows.
- Execute sempre em um prompt com privilégios adequados para operações de backup/restauração.

---

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
