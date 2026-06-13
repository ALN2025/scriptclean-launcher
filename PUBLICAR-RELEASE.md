# ScriptClean — publicar pacote para clientes

O token **nao pode** ir para o GitHub publico (o GitHub bloqueia o push).

## Fluxo (voce, dono)

1. Coloque o token em `config/install.token` (so na sua maquina)
2. Execute **`Montar-Pacote-Cliente.bat`**
3. Gera **`ScriptClean-Cliente-v3.0.zip`**
4. No GitHub: **scriptclean-launcher → Releases → New release**
   - Tag: `v3.0.0`
   - Anexe o ZIP
5. Clientes baixam o ZIP da Release e rodam `Instalar-ScriptClean.bat`

O token fica **dentro do ZIP**, nao no codigo-fonte do GitHub.
