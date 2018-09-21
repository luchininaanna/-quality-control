set PROGRAM= "%~1"
ECHO %~1

REM ������ ��������� � ������������� ����������� ����������
%PROGRAM% 1 2 > output1.txt
IF ERRORLEVEL 1 GOTO err
FC output1.txt fewArguments.txt
IF ERRORLEVEL 1 GOTO err

REM ������ ��������� � ����������� ����������� ����
%PROGRAM% 1 2 k > output2.txt
IF ERRORLEVEL 1 GOTO err
FC output2.txt notAllArgumentIsDigit.txt
IF ERRORLEVEL 1 GOTO err

REM ������ ��������� �o ��������� �������� ������������
%PROGRAM% 5 6 4 > output3.txt
IF ERRORLEVEL 1 GOTO err
FC output3.txt simpleTriangle.txt
IF ERRORLEVEL 1 GOTO err

REM ������ ��������� �o ��������� ��������������� ������������
%PROGRAM% 5 6 6 > output4.txt
IF ERRORLEVEL 1 GOTO err
FC output4.txt isoscelesTriangle.txt
IF ERRORLEVEL 1 GOTO err

REM ������ ��������� �o ��������� ��������������� ������������
%PROGRAM% 6 6 6 > output5.txt
IF ERRORLEVEL 1 GOTO err
FC output5.txt equilateralTriangle.txt
IF ERRORLEVEL 1 GOTO err

REM ������ ��������� �o ���������, ������� �� �������� �����������
%PROGRAM% 2 3 5 > output6.txt
IF ERRORLEVEL 1 GOTO err
FC output6.txt notTriangle.txt
IF ERRORLEVEL 1 GOTO err

REM ������ ��������� �o ���������, ������� ������������ �������� �������
%PROGRAM% 2.00 3.54 3.34853 > output7.txt
IF ERRORLEVEL 1 GOTO err
FC output7.txt simpleTriangle.txt
IF ERRORLEVEL 1 GOTO err

REM ������ ��������� �o ���������, ������� ������������ �������� ������� (������ . ����� ,)
%PROGRAM% 2,00 3,54 3,34853 > output7.txt
IF ERRORLEVEL 1 GOTO err
FC output7.txt simpleTriangle.txt
IF ERRORLEVEL 1 GOTO err

REM ������ ��������� �o ���������, ������� ������������ �������� ������� (������ . ����� ,)
%PROGRAM% 2,567 2,567 3,34853 > output8.txt
IF ERRORLEVEL 1 GOTO err
FC output8.txt isoscelesTriangle.txt
IF ERRORLEVEL 1 GOTO err

ECHO Program testing succeeded
EXIT 0

:err
ECHO Program testing failed
EXIT 1
