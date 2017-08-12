@echo off
REM DOTNETANALYSIS.BLOGSPOT.COM


SET "sourceLocation=C:\Proyectos\Library\SignedWork\"


SET "sourceDllName=C:\Proyectos\Library\UnsignedDlls\MvcContrib.dll"

SET "destDllName=C:\Proyectos\Library\SignedDlls\MvcContrib.dll"


REM DO NOT SET VARIABLES BELOW THIS LINE
SET "keyFileName=sgKey.snk"
SET "sourceFile=%sourceLocation%%sourceDllName%"
SET "destIL=%sourceLocation%INTERMEDIATE.IL"
SET "destFile=%sourceLocation%%destDllName%"
ECHO CREATING A KEY FILE FOR SIGNING THE DLL
"C:\Program Files\Microsoft SDKs\Windows\v6.0A\bin\sn" -k %keyFileName%
ECHO CREATING DE ASSEMBLED VERSION OF THE DLL
"C:\Program Files\Microsoft SDKs\Windows\v6.0A\Bin\ildasm.exe" %sourceFile% /output:%destIL%


ECHO GENERATING THE SIGNED VERSION OF THE DLL
"C:\Windows\Microsoft.NET\Framework\v2.0.50727\ilasm.exe" %destIL% /dll /key:%keyFileName%   /output:%destFile%
ECHO -------------------------------------------------
ECHO ----VERIFYING THAT THE VERSION IS SIGNED --------
ECHO -------------------------------------------------
"C:\Program Files\Microsoft SDKs\Windows\v6.0A\bin\sn" -v %destFile%
pause