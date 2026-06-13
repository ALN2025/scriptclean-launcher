# ScriptWhatsApp v3.0 — Código-fonte (privado)

**ScriptClean -Solutions-** · Repositório de desenvolvimento.

Distribuição ao cliente: [scriptclean-launcher](https://github.com/ALN2025/scriptclean-launcher) (ZIP + `Instalar-ScriptClean.bat`).

---

## Novidades v3.0.3

- Modo restrito por grupo — anti-spam no privado
- Admin `#menu` / `#painel` com suporte a ID `@lid`
- Painel verbose com contadores **Trial** e **PRO**
- Bloqueio de **2 instâncias** no mesmo PC
- Instalação limpa: `cleanup-client.js` remove arquivos de dev
- Licença MEK estável + trial 2 dias (MySQL VPS)

---

## Requisitos (dev)

| Item | Versão |
|------|--------|
| Windows | 10 / 11 |
| Node.js | 18.18+ |
| .NET Framework | 4.x |
| MySQL (VPS) | 5.5+ — banco `scriptbd` |

---

## Configuração local

```bat
copy config\bot.config.example.json config\bot.config.json
copy config\license-db.config.example.json config\license-db.config.json
```

---

## Desenvolvimento

```bat
npm install
node scripts\test-mysql.js
node scripts\setup-install.js
Compilar-Tudo.bat
Iniciar-ScriptWhatsApp.bat
```

---

## Ferramentas

| Arquivo | Função |
|---------|--------|
| `Manutencao-ScriptClean.bat` | Menu VPS/local (git pull, admin, reiniciar) |
| `scripts/cleanup-client.js` | Remove arquivos dev após instalação cliente |
| `database/scriptclean_licenses.sql` | Tabelas MySQL (só VPS / Navicat) |

---

## Regra importante

**1 PC = 1 bot = 1 licença.** Não abrir duas janelas no mesmo computador.

---

**ScriptClean -Solutions-** · Dev ⩿ A.L.N/⪀
