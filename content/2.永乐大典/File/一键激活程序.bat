@echo off
REM Get operating system version information
for /f "tokens=2 delims==" %%i in ('"wmic os get Caption /value"') do set "os=%%i"

REM Remove spaces from the string
set "os=%os: =%"

echo Operating System: %os%

REM Set the installation key
set "key="

REM Windows 10/11 (Semi-Annual Channel versions)
if "%os%"=="MicrosoftWindows10Professional" set "key=W269N-WFGWX-YVC9B-4J6C9-T83GX"
if "%os%"=="MicrosoftWindows11Professional" set "key=W269N-WFGWX-YVC9B-4J6C9-T83GX"
if "%os%"=="MicrosoftWindows10ProfessionalN" set "key=MH37W-N47XK-V7XM9-C7227-GCQG9"
if "%os%"=="MicrosoftWindows11ProfessionalN" set "key=MH37W-N47XK-V7XM9-C7227-GCQG9"
if "%os%"=="MicrosoftWindows10ProfessionalWorkstation" set "key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
if "%os%"=="MicrosoftWindows11ProfessionalWorkstation" set "key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
if "%os%"=="MicrosoftWindows10ProfessionalWorkstationN" set "key=9FNHH-K3HBT-3W4TD-6383H-6XYWF"
if "%os%"=="MicrosoftWindows11ProfessionalWorkstationN" set "key=9FNHH-K3HBT-3W4TD-6383H-6XYWF"
if "%os%"=="MicrosoftWindows10ProfessionalEducation" set "key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y"
if "%os%"=="MicrosoftWindows11ProfessionalEducation" set "key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y"
if "%os%"=="MicrosoftWindows10ProfessionalEducationN" set "key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC"
if "%os%"=="MicrosoftWindows11ProfessionalEducationN" set "key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC"
if "%os%"=="MicrosoftWindows10Education" set "key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
if "%os%"=="MicrosoftWindows11Education" set "key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
if "%os%"=="MicrosoftWindows10EducationN" set "key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
if "%os%"=="MicrosoftWindows11EducationN" set "key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
if "%os%"=="MicrosoftWindows10Enterprise" set "key=NPPR9-FWDCX-D2C8J-H872K-2YT43"
if "%os%"=="MicrosoftWindows11Enterprise" set "key=NPPR9-FWDCX-D2C8J-H872K-2YT43"
if "%os%"=="MicrosoftWindows10EnterpriseN" set "key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
if "%os%"=="MicrosoftWindows11EnterpriseN" set "key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
if "%os%"=="MicrosoftWindows10EnterpriseG" set "key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B"
if "%os%"=="MicrosoftWindows11EnterpriseG" set "key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B"
if "%os%"=="MicrosoftWindows10EnterpriseGN" set "key=44RPN-FTY23-9VTTB-MP9BX-T84FV"
if "%os%"=="MicrosoftWindows11EnterpriseGN" set "key=44RPN-FTY23-9VTTB-MP9BX-T84FV"

REM Windows 10 (LTSC/LTSB versions)
if "%os%"=="MicrosoftWindows10EnterpriseLTSC2019" set "key=M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
if "%os%"=="MicrosoftWindows10EnterpriseNLTSC2019" set "key=92NFX-8DJQP-P6BBQ-THF9C-7CG2H"
if "%os%"=="MicrosoftWindows10EnterpriseLTSB2016" set "key=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ"
if "%os%"=="MicrosoftWindows10EnterpriseNLTSB2016" set "key=QFFDN-GRT3P-VKWWX-X7T3R-8B639"
if "%os%"=="MicrosoftWindows10EnterpriseLTSB2015" set "key=WNMTR-4C88C-JK8YV-HQ7T2-76DF9"
if "%os%"=="MicrosoftWindows10EnterpriseNLTSB2015" set "key=2F77B-TNFGY-69QQF-B8YKP-D69TJ"

