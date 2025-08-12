#!/usr/bin/env bash

### START-OF-ICON-MAP
function __icon_map() {
    case "$1" in
   "Live")
        icon_result="🎵"
        ;;
   "Adobe Bridge"*)
        icon_result="🖼️"
        ;;
   "Affinity Designer")
        icon_result="🎨"
        ;;
   "Affinity Designer 2")
        icon_result="🎨"
        ;;
   "Affinity Photo")
        icon_result="📷"
        ;;
   "Affinity Photo 2")
        icon_result="📷"
        ;;
   "Affinity Publisher")
        icon_result="📄"
        ;;
   "Affinity Publisher 2")
        icon_result="📄"
        ;;
   "Airmail")
        icon_result="📧"
        ;;
   "Alacritty")
        icon_result="💻"
        ;;
   "Alfred")
        icon_result="🔍"
        ;;
   "Android Messages")
        icon_result="💬"
        ;;
   "Android Studio")
        icon_result="📱"
        ;;
   "Anytype")
        icon_result="📝"
        ;;
   "App Eraser")
        icon_result="🗑️"
        ;;
   "App Store")
        icon_result="🛒"
        ;;
   "Arc")
        icon_result="🌐"
        ;;
   "Atom")
        icon_result="💻"
        ;;
   "Audacity")
        icon_result="🎤"
        ;;
   "Bambu Studio")
        icon_result="🖨️"
        ;;
   "MoneyMoney")
        icon_result="💰"
        ;;
   "Battle.net")
        icon_result="🎮"
        ;;
   "Bear")
        icon_result="🐻"
        ;;
   "BetterTouchTool")
        icon_result="⚙️"
        ;;
   "Bilibili" | "哔哩哔哩")
        icon_result="📺"
        ;;
   "Bitwarden")
        icon_result="🔐"
        ;;
   "Blender")
        icon_result="🎬"
        ;;
   "BluOS Controller")
        icon_result="🎵"
        ;;
   "Calibre")
        icon_result="📚"
        ;;
   "Brave Browser")
        icon_result="🦁"
        ;;
   "Calculator" | "Calculette")
        icon_result="🧮"
        ;;
   "Calendar" | "日历" | "Fantastical" | "Cron" | "Amie" | "Calendrier" | "Notion Calendar")
        icon_result="📅"
        ;;
   "Caprine")
        icon_result="💬"
        ;;
   "Citrix Workspace" | "Citrix Viewer")
        icon_result="🖥️"
        ;;
   "ClickUp")
        icon_result="📋"
        ;;
   "Code" | "Code - Insiders")
        icon_result="💻"
        ;;
   "Color Picker" | "数码测色计")
        icon_result="🎨"
        ;;
   "CotEditor")
        icon_result="📝"
        ;;
   "Creative Cloud")
        icon_result="☁️"
        ;;
   "Cursor")
        icon_result="💻"
        ;;
   "Dia")
        icon_result="🌐"
        ;;
   "Cypress")
        icon_result="🧪"
        ;;
   "DataGrip")
        icon_result="🗄️"
        ;;
   "DataSpell")
        icon_result="🔬"
        ;;
   "DaVinci Resolve")
        icon_result="🎬"
        ;;
   "Default")
        icon_result="📄"
        ;;
   "CleanMyMac X")
        icon_result="🖥️"
        ;;
   "DEVONthink 3")
        icon_result="🧠"
        ;;
   "DingTalk" | "钉钉" | "阿里钉")
        icon_result="💬"
        ;;
   "Discord" | "Discord Canary" | "Discord PTB")
        icon_result="🎮"
        ;;
   "Docker" | "Docker Desktop")
        icon_result="🐳"
        ;;
   "GrandTotal" | "Receipts")
        icon_result="💰"
        ;;
   "Double Commander")
        icon_result="📁"
        ;;
   "Drafts")
        icon_result="📝"
        ;;
   "Dropbox")
        icon_result="📦"
        ;;
   "Element")
        icon_result="💬"
        ;;
   "Emacs")
        icon_result="💻"
        ;;
   "Evernote Legacy")
        icon_result="🐘"
        ;;
   "FaceTime" | "FaceTime 通话")
        icon_result="📹"
        ;;
   "Figma")
        icon_result="🎨"
        ;;
   "Final Cut Pro")
        icon_result="🎬"
        ;;
   "Finder" | "访达")
        icon_result="📁"
        ;;
   "Firefox")
        icon_result="🦊"
        ;;
   "Firefox Developer Edition" | "Firefox Nightly")
        icon_result="🦊"
        ;;
   "Folx")
        icon_result="⬇️"
        ;;
   "Fusion")
        icon_result="🎬"
        ;;
   "System Preferences" | "System Settings" | "系统设置" | "Réglages Système")
        icon_result="⚙️"
        ;;
   "GitHub Desktop")
        icon_result="🐙"
        ;;
   "Godot")
        icon_result="🎮"
        ;;
   "GoLand")
        icon_result="💻"
        ;;
   "Chromium" | "Google Chrome" | "Google Chrome Canary")
        icon_result="🌐"
        ;;
   "Grammarly Editor")
        icon_result="✍️"
        ;;
   "Home Assistant")
        icon_result="🏠"
        ;;
   "Hyper")
        icon_result="💻"
        ;;
   "IntelliJ IDEA")
        icon_result="💻"
        ;;
   "Inkdrop")
        icon_result="📝"
        ;;
   "Inkscape")
        icon_result="🎨"
        ;;
   "Insomnia")
        icon_result="🌙"
        ;;
   "Iris")
        icon_result="👁️"
        ;;
   "iTerm" | "iTerm2")
        icon_result="💻"
        ;;
   "Jellyfin Media Player")
        icon_result="📺"
        ;;
   "Joplin")
        icon_result="📝"
        ;;
   "카카오톡" | "KakaoTalk")
        icon_result="💬"
        ;;
   "Kakoune")
        icon_result="💻"
        ;;
   "KeePassXC")
        icon_result="🔐"
        ;;
   "Keyboard Maestro")
        icon_result="⌨️"
        ;;
   "Keynote" | "Keynote 讲演")
        icon_result="📊"
        ;;
   "kitty")
        icon_result="🐱"
        ;;
   "League of Legends")
        icon_result="⚔️"
        ;;
   "LibreWolf")
        icon_result="🐺"
        ;;
   "Adobe Lightroom")
        icon_result="📷"
        ;;
   "Lightroom Classic")
        icon_result="📷"
        ;;
   "LINE")
        icon_result="💬"
        ;;
   "Linear")
        icon_result="📋"
        ;;
   "LM Studio")
        icon_result="🤖"
        ;;
   "LocalSend")
        icon_result="📤"
        ;;
   "Logic Pro")
        icon_result="🎵"
        ;;
   "Logseq")
        icon_result="📝"
        ;;
   "Canary Mail" | "HEY" | "Mail" | "Mailspring" | "MailMate" | "Superhuman" | "Spark" | "邮件")
        icon_result="📧"
        ;;
   "MAMP" | "MAMP PRO")
        icon_result="🐘"
        ;;
   "Maps" | "Google Maps")
        icon_result="🗺️"
        ;;
   "Matlab")
        icon_result="📊"
        ;;
   "Mattermost")
        icon_result="💬"
        ;;
   "Messages" | "信息" | "Nachrichten")
        icon_result="💬"
        ;;
   "Messenger")
        icon_result="💬"
        ;;
   "Microsoft Edge")
        icon_result="🌐"
        ;;
   "Microsoft Excel")
        icon_result="📊"
        ;;
   "Microsoft Outlook")
        icon_result="📧"
        ;;
   "Microsoft PowerPoint")
        icon_result="📊"
        ;;
   "Microsoft Remote Desktop")
        icon_result="🖥️"
        ;;
   "Microsoft Teams" | "Microsoft Teams (work or school)")
        icon_result="💬"
        ;;
   "Microsoft Word")
        icon_result="📄"
        ;;
   "Min")
        icon_result="🌐"
        ;;
   "Miro")
        icon_result="🎨"
        ;;
   "MongoDB Compass"*)
        icon_result="🍃"
        ;;
   "mpv")
        icon_result="🎬"
        ;;
   "Mullvad Browser")
        icon_result="🌐"
        ;;
   "Music" | "音乐" | "Musique")
        icon_result="🎵"
        ;;
   "Neovide" | "neovide")
        icon_result="💻"
        ;;
   "Neovim" | "neovim" | "nvim")
        icon_result="💻"
        ;;
   "网易云音乐")
        icon_result="🎵"
        ;;
   "Noodl" | "Noodl Editor")
        icon_result="🎨"
        ;;
   "NordVPN")
        icon_result="🔒"
        ;;
   "Notability")
        icon_result="✏️"
        ;;
   "Notes" | "备忘录")
        icon_result="📝"
        ;;
   "Notion")
        icon_result="📝"
        ;;
   "Nova")
        icon_result="💻"
        ;;
   "Numbers" | "Numbers 表格")
        icon_result="📊"
        ;;
   "Obsidian")
        icon_result="💎"
        ;;
   "OBS")
        icon_result="📹"
        ;;
   "OmniFocus")
        icon_result="📋"
        ;;
   "1Password")
        icon_result="🔐"
        ;;
   "ChatGPT")
        icon_result="🤖"
        ;;
   "OpenVPN Connect")
        icon_result="🔒"
        ;;
   "Opera")
        icon_result="🌐"
        ;;
   "OrcaSlicer")
        icon_result="🖨️"
        ;;
   "Orion" | "Orion RC")
        icon_result="🌐"
        ;;
   "Pages" | "Pages 文稿")
        icon_result="📄"
        ;;
   "Parallels Desktop")
        icon_result="🖥️"
        ;;
   "Parsec")
        icon_result="🎮"
        ;;
   "Preview" | "预览" | "Skim" | "zathura" | "Aperçu")
        icon_result="📄"
        ;;
   "PDF Expert")
        icon_result="📄"
        ;;
   "Adobe Photoshop"*)
        icon_result="🎨"
        ;;
   "PhpStorm")
        icon_result="💻"
        ;;
   "Pi-hole Remote")
        icon_result="🕳️"
        ;;
   "Pine")
        icon_result="📝"
        ;;
   "Podcasts" | "播客")
        icon_result="🎧"
        ;;
   "PomoDone App")
        icon_result="🍅"
        ;;
   "Postman")
        icon_result="📮"
        ;;
   "Proton Mail" | "Proton Mail Bridge")
        icon_result="📧"
        ;;
   "PrusaSlicer" | "SuperSlicer")
        icon_result="🖨️"
        ;;
   "PyCharm")
        icon_result="💻"
        ;;
   "QQ")
        icon_result="💬"
        ;;
   "QQ音乐" | "QQMusic")
        icon_result="🎵"
        ;;
   "Quantumult X")
        icon_result="🔒"
        ;;
   "qutebrowser")
        icon_result="🌐"
        ;;
   "Raindrop.io")
        icon_result="📚"
        ;;
   "Reeder")
        icon_result="📰"
        ;;
   "Reminders" | "提醒事项" | "Rappels")
        icon_result="⏰"
        ;;
   "Replit")
        icon_result="💻"
        ;;
   "Rider" | "JetBrains Rider")
        icon_result="💻"
        ;;
   "Safari" | "Safari浏览器" | "Safari Technology Preview")
        icon_result="🌐"
        ;;
   "Sequel Ace")
        icon_result="🗄️"
        ;;
   "Sequel Pro")
        icon_result="🗄️"
        ;;
   "Setapp")
        icon_result="🛒"
        ;;
   "SF Symbols")
        icon_result="🔧"
        ;;
   "Signal")
        icon_result="💬"
        ;;
   "Sketch")
        icon_result="🎨"
        ;;
   "Skype")
        icon_result="💬"
        ;;
   "Slack")
        icon_result="💬"
        ;;
   "Spark Desktop")
        icon_result="📧"
        ;;
   "Spotify")
        icon_result="🎵"
        ;;
   "Spotlight")
        icon_result="🔍"
        ;;
   "Sublime Text")
        icon_result="💻"
        ;;
   "Tana")
        icon_result="📝"
        ;;
   "TeamSpeak 3")
        icon_result="💬"
        ;;
   "Telegram")
        icon_result="📱"
        ;;
   "Terminal" | "终端")
        icon_result="💻"
        ;;
   "Typora")
        icon_result="📝"
        ;;
   "Microsoft To Do" | "Things")
        icon_result="📋"
        ;;
   "Thunderbird")
        icon_result="📧"
        ;;
   "TickTick")
        icon_result="⏰"
        ;;
   "TIDAL")
        icon_result="🎵"
        ;;
   "Tiny RDM")
        icon_result="🗄️"
        ;;
   "Todoist")
        icon_result="📋"
        ;;
   "Toggl Track")
        icon_result="⏱️"
        ;;
   "Tor Browser")
        icon_result="🌐"
        ;;
   "Tower")
        icon_result="🏗️"
        ;;
   "Transmit")
        icon_result="📤"
        ;;
   "Trello")
        icon_result="📋"
        ;;
   "Tweetbot" | "Twitter")
        icon_result="🐦"
        ;;
   "MacVim" | "Vim" | "VimR")
        icon_result="💻"
        ;;
   "Vivaldi")
        icon_result="🌐"
        ;;
   "VLC")
        icon_result="🎬"
        ;;
   "VMware Fusion")
        icon_result="🖥️"
        ;;
   "VSCodium")
        icon_result="💻"
        ;;
   "Warp")
        icon_result="💻"
        ;;
   "WebStorm")
        icon_result="💻"
        ;;
   "微信" | "WeChat")
        icon_result="💬"
        ;;
   "企业微信" | "WeCom")
        icon_result="💬"
        ;;
   "WezTerm")
        icon_result="💻"
        ;;
   "WhatsApp" | "‎WhatsApp")
        icon_result="💬"
        ;;
   "Xcode")
        icon_result="💻"
        ;;
   "Яндекс Музыка")
        icon_result="🎵"
        ;;
   "Yuque" | "语雀")
        icon_result="📝"
        ;;
   "Zed")
        icon_result="💻"
        ;;
   "Zeplin")
        icon_result="🎨"
        ;;
   "zoom.us")
        icon_result="📹"
        ;;
   "Zotero")
        icon_result="📚"
        ;;
   "Zulip")
        icon_result="💬"
        ;;
    *)
        icon_result="📄"
        ;;
    esac
}
### END-OF-ICON-MAP
# __icon_map "$1"
echo "$icon_result"
