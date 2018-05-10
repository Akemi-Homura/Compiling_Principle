tac: three address code. 三地址码
ENODE: 表达式

VARIABLE,INTEGER,TEXT; 三个终结符的语义值是SYMB\* symb类型,其他终结符没有语义值.

SYMB,TAC,ENODE的定义在vc.h文件中

mkname()
新建一个符号节点或返回一个已有符号节点

mkval()
新建一个符号节点，保存该整数，或返回已有符号节点(0~4).

mktext()
新建一个符号节点，保存该字符串，或返回已有符号节点.
