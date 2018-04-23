# 1 "test2.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 331 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "test2.c" 2
int ccc = 123;
int ddd = 444;

int max(const int a,const int b){
    if(a>b){
        return a;
    }
    return b;
}

int min(const int a,const int b){
    if(a<b){
        return a;
    }
    return b;
}
