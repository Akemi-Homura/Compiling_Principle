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
