@echo on
::ɾ��ԭpdf�ļ�ͬʱ������Դ�ļ�����ǰ�û�������,��ʱ�����ļ��Ǻ���Ҫ��
::�ο�http://blog.csdn.net/wzsbll/article/details/6690895
del *.pdf
::del /Q /S %HOMEDRIVE%%HOMEPATH%\Desktop\Paper
XCOPY  "*"  %HOMEDRIVE%%HOMEPATH%\Desktop\Paper /E /Y /D
@pause
::exit

::�������ļ����ļ���
set  Name=YangYuancong'sPaper

::��һ�α��뽨��������Ϊ����������׼��
pdflatex "%Name%.tex"
makeindex -o "%Name%.ind" "%Name%.idx"
::�����ο����ף��ڶ��α��룬�趨��������
bibtex %Name%
pdflatex "%Name%.tex
::����ǩ�����GBKת��ΪUnicode����Ȼ��ǩ���룬���һ��������������
Config\GBKToUni.exe "%Name%.out"
pdflatex "%Name%.tex"

rename %Name%.pdf  ���з���΢��̽����ҶЧӦ__����__��Զ��.pdf
::start %Name%.pdf
start	���з���΢��̽����ҶЧӦ__����__��Զ��.pdf

::Config\Cleaner.bat
@pause