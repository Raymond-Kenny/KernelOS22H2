@echo off
title KernelOS Script
mode con: cols=80 lines=20
color a
taskkill /f /im explorer.exe
powershell "Set-ExecutionPolicy -ExecutionPolicy Unrestricted"
set this=-------------------------------------------------------------------------------- ^& echo                                Welcome to KernelOS       				       ^& echo -------------------------------------------------------------------------------- ^& echo OS: Windows 10 22H2 ^& echo Creation Date: 02/09/2024
cls
echo %this%

::Importar powerplan
timeout /t 5 /nobreak >nul
echo.
echo Importing KernelOS powerplan.
powercfg /import "%SYSTEMDRIVE%\KernelOS-Modules\KernelOS Performance v6.1 IDLE ON.pow" 01001011-0100-1111-0101-001188888884 >NUL 2>&1
powercfg /import "%SYSTEMDRIVE%\KernelOS-Modules\UltimatePerformance.pow" 01001011-0100-1111-0101-001188888883 >NUL 2>&1
powercfg /s 01001011-0100-1111-0101-001188888884 >NUL 2>&1
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e >NUL 2>&1
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >NUL 2>&1
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a >NUL 2>&1
timeout /t 5 /nobreak >nul

:{arkgcbj}
cls
echo %this
æ%cho.
echo Installing OpenShell y 7zip...
%SYSTEMDRIVE%\KernelOS-Modules\oss.exe /qn ADDLOCAL=StartMenu >NUL 2>&1
timeout /t 2 /nobreak >nul
%SYSTEMDRIVE%\KernelOS-Modules\7zip.exe /S >NUL 2>&1
echo Please Wait...
timeout /t 2 /nobreak >nul
move "%WINDIR%\KernelOS.skin7" "%PROGRAMFILES%\Open-Shell\Skins\" >NUL 2>&1
timeout /t 2 /nobreak >nul
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu" /v "ShowedStyle2" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "Version" /t REG_DWORD /d "67371168" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkipMetro" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "StartScreenShortcut" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "InvertMetroIcons" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "MainMenuAnimation" /t REG_SZ /d "Slide" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "MainMenuAnimationSpeed" /t REG_DWORD /d "550" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "SubMenuAnimation" /t REG_SZ /d "Slide" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "SubMenuAnimationAlways" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "NumericSort" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "FontSmoothing" /t REG_SZ /d "Default" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "MenuShadow" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "EnableGlass" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "GlassOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "GlassColor" /t REG_DWORD /d "6908265" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "GlassOpacity" /t REG_DWORD /d "100" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinW7" /t REG_SZ /d "KernelOS" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinVariationW7" /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinOptionsW7" /t REG_MULTI_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "CustomTaskbar" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "OpenMouseMonitor" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\OpenShell\StartMenu\Settings" /v "MenuItems7" /t REG_MULTI_SZ /d "Item1.Command=computer\0Item1.Settings=NOEXPAND\0Item2.Command=control_panel\0Item2.Settings=TRACK_RECENT\0Item3.Command=downloads\0Item3.Tip=$Menu.DownloadTip\0Item4.Command=C:\Windows\POST-INSTALL\0Item4.Label=POST-INSTALL\0Item4.Tip=$Menu.PrintersTip\0Item4.Icon=shell32.dll, 5\0Item5.Link=https://twitter.com/KernelPan1c5750\0Item5.Label=Twitter\0Item5.Tip=$Menu.PrintersTip\0Item5.Icon=%Ô%ystemDrive%Ý%twitter.ico\0Item5.Settings=NOEXPAND\0Item6.Link=https://www.dsc.gg/kernelos\0Item6.Label=Discord KernelOS\0Item6.Icon=%Ô%ystemDrive%Ý%discord.ico\0Item6.Settings=NOEXPAND" /f
timeout /t 5 /nobreak >nul

