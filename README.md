CUG-Undergraduate-Thesis-Template
=================================

中国地质大学(武汉) 本科毕业论文及答辩演示文稿 LaTeX模板

=================================


请先阅读:http://bbs.cnool.net/cthread-4388587.html

LaTeX与Word比较: http://zzg34b.w3.c361.com/homepage/compareWord.htm

================================================



如果很不幸(当然，我是十分幸运的)，万一你遇到了一个只知道Word，要求必需提交doc格式论文的老师(我想地大因该不会有这样的情况吧),   DON'T PANIC!,只需三步，文论就可以编成doc格式:


1.编译源文件得到pdf;


2.用Adobe Acrobat 或Nitro(特别推荐,它转换出来的表格和图像完全保留了原样，特别是页面布局和原pdf一模一样，数学公式也几乎不需要大的改动，在我看来是优于AdobeAcrobat的，下载地址 http://www.nitropdf.com/ ，可试用)另存为Word(这一步得到的doc文件中数学公式可能会惨不忍睹),下一步解决;


3.下载tex2word( 一个Word 插件 ，下载地址 http://www.chikrii.com/products/tex2word/ ,有30天试用期)，安装后用Word打开主tex文件(打开Word->打开->下拉列表中选择tex格式->选定主tex文件->打开)，得到一个Word文件，此时你会发现，虽然这个文件里的其它排版都很糟糕，但公式却很完整漂亮,将这一步得到的doc文件和上一步得到的doc文件一对比，你应该知道怎么做了.



=========================================================




由于本项目完成后才托管到github，因此很多说明及更新日志均在各个目录下的ReadMe.txt中，未统一写在此处，详细说明在各目录下下的ReadMe.txt文件中;

=================================================
使用Windows XP的特别注意下面提到的三个问题，Linuxer注意字体安装的问题(详细説明在ReadMe__Linuxer.txt中)

================================================================

本模板以本人2013年6月份本科毕业论文为示例(莫见笑)，格式完全按照地大本科毕业论文格式要求排版，完全可以满足格式要求.

==========================================================================

本论文和答辩演示文稿均可在Windows和Linux下成功编译，详细请阅读"LaTeX源代码" 目录下ReadMe.txt文件.

==================================================================

使用Windows7安装CTeX或Ubuntu 安装TeXLive2012（配置好字体）编译均无问题，但在windows xp sp3下可能会有下列问题(附解决方法)

1、路径名太长出现错误(可能Windows7也有该问题)

pdflatex.exe: Not enough room in an internal buffer 解决方法参考 http://www.latex-community.org/forum/viewtopic.php?f=9&t=7022  ，将文件夹名称改短一点或不要将文件夹放置在太深的路径中，最好直接将文件夹放在D:\或E:\下





2、编译演示文稿时找不到隶书字体

!pdfTeX error: pdflatex (file simli.ttf): cannot open TrueType font file for re

ading

 ==> Fatal error occurred, no output PDF file produced!



下载隶书字体 http://ishare.iask.sina.com.cn/f/14887518.html 放到\Windows\fonts目录下即可







3、安装ctex后 运行Make.bat 或在Winedit中编译时出现 “ 'pdflatex' 不是内部或外部命令，也不是可运行的程序 ” 或 “系统找不到指定文件” 错误时，是由于未将ctex安装目录加入环境变量中

   解决方法参考 http://blog.csdn.net/geek4it/article/details/8118451  http://zhouhaitao.iteye.com/blog/833376
   具体步骤为 我的电脑-右击->属性->高级->环境变量->**的用户变量->新建，变量名填 Path 变量值根据ctex安装目录(比如我的安装路径是D:\Program Files\CTEX\)，其值就为(特别注意加双引号)：
   "D:\Program Files\CTEX\UserData\miktex\bin";"D:\Program Files\CTEX\MiKTeX\miktex\bin";"D:\Program Files\CTEX\CTeX\ctex\bin";"D:\Program Files\CTEX\CTeX\cct\bin";"D:\Program Files\CTEX\CTeX\ty\bin";"D:\Program Files\CTEX\Ghostscript\gs9.05\bin";"D:\Program Files\CTEX\GSview\gsview";"D:\Program Files\CTEX\WinEdt";"D:\Program Files\CTEX\MiKTeX\miktex\bin"

	





其它未尽事宜请读各文件中的注释和各ReadMe.txt文件 或邮箱:cug_yangyuancong@hotmail.com
