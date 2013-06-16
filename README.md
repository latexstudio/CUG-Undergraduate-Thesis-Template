CUG-Undergraduate-Thesis-Template
=================================

中国地质大学(武汉) 本科毕业论文及答辩演示文稿 LaTeX模板

=================================

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

	





其它未尽事宜请读各文件中的注释和各ReadMe.txt文件 
						或邮箱:cug_yangyuancong@hotmail.com
