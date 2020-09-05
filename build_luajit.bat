@echo off

set x64="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"
set x86="C:\Program Files\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"
set mes="�R���p�C���X�^�[�g"

if exist "%x64%" (
    goto :compile_x64
) else if exist "%x86%" (
    goto :compile_x86
) else (
    goto :erromes
)

:compile_x64
   call %x64%
   echo %mes%
   goto :compile

:compile_x86
   call %x86%
   echo %mes%
   goto :compile

:compile
   cd %1
   .\msvcbuild.bat

:erromes
   echo "VS2019 Community�G�f�B�V�������C���X�g�[�����邩�A�܂��͑��̃G�f�B�V�����p�ɕϐ��ɑ�����镶��������������Ă�������"
