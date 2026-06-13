# ⚡ ScriptBot — Atendimento Automático no WhatsApp

<div align="center">

```text
                            ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗
                            ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝
                            ███████╗██║     ██████╔╝██║██████╔╝   ██║
                            ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║
                            ███████║╚██████╗██║  ██║██║██║        ██║
                            ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝
                             ██████╗██╗     ███████╗ █████╗ ███╗   ██╗
                            ██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║
                            ██║     ██║     █████╗  ███████║██╔██╗ ██║
                            ██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║
                            ╚██████╗███████╗███████╗██║  ██║██║ ╚████║
                             ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝

                               -Solutions-  |  Bot de Atendimento WhatsApp
```

### ScriptClean -Solutions- | Bot de Atendimento WhatsApp

![Node.js](https://img.shields.io/badge/Node.js-18.18%2B-339933?style=flat-square&logo=node.js&logoColor=white)
![whatsapp-web.js](https://img.shields.io/badge/whatsapp--web.js-1.34%2B-25D366?style=flat-square&logo=whatsapp&logoColor=white)
![Versão](https://img.shields.io/badge/ScriptBot-v3.0-blueviolet?style=flat-square)
![Build](https://img.shields.io/badge/build-2026-purple?style=flat-square)

**Bot de atendimento 100% local: saudação automática no grupo, triagem por setor,
entrevista guiada com validação e captura de leads — sem API paga, sem mensalidade.**

🌐 [scriptclean.com.br](https://scriptclean.com.br) | 🛠️ Dev ⩿ A.L.N/⪀ | 💬 Discord @dev.aln

</div>

---

## 🚀 O que ele faz

- **Saudação automática na entrada do grupo** — bom dia/boa tarde/boa noite pelo nome da pessoa, com aviso de que o atendimento continua no privado
- **Atendimento no privado** — menu com 10 setores (Contabilidade, Advocacia, Financeiro, Clínica, Comércio, Marketing, Imobiliário, Infoproduto, L2J e Automação), cada um com entrevista personalizada
- **Validação inteligente** — rejeita números em campos de texto, valida e-mail/telefone e campos numéricos
- **Captura de leads** — cada atendimento vira um `.txt` em `leads/` + notificação instantânea no WhatsApp do admin + exportação CSV (`#exportar`)
- **Modo restrito (anti-spam)** — o bot **só atende quem entrou pelo grupo autorizado**; mensagens diretas de desconhecidos são ignoradas
- **Grupo sempre limpo** — o bot não responde conversa no grupo; só dá boas-vindas a quem entra
- **Recebe arquivos** — documentos/imagens enviados na entrevista são salvos em `uploads/` e vinculados ao lead
- **Proteções** — anti-flood, bloqueio durante processamento, sessão expira por inatividade (6h)

## 📦 Instalação rápida

1. Instale o [Node.js](https://nodejs.org) (versão 18.18 ou superior)
2. Na pasta do projeto, rode:

```bash
npm install
npx puppeteer browsers install chrome
```

3. Configure o `index.js` (seção `CONFIG` no topo):
   - `ADMIN_NUMBER` — seu número (recebe os leads)
   - `ALLOWED_GROUP_ID` — ID do grupo autorizado (envie `#meugrupo` no grupo, como admin, para descobrir)
4. Inicie pelo atalho **"ScriptBot - Iniciar"** (ou `Iniciar-ScriptBot.bat`)
5. Escaneie o QR Code **uma única vez** — a sessão fica salva em `.wwebjs_auth`

## 🖥️ Como iniciar

| Forma | Resultado |
|---|---|
| Atalho **"ScriptBot - Iniciar"** | Janela com o logo da ScriptClean na barra de tarefas |
| `Iniciar-ScriptBot.bat` | Abre no Windows Terminal |
| `ScriptBot.exe` | Iniciador leve em C# com ícone embutido |
| `npm start` | Direto pelo terminal |

## 💬 Comandos

**Usuário (privado):**
`menu` • `status` • `cancelar` • `ajuda` • `próximo` (pula pergunta opcional)

**Admin (privado):**
`#exportar` (leads em CSV) • `#grupos` (lista grupos e IDs) • `#setgrupo <id>` (define grupo autorizado) • `#unsetgrupo`

**Admin (no grupo):**
`#meugrupo` (recebe o ID do grupo no privado)

## 📁 Estrutura do projeto

```
scriptclean-bot/
├── index.js               # Bot completo (config, fluxo, validações, splash)
├── Iniciar-ScriptBot.bat  # Inicia o bot pelo terminal
├── ScriptBot.exe          # Iniciador leve (C#) com logo embutido
├── CriarAtalho.vbs        # Cria atalhos com o ícone da ScriptClean
├── assets/                # Ícone e fonte do iniciador (Launcher.cs)
├── db.json                # Sessões, leads e usuários autorizados
├── leads/                 # Um .txt por atendimento concluído
├── logs/                  # Log diário do bot
├── uploads/               # Arquivos recebidos dos clientes
└── .wwebjs_auth/          # Sessão do WhatsApp (NÃO apagar — pede QR de novo)
```

## 🔧 Tecnologias

| Camada | Tecnologia |
|---|---|
| Runtime | Node.js |
| WhatsApp | whatsapp-web.js (branch main, correções 2026) |
| Navegador | Puppeteer + Chrome 146 (invisível) |
| Autenticação | LocalAuth + QR Code (uma única vez) |
| Dados | JSON local (`db.json`) — sem banco externo |
| Iniciador | C# (.NET Framework) com ícone win32 embutido |

## ⚠️ Observações

- O PC precisa ficar ligado com o bot aberto para atender (ou use uma VPS Windows para 24h)
- Apagar `.wwebjs_auth` desconecta o bot e exige novo QR Code
- O bot ignora qualquer grupo que não seja o `ALLOWED_GROUP_ID` — zero spam

---

<div align="center">

**ScriptClean -Solutions- | BUILD 2026**
ENG E DESENVOLVIMENTO: ANDERSON LUIS DO NASCIMENTO
━━━━━━┫ Dev ⩿ A.L.N/⪀ ┣━━━━━━

</div>
