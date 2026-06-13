<div align="center">

# ScriptClean — Instalar ScriptBot v3.0

**Bot de atendimento WhatsApp profissional · licença na nuvem**

🌐 [scriptclean.com.br](https://scriptclean.com.br) · ScriptClean -Solutions-

![Node.js](https://img.shields.io/badge/Node.js-18%2B-339933?style=flat-square&logo=node.js)
![Windows](https://img.shields.io/badge/Windows-10%2F11-0078D6?style=flat-square&logo=windows)
![Versão](https://img.shields.io/badge/ScriptBot-v3.0-blueviolet?style=flat-square)

</div>

---

Este repositório é o **instalador público** do ScriptBot.

O código completo do bot fica em repositório **privado** (`ALN2025/bot-whatsapp`).  
Aqui você baixa só o necessário para **instalar, ativar a licença e iniciar** o bot no seu PC.

---

## O que tem neste repositório

```
scriptclean-launcher/
├── README.md                         ← este guia
├── Instalar-ScriptClean.bat          ← instalador principal
├── ScriptClean-Setup.exe             ← instalador de licença (veja abaixo)
└── config/
    ├── license-db.config.example.json
    └── bot.config.example.json
```

### O `.exe` pode ficar aqui?

**Sim.** Você pode colocar o `ScriptClean-Setup.exe` de três formas:

| Forma | Quando usar |
|-------|-------------|
| **Na pasta do repo** | Cliente clona/baixa ZIP e já tem o `.exe` junto |
| **[GitHub Releases](https://github.com/ALN2025/scriptclean-launcher/releases)** | Recomendado — versiona `ScriptClean-Setup.exe` sem poluir o código |
| **Enviado por você** | WhatsApp/e-mail após a compra (cliente cola na pasta) |

> O `.exe` **não** fica no repo privado do bot — só neste launcher público ou em Releases.

---

## O que a ScriptClean envia ao cliente (após a compra)

| Arquivo | Obrigatório | Função |
|---------|-------------|--------|
| `config/license-db.config.json` | ✅ Sim | Conexão com servidor de licenças (VPS) |
| `config/bot.config.json` | ✅ Sim | Seu número admin + ID do grupo WhatsApp |
| **Token GitHub** | ✅ Sim | Leitura do repo privado `bot-whatsapp` |
| `ScriptClean-Setup.exe` | Recomendado | Registra licença + cria atalhos (ou use o do repo/Releases) |

O cliente **não** cria token nem configura o MySQL — a ScriptClean envia tudo pronto.

---

## Requisitos no PC do cliente

| Item | Link |
|------|------|
| Windows 10 ou 11 | — |
| Node.js 18+ | [nodejs.org](https://nodejs.org) |
| Git | [git-scm.com](https://git-scm.com) |
| Internet | Para WhatsApp + validação de licença na VPS |

> O bot roda **no PC do cliente**. A VPS só valida licença (MySQL) — não hospeda o bot.

---

## Instalação — passo a passo

### 1. Baixe este repositório

**Opção A — Git:**
```bat
git clone https://github.com/ALN2025/scriptclean-launcher.git
cd scriptclean-launcher
```

**Opção B — ZIP:**  
[Code → Download ZIP](https://github.com/ALN2025/scriptclean-launcher/archive/refs/heads/main.zip)

**Opção C — Release (com .exe):**  
Baixe o ZIP da [última Release](https://github.com/ALN2025/scriptclean-launcher/releases) se disponível.

### 2. Coloque os arquivos recebidos da ScriptClean

```
scriptclean-launcher/
├── config/
│   ├── license-db.config.json    ← substitui o .example
│   └── bot.config.json           ← substitui o .example
├── ScriptClean-Setup.exe         ← na pasta raiz (repo, Release ou enviado)
└── Instalar-ScriptClean.bat
```

### 3. Execute o instalador

Duplo clique em **`Instalar-ScriptClean.bat`**

O script irá:

1. Pedir o **token GitHub** (enviado pela ScriptClean)
2. Clonar o bot do repo privado `bot-whatsapp` (branch `master`)
3. Copiar seus configs (`license-db` + `bot`)
4. Rodar `npm install`
5. Executar **`ScriptClean-Setup.exe`** — registra licença na VPS
6. Criar atalhos **ScriptBot - Iniciar** e **ScriptBot - Reiniciar**

### 4. Inicie o bot

Use o atalho na área de trabalho: **ScriptBot - Iniciar**

Na **primeira execução**, escaneie o QR Code do WhatsApp (uma vez só).

---

## Trial e licença

| Regra | Detalhe |
|-------|---------|
| **Período de teste** | **2 dias** gratuitos |
| **Quando começa** | Na **primeira vez** que o bot **ligar** (não na instalação) |
| **1 computador = 1 trial** | Vinculado ao hardware (MEK/HWID) |
| **Reinstalar** | **Não** reinicia o trial no mesmo PC |
| **Chave de licença** | Gerada no setup: `SC-XXXXXXXX` — guarde para suporte |
| **Após expirar** | Bot bloqueia com aviso *“Trial encerrado”* |
| **Renovar** | Contate a ScriptClean — renovação feita no servidor |

### Fluxo resumido

```
Instalar → Setup registra PC na VPS → 1ª execução inicia trial 2 dias
         → Trial acaba → bot bloqueia → ScriptClean renova → bot libera
```

### Tela de bloqueio (trial esgotado)

O bot exibe mensagem pedindo renovação e mostra:

- **ID Instalação** — para suporte
- **Chave de licença** — `SC-...` (se precisar informar à ScriptClean)

Para renovar, envie a chave ou ID pelo WhatsApp da ScriptClean.

---

## Uso diário

| Ação | Como |
|------|------|
| Ligar o bot | Atalho **ScriptBot - Iniciar** |
| Reiniciar | Atalho **ScriptBot - Reiniciar** ou comando admin `#rr` |
| Ver licença | Comando admin `#licenca` no WhatsApp |
| Exportar leads | Comando admin `#exportar` (CSV, Excel, PDF) |

O cliente **não** precisa da chave de licença no dia a dia — só para renovação/suporte.

---

## Comandos admin (WhatsApp)

No privado, do número configurado em `bot.config.json`:

| Comando | Função |
|---------|--------|
| `#painel` | Painel admin |
| `#licenca` | Status da licença e MEK |
| `#rr` | Reiniciar o bot |
| `#exportar` | Enviar leads (CSV, Excel, PDF) |
| `#meugrupo` | (no grupo) Descobrir ID do grupo |

---

## Suporte

- **Site:** [scriptclean.com.br](https://scriptclean.com.br)
- **WhatsApp:** número informado na compra

---

## Para a ScriptClean (uso interno)

<details>
<summary>Publicar/atualizar este repo + .exe</summary>

1. Compile no projeto do bot: `Compilar-Tudo.bat` → gera `ScriptClean-Setup.exe`
2. Copie para `launcher-public/` ou anexe numa **GitHub Release**
3. Suba para [scriptclean-launcher](https://github.com/ALN2025/scriptclean-launcher):
   - `README.md`
   - `Instalar-ScriptClean.bat`
   - `config/*.example.json`
   - `ScriptClean-Setup.exe` (opcional na raiz ou só em Releases)

</details>

<details>
<summary>Gerar token GitHub para o cliente</summary>

1. GitHub → **Settings** → **Developer settings** → **Fine-grained tokens**
2. Repository access: **Only** `ALN2025/bot-whatsapp`
3. Permissions: **Contents → Read-only**
4. Envie o token ao cliente após a compra

</details>

<details>
<summary>Renovar licença no Navicat (banco scriptbd)</summary>

```sql
-- Forçar trial esgotado (demo/teste)
UPDATE licenses
SET status = 'expired', trial_ends_at = '2020-01-01 00:00:00'
WHERE license_key = 'SC-XXXXXXXX';

-- Renovar cliente
UPDATE licenses
SET status = 'active',
    license_expires_at = '2027-12-31 23:59:59',
    notes = 'Cliente renovado'
WHERE license_key = 'SC-XXXXXXXX';
```

</details>

---

*Código do bot: repositório privado licenciado. Não copiar, não redistribuir.*

**Dev ⩿ A.L.N/⪀** · ScriptClean -Solutions- · BUILD 2026