REM Windows Server (LTSC versions)
if "%os%"=="MicrosoftWindowsServer2025Standard" set "key=TVRH6-WHNXV-R9WG3-9XRFY-MY832"
if "%os%"=="MicrosoftWindowsServer2025Datacenter" set "key=D764K-2NDRG-47T6Q-P8T8W-YP6DF"
if "%os%"=="MicrosoftWindowsServer2025AzureEdition" set "key=XGN3F-F394H-FD2MY-PP6FD-8MCRC"
if "%os%"=="MicrosoftWindowsServer2022Datacenter" set "key=WX4NM-KYWYW-QJJR4-XV3QB-6VM33"
if "%os%"=="MicrosoftWindowsServer2022DatacenterAzureEdition" set "key=NTBV8-9K7Q8-V27C6-M2BTV-KHMXV"
if "%os%"=="MicrosoftWindowsServer2022Standard" set "key=VDYBN-27WPP-V4HQT-9VMD4-VMK7H"
if "%os%"=="MicrosoftWindowsServer2019Datacenter" set "key=WMDGN-G9PQG-XVVXX-R3X43-63DFG"
if "%os%"=="MicrosoftWindowsServer2019Standard" set "key=N69G4-B89J2-4G8F4-WWYCC-J464C"
if "%os%"=="MicrosoftWindowsServer2019Essentials" set "key=WVDHN-86M7X-466P6-VHXV7-YY726"
if "%os%"=="MicrosoftWindowsServer2016Datacenter" set "key=CB7KF-BWN84-R7R2Y-793K2-8XDDG"
if "%os%"=="MicrosoftWindowsServer2016Standard" set "key=WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
if "%os%"=="MicrosoftWindowsServer2016Essentials" set "key=JCKRF-N37P4-C2D82-9YXRT-4M63B"

REM Windows Server (Semi-Annual Channel versions)
if "%os%"=="MicrosoftWindowsServerVersion20H2" set "key=6NMRW-2C8FM-D24W7-TQWMY-CWH2D"
if "%os%"=="MicrosoftWindowsServerVersion2004" set "key=6NMRW-2C8FM-D24W7-TQWMY-CWH2D"
if "%os%"=="MicrosoftWindowsServerVersion1909" set "key=6NMRW-2C8FM-D24W7-TQWMY-CWH2D"
if "%os%"=="MicrosoftWindowsServerVersion1903" set "key=6NMRW-2C8FM-D24W7-TQWMY-CWH2D"
if "%os%"=="MicrosoftWindowsServerVersion1809" set "key=6NMRW-2C8FM-D24W7-TQWMY-CWH2D"

REM Earlier versions of Windows Server
if "%os%"=="MicrosoftWindowsServerVersion1803" set "key=2HXDN-KRXHB-GPYC7-YCKFJ-7FVDG"
if "%os%"=="MicrosoftWindowsServerVersion1709" set "key=6Y6KB-N82V8-D8CQV-23MJW-BWTG6"
if "%os%"=="MicrosoftWindowsServer2012R2Standard" set "key=D2N9P-3P6X9-2R39C-7RTCD-MDVJX"
if "%os%"=="MicrosoftWindowsServer2012R2Datacenter" set "key=W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9"
if "%os%"=="MicrosoftWindowsServer2012R2Essentials" set "key=KNC87-3J2TX-XB4WP-VCPJV-M4FWM"
if "%os%"=="MicrosoftWindowsServer2012" set "key=BN3D2-R7TKB-3YPBD-8DRP2-27GG4"
if "%os%"=="MicrosoftWindowsServer2012N" set "key=8N2M2-HWPGY-7PGT9-HGDD8-GVGGY"
if "%os%"=="MicrosoftWindowsServer2012SingleLanguage" set "key=2WN2H-YGCQR-KFX6K-CD6TF-84YXQ"
if "%os%"=="MicrosoftWindowsServer2012CountrySpecific" set "key=4K36P-JN4VD-GDC6V-KDT89-DYFKP"
if "%os%"=="MicrosoftWindowsServer2012Standard" set "key=XC9B7-NBPP2-83J2H-RHMBY-92BT4"
if "%os%"=="MicrosoftWindowsServer2012MultiPointStandard" set "key=HM7DN-YVMH3-46JC3-XYTG7-CYQJJ"
if "%os%"=="MicrosoftWindowsServer2012MultiPointPremium" set "key=XNH6W-2V9GX-RGJ4K-Y8X6F-QGJ2G"
if "%os%"=="MicrosoftWindowsServer2012Datacenter" set "key=48HP8-DN98B-MYWDG-T2DCC-8W83P"

