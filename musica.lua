--[[
 Copyright (c) 2012, Leinad4Mind
 All rights reserved®.
 
 Um grande agradecimento a todos os meus amigos
 que sempre me apoiaram, e a toda a comunidade
 de anime portuguesa.
--]]

local tr = aegisub.gettext

script_name = "Notas Musicais"
script_description = "Colocar notas musicais ♪ nas linhas seleccionadas"
script_author = "Leinad4Mind"
script_version = "1.0"

function nota_musical(subs, sel)
    for _, i in ipairs(sel) do
        local linha = subs[i]
        linha.text = linha.text:gsub("(.+)", "♪ "..linha.text.." ♪")
        subs[i] = linha
    end
    aegisub.set_undo_point("\""..script_name.."\"")
end

aegisub.register_macro(script_name, script_description, nota_musical)
