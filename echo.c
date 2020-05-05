
int main(int argc,char*argv[]){
    char c;
    bool quotation=false;
    bool backslash=false;
    bool apostrophe=false;
    while((c=getchar())!='\n'){
        if(apostrophe){
            if(c=='\'') apostrophe=false;
            else putchar(c);
        }else if(backslash){
            putchar(c);
            backslash=false;
        }else if(quotation){
            switch(c){
                case '\\':
                    backslash=true;
                    break;
                case '\"':
                    quotation=false;
                    break;
                default:
                    putchar(c);
            }
        }else{
            switch(c){
                case '\\':
                    backslash=true;
                    break;
                case '\"':
                    quotation=true;
                    break;
                case '\'':
                    apostrophe=true;
                    break;
                default:
                    putchar(c);
            }
        }
    }
}
