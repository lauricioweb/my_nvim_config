-- Arquivo: keymaps.lua

-- Função para definir atalhos de forma mais simples
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }  -- Opções: 'noremap' evita recursão, 'silent' esconde comandos no terminal

-- Modos de chave:
-- 'n' = modo normal
-- 'i' = modo inserção
-- 'v' = modo visual
-- 'x' = modo visual com linha

-- Exemplos de atalhos configurados:

-- SALVAR E SAIR
map('n', '<C-s>', ':w<CR>', opts)  -- Salvar com Ctrl+s no modo normal
map('i', '<C-s>', '<Esc>:w<CR>a', opts)  -- Salvar com Ctrl+s no modo inserção
map('n', '<C-q>', ':q<CR>', opts)  -- Sair com Ctrl+q no modo normal

-- NAVEGAÇÃO ENTRE JANELAS
map('n', '<C-h>', '<C-w>h', opts)  -- Mover para janela à esquerda
map('n', '<C-j>', '<C-w>j', opts)  -- Mover para janela abaixo
map('n', '<C-k>', '<C-w>k', opts)  -- Mover para janela acima
map('n', '<C-l>', '<C-w>l', opts)  -- Mover para janela à direita

-- NAVEGAÇÃO NO BUFFER
map('n', '<Tab>', ':bnext<CR>', opts)  -- Próximo buffer com Tab
map('n', '<S-Tab>', ':bprevious<CR>', opts)  -- Buffer anterior com Shift+Tab

-- INDENTAÇÃO NO MODO VISUAL
map('v', '<', '<gv', opts)  -- Indentar à esquerda e manter seleção
map('v', '>', '>gv', opts)  -- Indentar à direita e manter seleção

-- MOVER LINHAS PARA CIMA/BAIXO NO MODO VISUAL
map('v', '<A-j>', ':m .+1<CR>==', opts)  -- Mover linha visualmente selecionada para baixo
map('v', '<A-k>', ':m .-2<CR>==', opts)  -- Mover linha visualmente selecionada para cima

-- COMENTAR CÓDIGO RÁPIDO
-- Instalar plugin 'tpope/vim-commentary' para funcionar
map('n', '<C-/>', ':Commentary<CR>', opts)  -- Comentar/descomentar linha no modo normal
map('v', '<C-/>', ':Commentary<CR>', opts)  -- Comentar/descomentar seleção no modo visual

-- EXPANDIR/FECHAR ÁRVORE DO NERDTree (plugin precisa estar instalado)
map('n', '<C-n>', ':NERDTreeToggle<CR>', opts)  -- Toggle NERDTree com Ctrl+n

-- ABRIR TERMINAL FLUTUANTE
-- Necessário plugin 'akinsho/toggleterm.nvim'
map('n', '<C-t>', ':ToggleTerm<CR>', opts)  -- Toggle terminal com Ctrl+t

-- EXEMPLOS DE PLUGINS RELACIONADOS
-- Plug 'tpope/vim-commentary'  -- Para facilitar a adição de comentários
-- Plug 'preservim/nerdtree'  -- Árvore de diretórios
-- Plug 'akinsho/toggleterm.nvim'  -- Terminal flutuante

-- OUTROS ATALHOS PERSONALIZÁVEIS:
-- map('n', '<C-p>', ':Telescope find_files<CR>', opts)  -- Abrir Telescope para encontrar arquivos
-- map('n', '<C-f>', ':Telescope live_grep<CR>', opts)  -- Procurar no projeto com o Telescope

-- Basta modificar os atalhos de acordo com sua necessidade e salvar o arquivo.
