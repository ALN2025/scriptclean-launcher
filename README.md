<div align="center">

# ScriptClean — ScriptWhatsApp v3.0.3

**Bot de atendimento WhatsApp profissional**

🌐 [scriptclean.com.br](https://scriptclean.com.br) · ScriptClean -Solutions-

![Node.js](https://img.shields.io/badge/Node.js-18%2B-339933?style=flat-square&logo=node.js)
![Windows](https://img.shields.io/badge/Windows-10%2F11-0078D6?style=flat-square&logo=windows)
![Trial](https://img.shields.io/badge/Teste%20gratis-2%20dias-success?style=flat-square)
![Versão](https://img.shields.io/badge/ScriptWhatsApp-v3.0.3-blueviolet?style=flat-square)

</div>

---

## Teste grátis 2 dias

Baixe, instale e teste **sem comprar antes**.

> Este repositório é o **instalador público** — não contém o código-fonte do bot.  
> O código é protegido por licença e distribuído apenas via instalador oficial.

---

## Instalação (5 passos)

1. Baixe o ZIP na aba [**Releases**](https://github.com/ALN2025/scriptclean-launcher/releases) (última versão)
2. **Extraia** o ZIP em uma pasta
3. Edite **`config\bot.config.json`** — seu WhatsApp (`+55...`) e ID do grupo
4. Execute **`Instalar-ScriptClean.bat`**
5. Abra o atalho **ScriptWhatsApp - Iniciar** e escaneie o QR Code

> Execute o **`.bat`** — não abra `ScriptClean-Setup.exe` sozinho.  
> Use o **ZIP da Release**, não o botão "Code" do GitHub.

---

## ⚠️ Regra importante — 1 PC, 1 bot

**Use apenas uma janela do ScriptWhatsApp por computador.**

| Por quê? |
|----------|
| WhatsApp Web aceita **uma sessão** por número |
| Duas janelas = desconexão, QR de novo ou mensagens duplicadas |
| Licença é **1 por PC** — não adianta abrir duas pastas |

Para reiniciar: feche a janela ou use **Manutencao-ScriptClean.bat** (dentro de `bot-whatsapp` após instalar).

---

## Como o bot atende (grupo → privado)

1. Cliente entra no **grupo oficial** → boas-vindas pelo nome  
2. Bot chama no **privado** e faz a entrevista guiada  
3. Quem manda no privado **sem passar pelo grupo** → ignorado (anti-spam)  
4. Outros grupos → bot fica em **silêncio total**

---

## Requisitos

| Item | Link |
|------|------|
| Windows 10 ou 11 | — |
| Node.js 18+ | [nodejs.org](https://nodejs.org) |
| Git | [git-scm.com](https://git-scm.com) |
| Internet estável | WhatsApp + licença |

---

## Configurar WhatsApp

`config\bot.config.json`:

```json
{
  "ADMIN_NUMBER": "+5551999999999",
  "ALLOWED_GROUP_ID": "120363407610857946@g.us"
}
```

| Campo | Descrição |
|-------|-----------|
| `ADMIN_NUMBER` | Seu WhatsApp (`+55...`) — `#menu`, `#painel`, `#exportar` |
| `ALLOWED_GROUP_ID` | ID do grupo — use `#meugrupo` após ligar o bot |

---

## Pasta após instalar

O instalador configura tudo automaticamente:

- `ScriptWhatsApp.exe` + atalhos  
- `Manutencao-ScriptClean.bat` · `COMO-USAR.txt`  
- `config/` · arquivos necessários para rodar o bot

---

## Trial — 2 dias grátis

| Regra | Detalhe |
|-------|---------|
| Duração | 2 dias |
| Início | Na **primeira vez** que o bot ligar |
| Por PC | 1 trial por computador |
| Chave | `SC-XXXXXXXX` — guarde para suporte |

Após expirar: contrate com a ScriptClean (ativação no servidor, **sem reinstalar**).

---

## Uso diário

| Ação | Como |
|------|------|
| Ligar | Atalho **ScriptWhatsApp - Iniciar** |
| Reiniciar | Atalho **ScriptWhatsApp - Reiniciar** |
| Manutenção | `Manutencao-ScriptClean.bat` |
| Ver licença | `#licenca` no privado (admin) |
| Painel admin | `#menu` ou `#painel` |
| Exportar leads | `#exportar` |

---

## Suporte

- **Site:** [scriptclean.com.br](https://scriptclean.com.br)
- **Releases:** [github.com/ALN2025/scriptclean-launcher/releases](https://github.com/ALN2025/scriptclean-launcher/releases)

---

**ScriptClean -Solutions-** · BUILD 2026

*Uso licenciado. Não copiar nem redistribuir.*
