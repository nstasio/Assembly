<p align="center">
 <img width="100px" src="https://github.com/NekoSilverFox/NekoSilverfox/blob/master/icons/silverfox.svg" align="center" alt="Assembly" />
 <h1 align="center">Assembly</h2>
 <p align="center"><b>⚡ 亲手编写基于王爽老师《汇编语言》的300个汇编程序例程</b></p>
</p>

<div align=center>

 [![License](https://img.shields.io/badge/license-Apache%202.0-brightgreen)](LICENSE)

<div align=left>

---

In this folder, I recorded notes and codes for learning assembly language in the summer vacation of 2020. :P

注：部分代码及练习基于王爽《汇编语言》第三版，具体题目及要求请见书中

</br>
 
**笔记请详见：**
 
[这是 Word 格式的笔记呀](https://github.com/NekoSilverFox/Assembly/blob/master/%E3%80%90%E7%AC%94%E8%AE%B0%E3%80%91%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80.docx)
 
</br>
  
文件夹编号说明：

其中，为了避免文件夹命名及编号混乱：【预留空位】指的是为以后复习或者相关新项目所预留出来的编号。

---

| 编号      | 说明                                                         |
| --------- | ------------------------------------------------------------ |
| 1 - 2     | 基础                                                         |
| 3 - 17    | 基于loop指令的代码及练习                                     |
| 18 - 20   | 【预留空位】loop指令预留空位                                 |
| 21 - 27   | and和or指令                                                  |
| 28 - 30   | 【预留空位】and和or指令                                      |
| 31 - 32   | byte ptr 字节型数据 和 word ptr 字型数据                     |
| 33 - 35   | 【预留空位】                                                 |
| 36 - 40   | div除法操作                                                  |
| 41 - 45   | div指令【预留空位】                                          |
| 46 - 47   | 寻址方式在结构化数据访问中的应用                             |
| 48 - 50   | 【预留空位】                                                 |
| 51        | offset操作符                                                 |
| 52 - 55   | 【预留空位】                                                 |
| 56 - 65   | JMP指令                                                      |
| 66        | jcxz条件转移指令                                             |
| 67 - 69   | 【预留空位】                                                 |
| 70        | LOOP循环指令                                                 |
| 71 - 74   | 【预留空位】                                                 |
| 74 - 77   | 向屏幕彩色输出【实验9】                                      |
| 78 - 80   | 【预留空位】                                                 |
| 82 - 83   | ret、retf指令                                                |
| 84 - 85   | 【预留空位】                                                 |
| 86 - 90   | 几种call的简介                                               |
| 91 - 98   | call指令与ret的联合应用                                      |
| 99 - 100  | 【预留空位】                                                 |
| 101 - 102 | mul乘法指令                                                  |
| 103 - 106 | 利用子程序的对字符串进行大小写转换                           |
| 106 - 110 | 【预留空位】                                                 |
| 111 - 117 | 设计一简化版（整理内存段中的数据、进行乘除法、将数值转化为对应的ASCII码） |
| 118 - 119 | 【预留空位】                                                 |
| 120 - 126 | 初步显示字符串                                               |
| 127 - 129 | 【预留空位】                                                 |
| 130 - 132 | adc指令                                                      |
| 136       | sbb指令                                                      |
| 140 - 146 | cmp条件判断指令                                              |
| 150 - 151 | rep movsb、cld/std实现数据正向/逆向传送                      |
| 160       | 以0结尾的字符串中小写字母转大写【综合运用】                  |
| 170       | 错误信息写入中断向量表【内中断】                             |
| 180 - 188 | 中断例程的运用                                               |
| 199       | 使用加法和位移指令计算(ax)=(ax)x10                           |
| 200 - 202 | 端口的初步造作                                               |
| 205       | 以“年-月-日 时;分;秒”的格式，显示当前时间                    |
| 220 - 224 | 键盘中断例程                                                 |
| 240 - 248 | 通过标号定位数据、直接定址表                                 |
| 260 - 261 | 接受键盘输入                                                 |
| 300 - 310 | C/C++ 下汇编测试                                             |
| 500       | 高级汇编例程                                                 |



---

编程小技巧：
将ds与si配合使用
将es与di配合使用	<--- 虽然es和si可以配合使用，但是介于后面涉及的课程及指令，不建议使用 ds:di,、es:si ！！

在对程序分段时，如果遇到寄存器冲突，可以先将冲突的寄存器push到栈中，需要时再pop出来

如果合理的使用db, dw, dd ==> 看操作的寄存器，比如：操作的寄存器为16位，则应该用dw

如果参数过多，要处理的数据使用较多的寄存器，那么可以先将数据进行结构化处理再进行编写代码，这样可以更好的处理数据

将字符串显示在屏幕上（B800H）时，一定要注意将存放属性的高位字节写入数据，否则会造成无法显示
将字符串显示在屏幕上（B800H）时，先输出余数，在对ax中的商是否为零进行判断，否则会造成以零为结尾的数值无法显示

将int型数值转换为string字符串时，在进行除10取余时，每显示完一个字符，记得将储存高位字节的dx清零

在编写子程序时，可在程序开头处将程序中用到的寄存器进行push，在ret前再进行pop，这样就不用考虑是否会影响到程序外的寄存器（注意push和pop的顺序）
---
Fork changes:
Adding English annotations, changing filenames to ASCII 8.3 names, and adding some debug output.
Please note, any English annotations are not translations, my Chinese is not good enough for that. They're just my own notes.