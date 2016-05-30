applet.currentConfigGroup = ["Shortcuts"]
applet.writeConfig("global", "Alt+F1")

applet.currentConfigGroup = ["General"]
applet.writeConfig("favoriteApps", ["systemsettings.desktop", "org.kde.ksysguard.desktop", "octopi.desktop", "vokoscreen.desktop"])
applet.writeConfig("limitDepth", true)

applet.reloadConfig();
