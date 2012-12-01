/*
 *
 * The Wall
 * Exit1Chg.cmd - Set Enable/Disable Exit After 1st Change
 *
 * Rev.0 (13.Oct.98)
 * > Start from here...
 * Rev.1 (26.Oct.98)
 * > Official Release
 *
 */
say " "
say "The Wall"
say "Exit1Chg - Set Enable/Disable `Exit After 1st Change' Function"

parse arg . "/" option1

mode = "Disabled"
if translate(option1) = "E" then mode = "Enabled"
if translate(option1) = "D" then mode = "Enabled"

if mode = "Enabled" then do
    ini_file = "Wall.ini"
    ini_back = "Wall.$$$"

    /* Backup INI file */
    say " "
    say "- - - - - - - - - - - - - - - - - - - - - - - - - - "
    "@copy "ini_file ini_back
    say "- - - - - - - - - - - - - - - - - - - - - - - - - - "
    say " "

    /* main */
    cnt = 0
    do until lines(ini_back) = 0
        cnt = cnt + 1
        text=strip(linein(ini_back))
        parse var text keyword '=' .

        if keyword = "ExitAfter1stChange" then do
            if translate(option1) = "E" then do
                say "Set Enabled"
                call lineout ini_file, "ExitAfter1stChange=Enabled"
            end
            else if translate(option1) = "D" then do
                say "Set Disabled"
                call lineout ini_file, "ExitAfter1stChange=Disabled"
            end
        end
        else do
            if cnt = 1 then do
                call lineout ini_file, text, 1
            end
            else do
                call lineout ini_file, text
            end
        end
    end
    call lineout ini_file
    call lineout ini_back

    rc = SysFileDelete(ini_back)
    say " "
    say "Fin."
end
else if mode = "Disabled" then do
   say " "
   say "[Usage]"
   say " "
   say " C:\WALL>Exit1Chg /E - Enable `Exit After 1st Change' Function"
   say " C:\WALL>Exit1Chg /D - Disable `Exit After 1st Change' Function"
   say " "
end

exit
