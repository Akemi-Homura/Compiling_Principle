# include <stdio.h>
# include <iostream>
# include "parse.h"
# include "y.tab.h"
# include "rapidxml.hpp"
# include "rapidxml_print.hpp"
# include "rapidxml_utils.hpp"
# include "rapidxml_iterators.hpp"

using namespace rapidxml;

xml_document<> doc;

xml_node<>* ex(nodeType *p) {
    if (!p) return NULL;
    xml_node<> *root;
    char* node_name = doc.allocate_string(p->name);
    switch(p->type){
        char* node_id;
        char str_con[10];
        char* node_con;
        case typeCon:
            sprintf(str_con,"%d",p->con);
            node_con = doc.allocate_string(str_con);
            root = doc.allocate_node(node_element,node_name,node_con);
            break;
        case typeId:
            node_id = doc.allocate_string(p->id);
            root = doc.allocate_node(node_element,node_name,node_id);
            break;
        case typeOpr:
            root = doc.allocate_node(node_element,node_name,0);
            for(int i=0;i<p->opr.nops;i++)
                root->append_node(ex(p->opr.op[i]));
            break;
    }
    return root;
}
// xml_node<>* ex(nodeType *p) {
    // if (!p) return NULL;
    // xml_node<> *root=doc.allocate_node(node_element,"root",0);
    // switch(p->type){
        // case typeCon:
            // printf("Constant: %d\n",p->con);
            // break;
        // case typeId:
            // printf("Identifier: %s\n",p->id);
            // break;
        // case typeOpr:
            // printf("%s\n",p->name);
            // for(int i=0;i<p->opr.nops;i++)
                // ex(p->opr.op[i]);
            // break;
    // }
    // return root;
// }
// xml_node<>* ex(nodeType *p) {
    // xml_node<> *root = doc.allocate_node(node_element,"root",0);
    // return root;
// }

void display(xml_node<> *root){
    doc.append_node(root);
    std::cout << doc;
}
