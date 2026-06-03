--configura os aplicativos padrões
local terminal = "kitty"
local filemanager = "kitty -e yazi $HOME/"
local menu = "wofi"
local browser = "helium-browser"
local discord = "vesktop --ozone-platform-hint=auto"

-- Teclas de atalho https://wiki.hypr.land/Configuring/Basics/Binds/
-- https://wiki.hypr.land/Configuring/Basics/Dispatchers/#dispatchers-1


local spr = "SUPER" 
local alt = "ALT"

hl.bind(spr .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(spr .. " + C", hl.dsp.window.close())
hl.bind(spr .. " + F", hl.dsp.window.fullscreen({mode = fullscreen, action = toggle}))
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -s -m active --mode window"))
hl.bind(alt .. " + Print", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(spr .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(spr .. " + X", hl.dsp.exec_cmd(menu))
hl.bind(spr .. " + W", hl.dsp.exec_cmd(filemanager))
hl.bind(alt .. " + L", hl.dsp.exec_cmd(browser))
hl.bind(alt .. " + V", hl.dsp.exec_cmd(discord))
hl.bind(alt .. " + S", hl.dsp.exec_cmd("steam"))
hl.bind(alt .. " + L", hl.dsp.exec_cmd("lutris"))
hl.bind(alt .. " + P", hl.dsp.exec_cmd("prismlauncher"))
hl.bind(alt .. " + C", hl.dsp.exec_cmd("code-oss"))
hl.bind(alt .. " + H", hl.dsp.exec_cmd("heroic"))

hl.bind(spr .. " + S", function () --permite colocar uma janela em 'Picture-in-Picture'
  hl.dispatch(hl.dsp.window.float({action = toggle}))
  hl.dispatch(hl.dsp.window.resize({x = 510, y =  292}))
  hl.dispatch(hl.dsp.window.drag())
  hl.dispatch(hl.dsp.window.pin())
  hl.dispatch(hl.dsp.window.alter_zorder({mode = top})) 
end)

hl.bind(spr .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true }) --permite mover a janela ativa com a tecla SUPER + botão esquerdo do mouse

hl.bind(spr .. " + mouse:273", hl.dsp.window.resize(), { mouse = true }) --permite redimensionar a janela ativa com a tecla SUPER + botao direito do mouse

hl.bind(spr .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" })) 
hl.bind(spr .. " + mouse_up",   hl.dsp.focus({ workspace = "e+1" })) --permite mudar de espaço de trabalho com a tecla SUPER + roda do mouse

for i = 1, 10 do
    local key = i % 10 
    hl.bind(spr .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(spr .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i })) --permite mudar de espaço do trabalho com a tecla SUPER + as teclas numéricas
end