REM Windows Server 2008 R2
if "%os%"=="MicrosoftWindowsServer2008R2Web" set "key=6TPJF-RBVHG-WBW2R-86QPH-6RTM4"
if "%os%"=="MicrosoftWindowsServer2008R2HPC" set "key=TT8MH-CG224-D3D7Q-498W2-9QCTX"
if "%os%"=="MicrosoftWindowsServer2008R2Standard" set "key=YC6KT-GKW9T-YTKYR-T4X34-R7VHC"
if "%os%"=="MicrosoftWindowsServer2008R2Enterprise" set "key=489J6-VHDMP-X63PK-3K798-CPX3Y"
if "%os%"=="MicrosoftWindowsServer2008R2Datacenter" set "key=74YFP-3QFB3-KQT8W-PMXWJ-7M648"
if "%os%"=="MicrosoftWindowsServer2008R2Itanium" set "key=GT63C-RJFQ3-4GMB6-BRFB9-CB83V"

REM Windows Server 2008
if "%os%"=="MicrosoftWindowsWebServer2008" set "key=WYR28-R7TFJ-3X2YQ-YCY4H-M249D"
if "%os%"=="MicrosoftWindowsServer2008Standard" set "key=TM24T-X9RMF-VWXK6-X8JC9-BFGM2"
if "%os%"=="MicrosoftWindowsServer2008StandardWithoutHyperV" set "key=W7VD6-7JFBR-RX26B-YKQ3Y-6FFFJ"
if "%os%"=="MicrosoftWindowsServer2008Enterprise" set "key=YQGMW-MPWTJ-34KDK-48M3W-X4Q6V"
if "%os%"=="MicrosoftWindowsServer2008EnterpriseWithoutHyperV" set "key=39BXF-X8Q23-P2WWT-38T2F-G3FPG"
if "%os%"=="MicrosoftWindowsServer2008HPC" set "key=RCTX3-KWVHP-BR6TB-RB6DM-6X7HP"
if "%os%"=="MicrosoftWindowsServer2008Datacenter" set "key=7M67G-PC374-GR742-YH8V4-TCBY3"
if "%os%"=="MicrosoftWindowsServer2008DatacenterWithoutHyperV" set "key=22XQ2-VRXRG-P8D42-K34TD-G3QQC"
if "%os%"=="MicrosoftWindowsServer2008Itanium" set "key=4DWFP-JF3DJ-B7DTH-78FJB-PDRHK"

REM Windows 8.1
if "%os%"=="MicrosoftWindows81Professional" set "key=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9"
if "%os%"=="MicrosoftWindows81ProfessionalN" set "key=HMCNV-VVBFX-7HMBH-CTY9B-B4FXY"
if "%os%"=="MicrosoftWindows81Enterprise" set "key=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7"
if "%os%"=="MicrosoftWindows81EnterpriseN" set "key=TT4HM-HN7YT-62K67-RGRQJ-JFFXW"

REM Windows 8
if "%os%"=="MicrosoftWindows8Professional" set "key=NG4HW-VH26C-733KW-K6F98-J8CK4"
if "%os%"=="MicrosoftWindows8ProfessionalN" set "key=XCVCF-2NXM9-723PB-MHCB7-2RYQQ"
if "%os%"=="MicrosoftWindows8Enterprise" set "key=32JNW-9KQ84-P47T8-D8GGY-CWCK7"
if "%os%"=="MicrosoftWindows8EnterpriseN" set "key=JMNMF-RHW7P-DMY6X-RF3DR-X2BQT"

REM Windows 7
if "%os%"=="MicrosoftWindows7Professional" set "key=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4"
if "%os%"=="MicrosoftWindows7ProfessionalN" set "key=MRPKT-YTG23-K7D7T-X2JMM-QY7MG"
if "%os%"=="MicrosoftWindows7ProfessionalE" set "key=W82YF-2Q76Y-63HXB-FGJG9-GF7QX"
if "%os%"=="MicrosoftWindows7Enterprise" set "key=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH"
if "%os%"=="MicrosoftWindows7EnterpriseN" set "key=YDRBP-3D83W-TY26F-D46B2-XCKRJ"
if "%os%"=="MicrosoftWindows7EnterpriseE" set "key=C29WB-22CC8-VJ326-GHFJW-H9DH4"

if not defined key (
    echo No matching operating system version found.
    goto :EOF
)

echo Using key: %key%

REM Set KMS server
slmgr -skms skms.netnr.eu.org

REM Install the product key
slmgr -ipk %key%

REM Activate the system
slmgr -ato

echo Activation completed.

:EOF
pause