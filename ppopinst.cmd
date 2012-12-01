/*
 * Pretty Pop Installation Program for The Wall, Gismo and Jasmine
 *
 * revision 2 (as of 19.Aug.1998)
 *
 */
call RxFuncAdd 'SysCreateObject', 'RexxUtil', 'SysCreateObject'

DIR = directory()

rc = SysFileTree( "*.exe", "stem.", "of" )
do i = 1 to stem.0
    fn = translate(stem.i)
    fn = right(fn, length(fn) - length(DIR) - 1)
    select
        when fn = "WALL.EXE"    then do
            APL_NAME = "WALL"
            leave
        end
        when fn = "GISMO.EXE"   then do
            APL_NAME = "GISMO"
            leave
        end
        when fn = "JASMINE.EXE" then do
            APL_NAME = "JASMINE"
            leave
        end
        otherwise
            nop
    end
end

say " APL_NAME : "APL_NAME
select
    when APL_NAME = "WALL" then do
        SUB_FOLDER_NAME = "The Wall"
        SUB_FOLDER_ID   = "<WALLFOLDER>"

        SUB_FOLDER_J_NAME = "Japanese"
        SUB_FOLDER_J_ID   = "<WALLFOLDERJPN>"

        SUB_FOLDER_E_NAME = "English"
        SUB_FOLDER_E_ID   = "<WALLFOLDERENG>"

        EXE_FILE = DIR"\Wall.Exe"
    end
    when APL_NAME = "GISMO" then do
        SUB_FOLDER_NAME = "Gismo for OS/2"
        SUB_FOLDER_ID   = "<GISMOFOLDER>"

        SUB_FOLDER_J_NAME = "Japanese"
        SUB_FOLDER_J_ID   = "<GISMOFOLDERJPN>"

        SUB_FOLDER_E_NAME = "English"
        SUB_FOLDER_E_ID   = "<GISMOFOLDERENG>"

        EXE_FILE = DIR"\Gismo.Exe"
        EXE_NAME = "Gismo for OS/2"
    end
    when APL_NAME = "JASMINE" then do
        SUB_FOLDER_NAME = "Jasmine"
        SUB_FOLDER_ID   = "<JASMINEFOLDER>"

        SUB_FOLDER_J_NAME = "Japanese"
        SUB_FOLDER_J_ID   = "<JASMINEFOLDERJPN>"

        SUB_FOLDER_E_NAME = "English"
        SUB_FOLDER_E_ID   = "<JASMINEFOLDERENG>"

        EXE_FILE = DIR"\Jasmine.Exe"
        EXE_NAME = "Jasmine"
    end
    otherwise exit
end

README_J_FILE = DIR"\readme_j.htm"
README_J_NAME = "Readme 日本語版"

SHAREREG_FILE = DIR"\sharereg.htm"
SHAREREG_NAME = "VECTORシェアレジ・シェアウェア送金"

NIFTY_FILE    = DIR"\upload.nifty"
NIFTY_NAME    = "Upload Information for NIFTY-Serve"

README_E_FILE = DIR"\readme_e.htm"
README_E_NAME = "Readme English"

HOBBES_FILE    = DIR"\upload.hobbes"
HOBBES_NAME    = "Upload Information for HOBBES.nmsu.edu"

BMT_FILE    = DIR"\bmtmicro.txt"
BMT_NAME    = "BMT Micro Order Seat"

/* Create Folders */
if SysCreateObject( 'WPFolder', 'Pretty Pop Software', '<WP_DESKTOP>', "OBJECTID=<PRETTYPOPSOFTWARE_FOLDER>", "u" ) then do
    say ' CREATE FOLDER : Pretty Pop Software'
end

if SysCreateObject( 'WPFolder', SUB_FOLDER_NAME, '<PRETTYPOPSOFTWARE_FOLDER>', "OBJECTID="SUB_FOLDER_ID, "u" ) then do
    say " CREATE FOLDER : "SUB_FOLDER_NAME
end

if SysCreateObject( 'WPFolder', SUB_FOLDER_J_NAME, SUB_FOLDER_ID, "OBJECTID="SUB_FOLDER_J_ID, "u" ) then do
    say " CREATE FOLDER : "SUB_FOLDER_J_NAME
end

if SysCreateObject( 'WPFolder', SUB_FOLDER_E_NAME, SUB_FOLDER_ID, "OBJECTID="SUB_FOLDER_E_ID, "u" ) then do
    say " CREATE FOLDER : "SUB_FOLDER_E_NAME
end

/* Create Objects */
if APL_NAME <> "WALL" then do
    if SysCreateObject( 'WPProgram', EXE_NAME, SUB_FOLDER_ID, 'EXENAME='EXE_FILE, "u" ) then do
        say " CREATE OBJECT : "EXE_NAME
    end
end
else if APL_NAME = "WALL" then do
    if SysCreateObject('WPProgram','The Wall','<WP_START>',"EXENAME="EXE_FILE, 'u') then do
        say " CREATE OBJECT : "EXE_FILE
    end

    if SysCreateObject('WPShadow'," ",SUB_FOLDER_ID, "shadowid=<WP_START>", 'r') then do
        say " CREATE SHADOW : Startup Folder"
    end

    if SysCreateObject( 'WPUrl', "Go to the Wall Homepage!", SUB_FOLDER_E_ID, 'URL=file:///'DIR'\go_wall.htm', "u" ) then do
        say " CREATE OBJECT : Go to the Wall Homepage!"
    end

end

if SysCreateObject( 'WPUrl', README_J_NAME, SUB_FOLDER_J_ID, 'URL=file:///'README_J_FILE, "u" ) then do
    say " CREATE OBJECT : "README_J_NAME
end

if SysCreateObject( 'WPUrl', SHAREREG_NAME, SUB_FOLDER_J_ID, 'URL=file:///'SHAREREG_FILE, "u" ) then do
    say " CREATE OBJECT : "SHAREREG_NAME
end

if SysCreateObject( 'WPProgram', NIFTY_NAME, SUB_FOLDER_J_ID, "EXENAME=E.EXE;PARAMETERS="NIFTY_FILE, "u" ) then do
    say " CREATE OBJECT : "NIFTY_NAME
end

if SysCreateObject( 'WPUrl', README_E_NAME, SUB_FOLDER_E_ID, 'URL=file:///'README_E_FILE, "u" ) then do
    say " CREATE OBJECT : "README_E_NAME
end

if SysCreateObject( 'WPProgram', HOBBES_NAME, SUB_FOLDER_E_ID, "EXENAME=E.EXE;PARAMETERS="HOBBES_FILE, "u" ) then do
    say " CREATE OBJECT : "HOBBES_NAME
end

if SysCreateObject( 'WPProgram', BMT_NAME, SUB_FOLDER_E_ID, "EXENAME=E.EXE;PARAMETERS="BMT_FILE, "u" ) then do
    say " CREATE OBJECT : "BMT_NAME
end
