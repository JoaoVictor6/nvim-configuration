# Neovim Keymaps Cheatsheet

### 📁 Navegação de Arquivos & Busca (Telescope / NvimTree)
| Atalho | Ação |
| :--- | :--- |
| `<C-b>` | Abre/Fecha o NvimTree (Explorador lateral) |
| `<space>ff` | Busca arquivos por nome (Telescope Find Files) |
| `<space>fg` | Busca texto/conteúdo dentro dos arquivos (Telescope Live Grep) |
| `<space>fb` | Lista os buffers/abas abertas (Telescope Buffers) |

### 📑 Gestão de Abas (Barbar)
| Atalho | Ação |
| :--- | :--- |
| `<space>bn` | Vai para a próxima aba (BufferNext) |
| `<space>bb` | Vai para a aba anterior (BufferPrevious) |
| `<space>bx` | Fecha a aba atual (BufferClose) |

### 🛠️ LSP e Inteligência de Código
| Atalho | Ação |
| :--- | :--- |
| `K` | Mostra informações/documentação ao passar o mouse sobre a variável (Hover) |
| `gd` | Vai para a definição (Go to Definition) |
| `gD` | Vai para a declaração (Go to Declaration) |
| `gi` | Vai para a implementação (Go to Implementation) |
| `go` | Vai para a definição de tipo (Type Definition) |
| `gr` | Mostra todas as referências (References) |
| `gs` | Ajuda de assinatura de função (Signature Help) |
| `ca` ou `<space>ca` | Abre o menu de Code Actions (Ações sugeridas do LSP) |
| `<F2>` | Renomeia uma variável globalmente (LSP Nativo) |
| `<space>rn` | Renomeia uma variável de forma interativa na tela (IncRename plugin) |
| `<F3>` | Formata o código do arquivo atual |

### ⚠️ Diagnósticos e Problemas (Trouble.nvim)
| Atalho | Ação |
| :--- | :--- |
| `<space>xx` | Abre o painel geral de erros e avisos (Trouble Diagnostics) |
| `<space>xX` | Mostra os erros referentes **apenas ao arquivo atual** |
| `<space>cs` | Abre o painel de Símbolos do arquivo (Classes, Funções) |
| `<space>cl` | Abre os resultados de busca do LSP no painel (Definições, Referências) |
| `<space>xL` | Abre a Location List do Trouble |
| `<space>xQ` | Abre a Quickfix List do Trouble |

### 🐙 Git (Gitsigns)
| Atalho | Ação |
| :--- | :--- |
| `<space>gl` | Mostra quem fez a alteração (Git Blame) flutuando na linha atual |

### 📐 Folds (Minimização de código) - Vim Nativo
| Atalho | Ação |
| :--- | :--- |
| `zR` | Abre todos os blocos de código minimizados |
| `zM` | Fecha todos os blocos de código abertos |
| `za` | Alterna (Abre/Fecha) o bloco onde o cursor está no momento |
