Enumerações

Uma enumeração pode ser usada, por exemplo, para apresentar status diferentes para um item. 
Você pode considerar enumerações como a representação de respostas de várias opções em que todos os 
valores são predefinidos e você precisa selecionar um. 
Enumerações podem ser declaradas em definições de contrato ou de biblioteca.

enum Status { 
    Pending,
    Shipped,
    Delivered 
}

Status public status;

constructor() public {
    status = Status.Pending;
}



