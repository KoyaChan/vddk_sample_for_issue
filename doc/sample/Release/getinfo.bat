@REM getinfo <vCenter host address> <vCenter user> <vCenter password>
@set HOSTIP=%1
@set USER=%2
@set PASSWORD=%3
@set MODE=hotadd
@set SNAPSHOT=snapshot-1355
@set VM=vm-21
@set DISK1="[datastore_4TB] 2012R2EFI-2/2012R2EFI-2-000023.vmdk"
@set THUMB=8D:2F:B4:C4:3D:B2:44:77:DE:25:CE:A4:63:1D:05:9B:71:2E:65:F3
@set NFCHOSTPORT=902
@set PORT=443
@set LIBDIR=C:\debugtools\vddk_sample_for_issue

VixDiskLibSample -info -initex %CD%\VixDiskLib.cfg -host %HOSTIP% -thumb %THUMB% -port %PORT% -nfchostport %NFCHOSTPORT% -user %USER% -password %PASSWORD% -libdir %LIBDIR% -mode %MODE% -ssmoref %SNAPSHOT% -vm "moref=%VM%" %DISK1% 1> getinfo.log 2> getinfoerr.log
