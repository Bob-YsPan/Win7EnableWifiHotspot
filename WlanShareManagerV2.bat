@echo off
::�w�]�w���ȩ�o��I�I[���b�����᭱]
::���ɪ�SSID
set dssid=Default
::���ɪ��K�X[8��H�W]
set dpasswd=12345678

::�߰ݺ޲z���v���A�^���_���X
color 4E
echo ======================================================
echo Warning!!!
echo #�ШϥΨt�κ޲z���v�����榹�{��[���D�ˬd���ɪ��A]�I�I
echo #���O�Ҧ����L�u���d���A�Ω��a�x���ɡI
echo  �����L�u���d�|�o�͵L�k�}�ҩΥΤ���_�u...�����p�I�I
echo ======================================================
choice /M "�~�����H"
if %errorlevel% equ 1 goto :main
if %errorlevel% equ 2 goto :eof

:main
::�D�{��
cls
color 1F
echo =======================================
echo Windows 7 Wifi Hotspot �]�w�p�{�� V2
echo By Bob Pan 2019.08.20
echo =======================================
echo �z�n����ƻ�u�@�H
echo 1] �]�w�L�u��a�x�ñҥ�
echo 2] �ȱҥεL�u��a�x�������d
echo 3] ���εL�u��a�x
echo 4] ��ܵL�u��a�x���A
echo 5] �ק��a�x�i�s�u�H��[�Фp�߾ާ@�I]
echo 6] �h�X�{��
echo =======================================
choice /C 123456 /M "Choice:"
if %errorlevel% equ 1 goto :enbwa
if %errorlevel% equ 2 goto :enbwo
if %errorlevel% equ 3 goto :diswa
if %errorlevel% equ 4 goto :statw
if %errorlevel% equ 5 goto :epeople
if %errorlevel% equ 6 goto :eof

:enbwa
::�]�w�L�u��a�x�ñҥ�
cls
color 6F
echo ==================================================
echo �n�N�J�w�]�ѼƶܡH
echo [�w�]�ѼƽбN���妸�ɥΰO�ƥ����}�A�b��󪺳̫e��]
echo ==================================================
choice /M "Choice:"
set qenbwaret=%errorlevel%
echo.
color 1F
::if���z�������y���Ӧh�R�O�A�קK�t�λ~�PŪ�A�G��goto����~������
if %qenbwaret% equ 1 (
goto :enbwad
) else (
goto :enbwag
)

::���Y
:enbwad
echo Processing...
netsh wlan set hostednetwork mode=allow ssid=%dssid% key=%dpasswd%
pause
goto :enbwaf

::���N
:enbwag
echo ==================================================
echo �зӫ��ܿ�J�ѼơG
echo ==================================================
set /p gssid=����SSID�G
set /p gpasswd=�K�X[8��H�W]�G
echo Processing...
netsh wlan set hostednetwork mode=allow ssid=%gssid% key=%gpasswd%
pause
goto :enbwaf

::�@�P�B
:enbwaf
cls
color 6F
echo ====================================================================
echo Note
echo �Цb"����x\�����M���ں���\�����s�u\�A�s�u�������d"�I�k�䤺�e\�@��
echo �äĿ�"���\��L�����ϥΪ̳z�L�o�x�q�������ں����s�u�ӳs�u"
echo �N���U"�a�κ����s�u"���"Microsoft Virtual WiFi Miniport Adapter"
echo �����Ŀ�"���\��L�����ϥΪ̨ӱ���ΰ��κ����s�u�@��"
echo ====================================================================
pause
echo.
color 1F
echo Processing...
netsh wlan start hostednetwork
echo ���槹���C
pause
goto :main

::�ȱҥεL�u��a�x�������d
:enbwo
cls
echo Processing...
netsh wlan set hostednetwork mode=allow
echo ���槹���C
pause
goto :main

::���εL�u��a�x
:diswa
color 6F
cls
choice /M "�~�����H"
if %errorlevel% equ 1 goto :disway
if %errorlevel% equ 2 goto :main

::���Y[N�|��^�}�Y]
:disway
color 1F
echo.
echo Processing...
netsh wlan stop hostednetwork
netsh wlan set hostednetwork mode=disallow
echo ���槹���C
pause
goto :main

::��ܵL�u��a�x���A
:statw
cls
echo Processing...
netsh wlan show hostednetwork
pause
goto :main

::�ק�i�s�u�H��
:epeople
color 4E
cls
echo =====================================================
echo ���ާ@�A�εn���ɪ��ק�I�I�I
echo �Фp�߾ާ@�A�ק異�~�i��|�y���Y����G�I
echo �Х���L�u��a�x�W�ٱK�X�]�w�n�ҥΤ@���קK�мg�ƾڡI
echo =====================================================
choice /M "�~�����H"
if %errorlevel% equ 1 goto :epeopley
if %errorlevel% equ 2 goto :main

::�T�{��H��
:epeopley
color 1F
echo.
echo �ץX�n���ɤ�...
reg export HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Wlansvc\Parameters\HostedNetworkSettings %TEMP%\Hosted.reg /y
echo ���槹���C
pause
color 6F
cls
echo ==============================================================================
echo �иԾ\�קﻡ���íק�ƭȡI
echo.
echo �קﻡ���G
echo ����� "HostedNetworkSettings"= ����
echo �b�o�ӿﶵ���ĤG��˼ƲĤ��ӭȳq�`�N��s�u�H�ơA�w�]��64(16�i��A��100�H)
echo �w�]�ĤG��j�����o��
echo                                                          V~[�o�ӥN��H��]
echo 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,64,00,00,00,07,00,\
echo �бN��ק令�A�ݭn�s�u�H�ƪ�"16�i��"�Ʀr
echo �����Цs�ɡC�������O�ƥ��C
echo ==============================================================================
notepad %TEMP%\Hosted.reg
pause
echo.
echo �T�{�����F�ܡH�i��N�H���s�ק��ɮסI
choice /M "�~�����H"
if %errorlevel% equ 2 goto :epeopley
echo.
echo �g�J��...
reg import %TEMP%\Hosted.reg
echo ���ҪA��...
net stop Wlansvc
net start Wlansvc
echo ���槹���C
pause
goto :main