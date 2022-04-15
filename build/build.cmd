del brotquest2_AD.d64
c1541 -format brotquest2,bq d64 brotquest2_AD.d64
call compile.cmd
call ..\build\c1541 ..\build\brotquest2_AD.d64 -write ++brotquest2.prg brotquest2,p
call ..\build\c1541 ..\build\brotquest2_AD.d64 -write ++xam-c.prg xam,p
cd ..\build
cd ..\seq
for %%f in (*.*) do call :add "%%f"
cd ..\build
goto :EOF

:add
..\build\c1541 ..\build\brotquest2_AD.d64 -write %1 %1,s
