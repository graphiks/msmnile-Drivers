@echo off
REM rmdir /Q /S ..\..\SurfaceDuo-Drivers-Release
mkdir ..\..\SurfaceDuo-Drivers-Release

echo CODE_OF_CONDUCT.md >> filelist_epsilon.txt
echo components\ANYSOC\Changelog > filelist_epsilon.txt
echo components\ANYSOC\Hardware\HARDWARE.DOCKING.SURFACE >> filelist_epsilon.txt
echo components\ANYSOC\Hardware\HARDWARE.INPUT.SURFACE >> filelist_epsilon.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.BASE >> filelist_epsilon.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.EXTRAS >> filelist_epsilon.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_BRIDGE >> filelist_epsilon.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_COMPONENTS >> filelist_epsilon.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL >> filelist_epsilon.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL_EXTRAS >> filelist_epsilon.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.POST_UPGRADE_ENABLEMENT >> filelist_epsilon.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.SURFACE_EXTRAS >> filelist_epsilon.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.EPSILON >> filelist_epsilon.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.EPSILON_MINIMAL >> filelist_epsilon.txt
echo components\QC8150\Graphics\GRAPHICS.SOC_QC8150.EPSILON_DESKTOP >> filelist_epsilon.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE >> filelist_epsilon.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE_MINIMAL >> filelist_epsilon.txt
echo definitions\Desktop\ARM64\Internal\epsilon.txt >> filelist_epsilon.txt
echo definitions\Desktop\ARM64\PE\epsilon.txt >> filelist_epsilon.txt
echo LICENSE.md >> filelist_epsilon.txt
echo README.md >> filelist_epsilon.txt

cd ..
"%ProgramFiles%\7-zip\7z.exe" a -tzip ..\SurfaceDuo-Drivers-Release\SurfaceDuo-Drivers-Desktop-Epsilon.zip @tools\filelist_epsilon.txt -scsWIN
cd tools

del filelist_epsilon.txt