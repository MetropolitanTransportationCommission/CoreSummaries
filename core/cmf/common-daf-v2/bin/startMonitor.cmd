@echo off
REM ----------------------------------------------------------------------
REM 'BASEDIR' is an environment variable which contains the path to 
REM common-base and common-daf-v2. These projects are needed to run DAF.
REM 
REM 'CONFIGDIR' is an environment variable which contains the path to the
REM configuration files.
REM
REM eg. startMonitor  s:/commandfile  c:/temp/startnode.properties
REM 
REM ----------------------------------------------------------------------

if "%BASEDIR%"=="" goto baseDirError
if "%CONFIGDIR%"=="" goto configDirError

set LOGFILE=%BASEDIR%/common-base/config/fine_logging.properties

set CLASSPATH=%BASEDIR%/common-base/build/classes
set CLASSPATH=%CLASSPATH%;%BASEDIR%/common-daf-v2/build/classes
set CLASSPATH=%CLASSPATH%;%CONFIGDIR%

java -Djava.util.logging.config.file=%LOGFILE% com.pb.common.daf.admin.FileMonitor %1 %2 %3 %4 %5
goto end

:baseDirError
echo The BASEDIR environment variable MUST be set before running this command.
echo This variable should contain the path to the common-base and common-daf-v2
echo projects.
echo Example: set BASEDIR=c:/development/workspace
goto end

:configDirError
echo The CONFIGDIR environment variable MUST be set before running this command.
echo This variable should point to a directory containing configuration files.
echo Example: set CONFIGDIR=c:/development/workspace/tlumip/config
goto end

:end