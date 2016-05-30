applet.currentConfigGroup = ["Shortcuts"]
applet.writeConfig("global", "Alt+F1")

applet.currentConfigGroup = ["General"]
applet.writeConfig("favorites", ["systemsettings.desktop", "org.kde.ksysguard.desktop", "octopi.desktop", "vokoscreen.desktop"])

applet.reloadConfig();
