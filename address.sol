address payable public seller; // account for the seller
address payable public buyer; // account for the user

function transfer(address buyer, uint price) {
    buyer.transfer(price); // the transfer member transfers the price of the item
}


Um endereço é um tipo com um valor de 20 bytes que representa uma conta de usuário do Ethereum. Esse tipo pode ser um address regular ou um address payable.

A diferença entre os dois é que um tipo address payable é um endereço para o qual você pode enviar Ether e que contém os membros adicionais transfer e send.
