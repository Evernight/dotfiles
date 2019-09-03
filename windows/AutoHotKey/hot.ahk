#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!b::
  Run, C:\Users\slowbro\.babun\cygwin\bin\mintty.exe -s 80`,10 -t 'Installing latest Rooms version' /bin/zsh -l -c 'source ~/.zshrc; cd ~/rooms-builds; adbfresh && adbcon; read  -n 1;'
Return

#!l::
  Run, C:\Users\slowbro\.babun\cygwin\bin\mintty.exe -s 200`,10 -t 'Getting logcat' /bin/zsh -l -c 'source ~/.zshrc; cd ~/rooms-logs; lcpost'
Return

#!i::
  Run, C:\Users\slowbro\.babun\cygwin\bin\mintty.exe -s 200`,10 -t 'Devices' /bin/zsh -l -c 'source ~/.zshrc; adb devices; sleep 4;'
Return

#!y::
  Run, C:\Users\slowbro\.babun\cygwin\bin\mintty.exe -s 200`,10 -t 'Connecting to device' /bin/zsh -l -c 'source ~/.zshrc; adbcon && echo "Connected"; sleep 2;'
Return

#!u::
  Run, C:\Users\slowbro\.babun\cygwin\bin\mintty.exe -s 200`,10 -t 'Disconnecting device' /bin/zsh -l -c 'source ~/.zshrc; adbdis && echo "Disconnected"; sleep 2;'
Return

#!r::
  Run, C:\Users\slowbro\.babun\cygwin\bin\mintty.exe -s 200`,10 -t 'Running Rooms' /bin/zsh -l -c 'source ~/.zshrc; rrooms'
Return

#!o::
  Run, C:\Users\slowbro\.babun\cygwin\bin\mintty.exe -s 200`,10 -t 'Running Rooms' /bin/zsh -l -c 'source ~/.zshrc; rm ~/ovrsource/.hg/wlock'
Return