::Eliminar cosas inutiles
cls
echo %this
æ%cho.
echo Deleting useless files...
powershell.exe "Get-AppxPackage -AllUsers *WindowsStore* | Remove-AppxPackage"
del /F /Q "%SYSTEMDRIVE%\KernelOS-Modules\oss.exe"
del /F /Q "%SYSTEMDRIVE%\KernelOS-Modules\7zip.exe"
del /F /Q "%SYSTEMDRIVE%\KernelOS-Modules\UltimatePerformance.pow"
del /F /Q "%SYSTEMDRIVE%\KernelOS-Modules\KernelOS Performance v6.1 IDLE ON.pow"
timeout /t 5 /nobreak >nul

::Configurando 7zip
cls
echo %this
æ%cho.
echo Setting up 7zip...
start /b /wait "" "%SYSTEMDRIVE%\KernelOS-Modules\7zipc.bat"
timeout /t 5 /nobreak >NUL 2>&1

::Instalar DirectX...
cls
echo %this
æ%cho.
echo Installing DirectX.
start /wait %SYSTEMDRIVE%\KernelOS-Modules\DirectX\DXSETUP.exe /silent
del /F /S /Q "%SYSTEMDRIVE%\KernelOS-Modules\DirectX" >NUL 2>&1
echo Installation complete.
timeout /t 3 /nobreak >NUL 2>&1

::Instalar Visuals
cls
echo %this
æ%cho.
echo Installing Microsoft Visual Runtimes...
echo 2005...
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2005_x86.exe /q
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2005_x64.exe /q

echo 2008...
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2008_x86.exe /qb
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2008_x64.exe /qb

echo 2010...
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2010_x86.exe /passive /norestart
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2010_x64.exe /passive /norestart

echo 2012...
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2012_x86.exe /passive /norestart
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2012_x64.exe /passive /norestart

echo 2013...
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2013_x86.exe /passive /norestart
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2013_x64.exe /passive /norestart

echo 2015, 2017 ^& 2019 ^& 2022...
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2015_2017_2019_2022_x86.exe /passive /norestart
start /wait %SYSTEMDRIVE%\KernelOS-Modules\VisualAIO\vcredist2015_2017_2019_2022_x64.exe /passive /norestart
echo Installation completed successfully.
timeout /t 3 /nobreak >NUL 2>&1
del /F /S /Q "%SYSTEMDRIVE%\KernelOS-Modules\VisualAIO" >NUL 2>&1

::BCDEDIT SETTINGS
cls
echo %this
æ%cho.
echo Tweaking BCDedit...
bcdedit /timeout 10
bcdedit /set useplatformtick No
bcdedit /set disabledynamictick Yes
bcdedit /set bootmenupolicy Legacy
bcdedit /set quietboot On
bcdedit /set nx OptIn
timeout /t 3 /nobreak >NUL 2>&1

::Configurar Device Manager
::Nirsoft Software
cls
echo %this
æ%cho.
echo Setting up Device Manager...
dmv /disable "System Speaker"
dmv /disable "System Timer"
dmv /disable "High precision event timer"
dmv /disable "WAN Miniport (IKEv2)"
dmv /disable "WAN Miniport (IP)"
dmv /disable "WAN Miniport (IPv6)"
dmv /disable "WAN Miniport (L2TP)"
dmv /disable "WAN Miniport (Network Monitor)"
dmv /disable "WAN Miniport (PPPOE)"
dmv /disable "WAN Miniport (PPTP)"
dmv /disable "WAN Miniport (SSTP)"
dmv /disable "Direct memory access controller"
dmv /disable "System CMOS/real time clock"
dmv /disable "Unknown device"
dmv /disable "Microsoft Virtual Drive Enumerator"
dmv /disable "UMBus Root Bus Enumerator"
dmv /disable "Programmable Interrupt Controller"
dmv /disable "Composite Bus Enumerator"
dmv /disable "Numeric Data Processor"
dmv /disable "Legacy Device"
dmv /disable "PCI Memory Controller"
dmv /disable "PCI Simple Communications Controller"
dmv /disable "SM Bus Controller"
dmv /disable "PCI Data Acquisition and Signal Processing Controller"
dmv /disable "Base System Device"
timeout /t 3 /nobreak >NUL 2>&1

