<div align="center">

# ScriptClean — ScriptWhatsApp v3.0

**Bot de atendimento WhatsApp profissional**

🌐 [scriptclean.com.br](https://scriptclean.com.br) · ScriptClean -Solutions-

![Node.js](https://img.shields.io/badge/Node.js-18%2B-339933?style=flat-square&logo=node.js)
![Windows](https://img.shields.io/badge/Windows-10%2F11-0078D6?style=flat-square&logo=windows)
![Trial](https://img.shields.io/badge/Teste%20gratis-2%20dias-success?style=flat-square)
![Versão](https://img.shields.io/badge/ScriptWhatsApp-v3.0-blueviolet?style=flat-square)

</div>

---

## Teste grátis por 2 dias — depois compre se gostar

**Não precisa comprar antes.** Baixe, instale e use o ScriptWhatsApp no seu PC.

| Etapa | O que acontece |
|-------|----------------|
| **1. Baixar** | Você baixa este pacote (grátis) |
| **2. Instalar** | Configura seu WhatsApp e executa o instalador |
| **3. Testar** | **2 dias gratuitos** a partir da 1ª vez que o bot ligar |
| **4. Comprar** | Gostou? Entre em contato com a ScriptClean para licença completa |

> Servidor de licenças e validação **já vêm configurados** neste pacote.  
> Você só informa **seu número de admin** e o **grupo WhatsApp** da sua empresa.

---

## O que vem neste pacote

| Arquivo | Função |
|---------|--------|
| `Instalar-ScriptClean.bat` | Instalador — **execute este arquivo** |
| `ScriptClean-Setup.exe` | Auxiliar (não abrir sozinho) |
| `config/license-db.config.json` | Servidor de licenças (já pronto) |
| `config/bot.config.json` | **Você preenche** — seu admin e grupo |
| `config/install.token` | Token para baixar o bot (incluído pela ScriptClean) |

---

## Requisitos

| Item | Link |
|------|------|
| Windows 10 ou 11 | — |
| Node.js 18+ | [nodejs.org](https://nodejs.org) |
| Git | [git-scm.com](https://git-scm.com) |
| Internet estável | WhatsApp + validação de licença |

---

## Instalação (teste grátis)

> **Importante:** execute **`Instalar-ScriptClean.bat`** — **não** abra `ScriptClean-Setup.exe` sozinho.

### 1. Baixe o pacote

**Recomendado:** baixe **`ScriptClean-Cliente-v3.0.zip`** em [Releases](https://github.com/ALN2025/scriptclean-launcher/releases) (pacote completo para instalar).

Ou baixe o código em **Code → Download ZIP** (se vier sem `install.token`, peça o pacote completo à ScriptClean).

```bat
git clone https://github.com/ALN2025/scriptclean-launcher.git
cd scriptclean-launcher
```

> O ZIP da Release já inclui tudo para instalar. O `git clone` sozinho pode não trazer o token de download do bot.

### 2. Configure seu WhatsApp

Edite `config/bot.config.json` com **seus** dados:

```json
{
  "ADMIN_NUMBER": "+5551999999999",
  "ALLOWED_GROUP_ID": "120363407610857946@g.us"
}
```

| Campo | O que é |
|-------|---------|
| `ADMIN_NUMBER` | Seu WhatsApp com DDI (`+55...`) — recebe comandos admin |
| `ALLOWED_GROUP_ID` | ID do grupo onde o bot atua — use `#meugrupo` no grupo após ligar o bot |

> `license-db.config.json` e `install.token` **já vêm prontos** — não precisa alterar.

### 3. Execute o instalador

Duplo clique em **`Instalar-ScriptClean.bat`**.

O instalador irá:
1. Baixar o ScriptWhatsApp na pasta `bot-whatsapp/`
2. Registrar **trial de 2 dias** no seu PC (MEK/HWID)
3. Instalar dependências e criar atalhos **ScriptWhatsApp - Iniciar** / **Reiniciar**

### 4. Inicie o bot

Abra o atalho **ScriptWhatsApp - Iniciar** na área de trabalho.

Na **primeira vez**, escaneie o **QR Code** do WhatsApp.

---

## Período de teste (trial)

| Regra | Detalhe |
|-------|---------|
| **Duração** | **2 dias gratuitos** |
| **Quando começa** | Na **primeira vez** que o bot ligar |
| **Por computador** | 1 trial por PC — reinstalar não reinicia |
| **Chave** | Aparece na instalação: `SC-XXXXXXXX` — guarde para suporte |
| **Após expirar** | O bot bloqueia até você **contratar a licença** |

### Trial encerrado? Gostou do bot?

Entre em contato com a **ScriptClean** e informe sua **chave de licença** (`SC-...`) e **ID de Instalação** (aparecem na tela de bloqueio ou no comando `#licenca`).

- **Site:** [scriptclean.com.br](https://scriptclean.com.br)
- **WhatsApp:** canal de vendas da ScriptClean

Após a compra, a ScriptClean ativa sua licença no servidor — **sem precisar reinstalar**.

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
| `#licenca` | Ver status da licença e trial |
| `#rr` | Reiniciar o bot |
| `#exportar` | Baixar leads (CSV, Excel, PDF) |
| `#meugrupo` | (no grupo) Ver ID do grupo |

---

## Perguntas frequentes

**Preciso comprar antes de testar?**  
Não. Baixe, instale e use 2 dias grátis.

**Preciso configurar servidor ou banco?**  
Não. Tudo já vem neste pacote.

**Posso testar em outro PC?**  
Sim, cada PC tem seu próprio trial de 2 dias.

**E se eu já usei o trial neste PC?**  
O período de teste não reinicia no mesmo computador. Para continuar, contrate a licença.

---

## Suporte e vendas

- **Site:** [scriptclean.com.br](https://scriptclean.com.br)
- **Trial / dúvidas:** WhatsApp da ScriptClean
- **Comprar licença:** informe sua chave `SC-...` após o trial

---

**ScriptClean -Solutions-** · BUILD 2026

*Uso licenciado. Não copiar nem redistribuir.*
