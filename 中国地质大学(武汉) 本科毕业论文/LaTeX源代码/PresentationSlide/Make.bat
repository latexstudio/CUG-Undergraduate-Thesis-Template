@echo on
::ɾ��ԭpdf�ļ�ͬʱ������Դ�ļ�����ǰ�û�������,��ʱ�����ļ��Ǻ���Ҫ��
::�ο�http://blog.csdn.net/wzsbll/article/details/6690895
del *.pdf
::del /Q /S "%HOMEDRIVE%%HOMEPATH%\Desktop\PresentationSlide\*"
XCOPY  "*"  "%HOMEDRIVE%%HOMEPATH%\Desktop\PresentationSlide" /E /Y /D
@pause
::exit

::�������ļ����ļ���
set  Name=YangYuancong'sPresentationSlide

::��һ�α��뽨��������Ϊ����������׼��
pdflatex "%Name%.tex"
makeindex -o "%Name%.ind" "%Name%.idx"
::����ǩ�����GBKת��ΪUnicode����Ȼ��ǩ���룬���һ��������������
Config\GBK2Uni_Windows.exe "%Name%.out"
pdflatex "%Name%.tex"

rename %Name%.pdf  ���з���΢��̽����ҶЧӦ__��ʾ�ĸ�__��Զ��.pdf
::start %Name%.pdf
start	���з���΢��̽����ҶЧӦ__��ʾ�ĸ�__��Զ��.pdf

Config\Cleaner.bat
@pause
