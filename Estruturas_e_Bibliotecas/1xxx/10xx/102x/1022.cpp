#include <bits/stdc++.h>
using namespace std;
typedef struct num
{
    int n;
    int d;
} num;

num calcular(char op, num n1, num n2)
{
    num num;
    switch (op)
    {

    case '+':
        num.n = (n1.n * n2.d + n2.n * n1.d);
        num.d = (n1.d * n2.d);
        return num;
        break;
    case '-':
        num.n = (n1.n * n2.d - n2.n * n1.d);
        num.d = (n1.d * n2.d);
        return num;
        break;
    case '/':
        num.n = (n1.n * n2.d);
        num.d = (n1.d * n2.n);
        return num;
        break;
    case '*':
        num.n = (n1.n * n2.n);
        num.d = (n1.d * n2.d);
        return num;
        break;

    default:
        break;
    }
}

num simplificar(int n, int d){
    num num;
    num.n=n;
    num.d=d;
    int menor = n < d ? n : d;
    if (menor == 1) {
        return num;
    }

    for (int i = 2; i <= menor; i++)
    {
        if(n % i==0 && d%i==0){
          return simplificar(n/i,d/i);}
        else if (i==menor)
        {
            return num;
        }
        
    }
    
    return num;
    
}
int main()
{
    num n,n1, n2;
    int qtd;
    char op;
  
    scanf("%d", &qtd);
    for (int i = 0; i < qtd ; i++)
    {
        bool neg=false;
        scanf("%d / %d %c %d / %d", &n1.n,&n1.d, &op, &n2.n, &n2.d );
        n=calcular(op,n1,n2);
        printf("%d/%d = ",n.n,n.d);
        if(n.n<0){
            neg=true;
            n.n*=-1;
        }
        n=simplificar(n.n,n.d);
        n.n*= neg ? -1 : 1;
        
        printf("%d/%d\n",n.n,n.d);
    }

    return 0;
}