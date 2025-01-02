
Boolianos
Os boolianos são definidos usando a palavra-chave bool. Eles sempre têm um valor de true ou false.

bool forSale; //true if an item is for sale
bool purchased; //true if an item has been purchased

Os boolianos são comumente usados em instruções de comparação. Por exemplo:

if(balance > 0 & balance > price) {
    return true;
}

if(price > balance) {
    return false;
}
Os boolianos também podem ser usados em parâmetros de função e tipos de retorno.

function buy(int price) returns (bool success) {
    // ...
}

