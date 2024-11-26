local M = {}

-- Função principal para processar o texto selecionado
function M.convert_to_tests()
    -- Obter as linhas selecionadas visualmente
    local start_pos = vim.fn.getpos("'<")
    local end_pos = vim.fn.getpos("'>")

    local start_line = start_pos[2] - 1 -- Ajuste para index 0
    local end_line = end_pos[2]

    -- Capturar as linhas no intervalo selecionado
    local lines = vim.api.nvim_buf_get_lines(0, start_line, end_line, false)

    -- Processar cada linha para o formato test.todo('...')
    for i, line in ipairs(lines) do
        lines[i] = "test.todo('" .. line:gsub("^%- ", "") .. "')"
    end

    -- Substituir o texto selecionado pelo resultado processado
    vim.api.nvim_buf_set_lines(0, start_line, end_line, false, lines)
end

-- Registrar o comando :testSuit para chamar a função principal
function M.setup()
    vim.api.nvim_create_user_command(
        'TestSuit',
        function()
          M.convert_to_tests()
          print("🎆 - Test case created with success!")
        end,
        { range = true, desc = "Converte a seleção em test.todo" }
    )
end

return M
