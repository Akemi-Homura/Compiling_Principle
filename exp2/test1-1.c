# 1 "test1.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 331 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "test1.c" 2
int aaa = 111;
int bbb = 222;

extern int ccc;
extern int ddd;

int main(){
    int eee;
    int fff;
    eee = max(aaa,ccc);
    fff = min(bbb,ddd);
    printf("eee :%d\n",eee);
    printf("fff :%d\n",fff);
    return 0;
}
