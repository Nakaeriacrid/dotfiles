-- Configuração de monitor https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

-- Auto inicialização https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function ()
  hl.exec_cmd("waybar & hyprpaper & mako & openrgb --noautoconnect -p Vermeio")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)

-- Hibernar sistema
hl.on("hyprland.shutdown", function()
  hl.exec_cmd("openrgb --noautoconnect -p Preto")
end)

-- Permissões https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
hl.config({ 
  ecosystem = {
    enforce_permissions = true
  },
})
  hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
  hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
  hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")
  hl.permission("/usr/(bin|local/bin)/hyprpicker", "screencopy", "allow")

-- Input https://wiki.hypr.land/Configuring/Basics/Variables/#input
hl.config({
    input = {
        kb_layout  = "br",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0,
    },
})

--Puxar outros arquivos
require("envs") --Variaveis de ambiente
require("windowrules") -- Regras do comportamento de janelas
require("atalhos") -- Aplicativos padrões e teclas de atalho
require("aparencia") -- Aparencia geral do Hyprland