contract Items {
    uint256 item_id = 0;

    mapping(uint256 => Items_Schema) public items;

    struct Items_Schema {
      uint256 _id:
      uint256 _price:
      string _name;
    }

    function listItem(uint256 memory _price, string memory _name) public {
      items[item_id] = Items_Schema(item_id, _price, _name);
      item_id += 1;
    }
}


 Observação

A assinatura de mapeamento uint256 => Items_Schema indica que as chaves são um tipo inteiro sem sinal e os valores são de tipo struct Items_Schema.