program                 :       function_list
function_list           :       function
                        |       function_list function
function                :       FUNC VARIABLE '(' parameter_list ')'
                                statement
                        |       error
parameter_list          :       variable_list
                        |
variable_list           :       VARIABLE
                        |       variable_list ',' VARIABLE
statement               :       assignment_statement
                        |       return_statement
                        |       print_statement
                        |       null_statement
                        |       if_statement
                        |       while_statement
                        |       block
                        |       error
assignment_statement    :       VARIABLE ASSIGN_SYMBOL expression
expression              :       expression '+' expression
                        |       expression '-' expression
                        |       expression '*' expression
                        |       expression '/' expression
                        |       '-' expression  %prec UMINUS
                        |       '(' expression ')'
                        |       INTEGER
                        |       VARIABLE
                        |       VARIABLE '(' argument_list ')'
                        |       error
argument_list           :
                        |       expression_list
expression_list         :       expression
                        |       expression ',' expression_list
print_statement         :       PRINT print_list
print_list              :       print_item
                        |       print_list ',' print_item
print_item              :       expression
                        |       TEXT
return_statement        :       RETURN expression
null_statement          :       CONTINUE
if_statement            :       IF expression THEN statement FI
                        |       IF expression THEN statement
                                ELSE statement FI
while_statement         :       WHILE expression DO statement DONE
block                   :       '{' declaration_list statement_list '}'
declaration_list        :
                        |       declaration_list declaration
declaration             :       VAR variable_list
statement_list          :       statement

                        |       statement_list statement
