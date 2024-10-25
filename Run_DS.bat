echo off
:start

cd steam
steamcmd.exe +runscript ../update_script.txt
steamcmd.exe +runscript ../update_script.txt
cd ..

cd rustds
RustDedicated.exe -batchmode +server.hostname "Penis Server" +server.port 28015 +server.identity "Filin server" +server.seed 1234567 -logFile "output.txt" -autoupdate
cd ../

goto start