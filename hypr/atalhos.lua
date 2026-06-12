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

hl.bind(spr .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")) -- SUPER+M fecha o hyprland
hl.bind(spr .. " + C", hl.dsp.window.close()) -- SUPER+C fecha a janela ativa
hl.bind(spr .. " + I", hl.dsp.exec_cmd("pkill waybar && waybar")) -- SUPER+I recarrega o Waybar, util para ver mudanças na configuração mais facilmente
hl.bind(spr .. " + F", hl.dsp.window.fullscreen({mode = fullscreen, action = toggle})) -- SUPER+F coloca a janela ativa em tela cheia
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -s -m active --mode window")) -- PrintScreen captura a tela sem interação
hl.bind(alt .. " + Print", hl.dsp.exec_cmd("hyprshot -m region -z")) -- ALT+PrintScreen captura a tela com seleção de area
hl.bind(spr .. " + Q", hl.dsp.exec_cmd(terminal)) -- SUPER+Q abre o terminal
hl.bind(spr .. " + X", hl.dsp.exec_cmd(menu)) -- SUPER+X abre o menu de aplicativos
hl.bind(spr .. " + W", hl.dsp.exec_cmd(filemanager)) -- SUPER+W abre o gerenciador de arquivos
hl.bind(spr .. " + L", hl.dsp.exec_cmd(browser)) -- SUPER+L abre o navegador
hl.bind(alt .. " + V", hl.dsp.exec_cmd(discord)) -- ALT+V abre o cliente de Discord
hl.bind(alt .. " + S", hl.dsp.exec_cmd("steam")) -- ALT+S abre a Steam
hl.bind(alt .. " + L", hl.dsp.exec_cmd("lutris")) -- ALT+L abre o Lutris
hl.bind(alt .. " + P", hl.dsp.exec_cmd("prismlauncher")) -- ALT+P abre o Prism Launcher
hl.bind(alt .. " + C", hl.dsp.exec_cmd("code-oss")) -- ALT+C abre o code-oss
hl.bind(alt .. " + H", hl.dsp.exec_cmd("heroic")) -- ALT+H abre o Heroic

hl.bind(spr .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true }) -- permite mover a janela ativa com a tecla SUPER + botão esquerdo do mouse

hl.bind(spr .. " + mouse:273", hl.dsp.window.resize(), { mouse = true }) -- permite redimensionar a janela ativa com a tecla SUPER + botao direito do mouse

hl.bind(spr .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" })) 
hl.bind(spr .. " + mouse_up",   hl.dsp.focus({ workspace = "e+1" })) -- permite mudar de espaço de trabalho com a tecla SUPER + roda do mouse

for i = 1, 10 do -- permite mudar de espaço do trabalho com a tecla SUPER + as teclas numéricas
    local key = i % 10 
    hl.bind(spr .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(spr .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i })) 
end




