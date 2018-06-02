typedef enum {typeCon, typeId, typeOpr} nodeEnum;

typedef struct {
    int nops;
    struct nodeTypeTag **op;
} oprNodeType;

typedef struct nodeTypeTag{
    nodeEnum type;
    char* name;

    union {
        int con;    /* constants */
        char* id;   /* identifiers */
        oprNodeType opr;    /* operators */
    };
} nodeType;
