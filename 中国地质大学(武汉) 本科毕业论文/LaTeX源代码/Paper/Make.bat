@echo on
::删除原pdf文件同时作备份源文件到当前用户的桌面,随时备份文件是很重要的
::参看http://blog.csdn.net/wzsbll/article/details/6690895
del *.pdf
::del /Q /S %HOMEDRIVE%%HOMEPATH%\Desktop\Paper
XCOPY  "*"  %HOMEDRIVE%%HOMEPATH%\Desktop\Paper /E /Y /D
@pause
::exit

::设置主文件的文件名
set  Name=YangYuancong'sPaper

::第一次编译建立索引，为交叉引用作准备
pdflatex "%Name%.tex"
makeindex -o "%Name%.ind" "%Name%.idx"
::索引参考文献，第二次编译，设定各计数器
bibtex %Name%
pdflatex "%Name%.tex
::把书签编码从GBK转换为Unicode，不然书签乱码，最后一次完整索引编译
Config\GBKToUni.exe "%Name%.out"
pdflatex "%Name%.tex"

rename %Name%.pdf  光切法显微镜探究荷叶效应__文章__杨远聪.pdf
::start %Name%.pdf
start	光切法显微镜探究荷叶效应__文章__杨远聪.pdf

::Config\Cleaner.bat
@pause