; DogeWallet.iss
;
; Config file for creating a windows installer file for tbe
;


[Setup]
AppName=DogeWallet
AppVersion=0.1.0
DefaultDirName={pf}\DogeWallet
DefaultGroupName=DogeWallet
UninstallDisplayIcon={app}\DogeWallet.exe
Compression=lzma2
SolidCompression=yes
OutputDir=C:\Users\J-Dog\Desktop\
OutputBaseFilename=DogeWallet

; "ArchitecturesInstallIn64BitMode=x64" requests that the install be
; done in "64-bit mode" on x64, meaning it should use the native
; 64-bit Program Files directory and the 64-bit view of the registry.
; On all other architectures it will install in "32-bit mode".
ArchitecturesInstallIn64BitMode=x64

[Registry]
; Add support for dogecoin: urls
Root: HKCR; Subkey: "dogecoin"; ValueType: "string"; ValueData: "URL:dogecoin Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "dogecoin"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "dogecoin\DefaultIcon"; ValueType: "string"; ValueData: "{app}\DogeWallet.exe,0"
Root: HKCR; Subkey: "dogecoin\shell\open\command"; ValueType: "string"; ValueData: """{app}\DogeWallet.exe"" ""%1"""
; Add support for dogeparty: urls
Root: HKCR; Subkey: "dogeparty"; ValueType: "string"; ValueData: "URL:dogeparty Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "dogeparty"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "dogeparty\DefaultIcon"; ValueType: "string"; ValueData: "{app}\DogeWallet.exe,0"
Root: HKCR; Subkey: "dogeparty\shell\open\command"; ValueType: "string"; ValueData: """{app}\DogeWallet.exe"" ""%1"""
; Add support for dogewallet: urls
Root: HKCR; Subkey: "dogewallet"; ValueType: "string"; ValueData: "URL:dogewallet Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "dogewallet"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "dogewallet\DefaultIcon"; ValueType: "string"; ValueData: "{app}\DogeWallet.exe,0"
Root: HKCR; Subkey: "dogewallet\shell\open\command"; ValueType: "string"; ValueData: """{app}\DogeWallet.exe"" ""%1"""

; Override some default messages
[Messages]
WelcomeLabel1=Welcome to [name] Setup Wizard
WelcomeLabel2=This will install [name] on your computer.%n%nIt is recommended that you close all other applications before continuing.

; Include all the files necessary for the tbe build
[Files]
Source: "C:\Users\J-Dog\Desktop\DogeWallet\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

; Setup icon group and icon on desktop
[Icons]
Name: "{group}\DogeWallet";          Filename: "{app}\DogeWallet.exe"
Name: "{commondesktop}\DogeWallet";  Filename: "{app}\DogeWallet.exe"