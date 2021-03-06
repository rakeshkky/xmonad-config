Config {
    position = Top,
    font = "xft:Bitstream Vera Sans Mono:size=9:bold:antialias=true",
    bgColor = "#000000",
    fgColor = "#ffffff",
    lowerOnStart = False,
    overrideRedirect = False,
    allDesktops = True,
    persistent = True,
    commands = [
          Run MultiCpu ["-t","♥<total0> <total1> <total2> <total3> ","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10
        , Run Memory ["-t","♠ <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10
        , Run Swap ["-t","<usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10
        , Run DynNetwork [ "-t"
                       , "<icon=/home/rakesh/Desktop/xmonad/xmobar/icons/wifi_02.xbm/> <rx><icon=/home/rakesh/Desktop/xmonad/xmobar/icons/net_down_03.xbm/> <tx><icon=/home/rakesh/Desktop/xmonad/xmobar/icons/net_up_03.xbm/>"
                       , "-H" , "200" , "-L" , "10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"
                       ] 10
        , Run Date "<icon=/home/rakesh/Desktop/xmonad/xmobar/icons/clock.xbm/>%H:%M %a %b %d" "date" 10
        , Run Battery        [ "--template" , "⚡ <acstatus>"
                             , "--Low"      , "10"        -- units: %
                             , "--High"     , "80"        -- units: %
                             , "--low"      , "red"
                             , "--normal"   , "orange"
                             , "--high"     , "green"

                             , "--" -- battery specific options
                                       -- discharging status
                                       , "-o"	, "<left>% (<timeleft>)"
                                       -- AC "on" status
                                       , "-O"	, "<fc=#dAA520>Charging</fc> (<left>%)"
                                       -- charged status
                                       , "-i"	, "<fc=#006000>Charged</fc> (<left>%)"
                                       -- battery low notification
                                       , "-a"   , "notify-send -u critical 'Battery Running out!!' 'Please plug in the charger'"
                             ] 50
        , Run Volume "default" "Master" ["-t", "♫ <volume>%"] 1
        , Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu% %memory% %swap% %dynnetwork% %default:Master% %date% %battery%"
}
