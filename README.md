<div align="center">

# ScriptClean — Instalar ScriptWhatsApp v3.0

**Bot de atendimento WhatsApp profissional**

🌐 [scriptclean.com.br](https://scriptclean.com.br) · ScriptClean -Solutions-

![Node.js](https://img.shields.io/badge/Node.js-18%2B-339933?style=flat-square&logo=node.js)
![Windows](https://img.shields.io/badge/Windows-10%2F11-0078D6?style=flat-square&logo=windows)
![Versão](https://img.shields.io/badge/ScriptWhatsApp-v3.0-blueviolet?style=flat-square)

</div>

---

Bem-vindo! Este pacote instala o **ScriptWhatsApp** no seu computador.

Após a compra, a ScriptClean envia os arquivos de configuração.  
Você só precisa seguir os passos abaixo.

---

## O que vem neste pacote

| Arquivo | Função |
|---------|--------|
| `Instalar-ScriptClean.bat` | Instalador — execute este arquivo |
| `ScriptClean-Setup.exe` | Ativa a licença no seu PC |
| `config/` | Pasta para os arquivos que a ScriptClean enviar |

---

## O que a ScriptClean envia para você

Coloque na pasta `config/` **antes** de instalar:

| Arquivo | Obrigatório |
|---------|-------------|
| `license-db.config.json` | ✅ Sim |
| `bot.config.json` | ✅ Sim |
| **Token de instalação** | ✅ Sim (a ScriptClean envia por WhatsApp/e-mail) |

> Você **não** precisa configurar servidor nem banco de dados — tudo já vem pronto.

---

## Requisitos

| Item | Link |
|------|------|
| Windows 10 ou 11 | — |
| Node.js 18+ | [nodejs.org](https://nodejs.org) |
| Git | [git-scm.com](https://git-scm.com) |
| Internet estável | Para WhatsApp e validação de licença |

---

## Instalação

### 1. Baixe este repositório

```bat
git clone https://github.com/ALN2025/scriptclean-launcher.git
cd scriptclean-launcher
```

Ou baixe o ZIP em **Code → Download ZIP**.

### 2. Coloque os arquivos da ScriptClean

```
scriptclean-launcher/
├── config/
│   ├── license-db.config.json
│   └── bot.config.json
├── ScriptClean-Setup.exe
└── Instalar-ScriptClean.bat
```

### 3. Execute o instalador

Duplo clique em **`Instalar-ScriptClean.bat`**

O instalador irá:
1. Pedir o **token** enviado pela ScriptClean
2. Baixar e preparar o ScriptWhatsApp no seu PC
3. Registrar sua licença
4. Criar os atalhos **ScriptWhatsApp - Iniciar** e **ScriptWhatsApp - Reiniciar**

### 4. Inicie o bot

Abra o atalho **ScriptWhatsApp - Iniciar** na área de trabalho.

Na **primeira vez**, escaneie o **QR Code** do WhatsApp. Depois disso, não precisa escanear de novo.

---

## Período de teste (trial)

| Regra | Detalhe |
|-------|---------|
| **Duração** | 2 dias gratuitos |
| **Quando começa** | Na **primeira vez** que o bot ligar |
| **Por computador** | 1 trial por PC — reinstalar não reinicia |
| **Chave de licença** | Aparece na instalação: `SC-XXXXXXXX` — guarde para suporte |
| **Após expirar** | O bot bloqueia até a ScriptClean renovar |

### Trial encerrado?

O bot mostra uma tela de bloqueio com seu **ID de Instalação** e **chave de licença**.

Entre em contato com a ScriptClean pelo WhatsApp informado na compra para renovar.

---

## Uso diário

| Ação | Como fazer |
|------|------------|
| Ligar o bot | Atalho **ScriptWhatsApp - Iniciar** |
| Reiniciar | Atalho **ScriptWhatsApp - Reiniciar** |
| Ver licença | No WhatsApp admin: `#licenca` |
| Exportar leads | No WhatsApp admin: `#exportar` |

---

## Comandos no WhatsApp (admin)

| Comando | Função |
|---------|--------|
| `#painel` | Painel de administração |
| `#licenca` | Ver status da licença |
| `#rr` | Reiniciar o bot |
| `#exportar` | Baixar leads (CSV, Excel, PDF) |
| `#meugrupo` | (no grupo) Ver ID do grupo |

---

## Suporte

- **Site:** [scriptclean.com.br](https://scriptclean.com.br)
- **WhatsApp:** número informado na compra

---

**ScriptClean -Solutions-** · BUILD 2026

*Uso licenciado. Não copiar nem redistribuir.*