:{qbar}
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /V "1806" /T "REG_DWORD" /D "0000000000" /F
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /V "1806" /T "REG_DWORD" /D "0000000000" /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Security" /V "DisableSecuritySettingsCheck" /T "REG_DWORD" /D "00000001" /F
cls
echo Please Wait...
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicguestinterface" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicheartbeat" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmickvpexchange" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicrdv" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicshutdown" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmictimesync" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicvmsession" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicvss" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmcompute" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RFCOMM" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthEnum" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthLEEnum" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthA2dp" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthHFEnum" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthMini" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTHMODEM" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTHPORT" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTHUSB" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HidBth" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Microsoft_Bluetooth_AvrcpTransport" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wercplsupport" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SensrSvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f

:: Drivers
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lltdsvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lltdio" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MsLldp" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\peauth" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f

:{fipab}
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
sc delete nvagent >NUL 2>&1
start /b /wait "" "%SYSTEMDRIVE%\KernelOS-Modules\drvset.bat" >NUL 2>&1
timeout /t 5 /nobreak >NUL 2>&1
del /F /Q "%SYSTEMDRIVE%\KernelOS-Modules\7zipc.bat" >NUL 2>&1
del /F /Q "%SYSTEMDRIVE%\KernelOS-Modules\drvset.bat" >NUL 2>&1
rd /s /q %WINDIR%\Temp\ >NUL 2>&1
if exist "%SYSTEMDRIVE%\Program Files (x86)\Microsoft\Edge\Application" (
    for /f "delims=" %â% in ('where /r "%SYSTEMDRIVE%\Program Files (x86)\Microsoft\Edge\Application" *setup.exe*') do (
        if exist "%â%" (
            "%â%" --uninstall --system-level --verbose-logging --force-uninstall
        )
    )
)
sc delete edgeupdate >NUL 2>&1
sc delete edgeupdatem >NUL 2>&1

:: Disable SchTasks
:: From AtlasOS
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\MicrosoftEdgeUpdateTaskMachineCore" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\MicrosoftEdgeUpdateTaskMachineUA" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\DiskFootprint\Diagnostics" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Application Experience\StartupAppTask" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Autochk\Proxy" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Application Experience\PcaPatchDbTask" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\DiskFootprint\StorageSense" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\MicrosoftEdgeUpdateBrowserReplacementTask" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Registry\RegIdleBackup" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\StateRepository\MaintenanceTasks" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\UpdateOrchestrator\Report policies" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Work" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\UPnP\UPnPHostConfig" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\RetailDemo\CleanupOfflineContent" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\InstallService\ScanForUpdates" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\InstallService\ScanForUpdatesAsUser" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\InstallService\SmartRetry" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\International\Synchronize Language Settings" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Multimedia\Microsoft\Windows\Multimedia" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Printing\EduPrintProv" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Ras\MobilityManager" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\PushToInstall\LoginCheck" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Diagnosis\Scheduled" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Wininet\CacheTask" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Device Setup\Metadata Refresh" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" >NUL 2>&1
PowerRun.exe /SW:0 schtasks.exe /Change /Disable /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" >NUL 2>&1

:: Eliminar StartMenuExperienceHost
PowerRun.exe /SW:0 taskkill.exe /im "StartMenuExperienceHost.exe" /t /f
PowerRun.exe /SW:0 powershell.exe Rename-Item -Path "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe" -NewName "StartMenuExperienceHost.old"
::Fin StartMenuExperienceHost
timeout /t 10 /nobreak >NUL 2>&1
PowerRun.exe /SW:0 taskkill.exe /im "HelpPane.exe" /t /f >NUL 2>&1
PowerRun.exe /SW:0 cmd.exe /c del /F /Q "%SYSTEMDRIVE%\Windows\HelpPane.exe"
rd /s /q "%SYSTEMDRIVE%\Program Files (x86)\Microsoft" >NUL 2>&1
rd /s /q %SYSTEMDRIVE%\KernelOS-Modules\ >NUL 2>&1
shutdown -r -f -t 7 -c "Please wait until your PC restarts..."
timeout /t 3 /nobreak >NUL 2>&1
del /F /Q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\KernelOS22H2.bat" >NUL 2>&1
timeout /t 4 /nobreak >NUL 2>&1
pause >NUL 2>&1
exit
