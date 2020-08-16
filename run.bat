@echo off
title C++ Stress Testing by NDL
echo CTRL + C AND ENTER Y/y TO EXIT 

g++ -o my_code.exe my_code.cpp
echo my_code compile successfully

g++ -o accepted_code.exe accepted_code.cpp
echo accepted_code compile successfully

g++ -o generate_code.exe generate_code.cpp
echo generate_code compile successfully
CLS
set i = 1 ;
:loop
  generate_code > input.in
  my_code < input.in > my_code.out 
  accepted_code < input.in > accepted_code.out
 
  fc my_code.out accepted_code.out>nul
  if errorlevel 1 goto fail
  echo Test %i% : ACCEPTED
  set /a i=%i%+1
  goto loop
:fail

  echo Test %i% : WRONG ANSWER
pause 