pragma solidity >0.7.0 <0.8.0;

contract Marketplace {
    address public seller;
    address public buyer;
    mapping (address => uint) public balances;

    event ListItem(address seller, uint price);
    event PurchasedItem(address seller, address buyer, uint price);

    enum StateType {
          ItemAvailable,
          ItemPurchased
    }

    StateType public State;

    constructor() public {
        seller = msg.sender;
        State = StateType.ItemAvailable;
    }

    function buy(address seller, address buyer, uint price) public payable {
        require(price <= balances[buyer], "Insufficient balance");
        State = StateType.ItemPurchased;
        balances[buyer] -= price;
        balances[seller] += price;

        emit PurchasedItem(seller, buyer, msg.value);
    }
}


Vamos nos aprofundar nos principais componentes deste contrato inteligente:

Existem:
Três variáveis de estado: buyer, seller e balances
Dois eventos: ListItem e PurchasedItem
Uma enumeração com dois valores: ItemAvailable e ItemPurchased
O construtor designa o usuário do vendedor como msg.sender e define o estado inicial como ItemAvailable. Esse construtor é chamado quando o contrato é criado.
A função buy usa três parâmetros: seller, buyer e price. Ela exige que o comprador tenha dinheiro suficiente para a compra. Em seguida,
 transfere o dinheiro do comprador para o vendedor e, por fim, uma mensagem é emitida.