// SPDX-License-Identifier: GPL-3.0
// Livre para uso - Desenvolvido com muitas horas de pesquisa na internet e com muitos erros 

// Curso PUCSP require (ok), array (ok), mapping (ok), struct (ok), event (ok)//
// contrato elaborado para cadastrar o time para festa junina, tentativa fracassada de cobrar pelo evento // 

pragma solidity 0.8.4;

    contract _festaJunina {
        uint256 _contagemDePessoasFesta = 0;
        
        mapping (uint => Pessoas) public pessoa;
        
    struct Pessoas {
        uint _id;
        string _nome;
        string _sobrenome;     
    }  
 
    function adicionarPessoas(string memory _nome, string memory _sobrenome) public {
        _contagemDePessoasFesta + 1;
        pessoa[_contagemDePessoasFesta] = Pessoas(_contagemDePessoasFesta, _nome, _sobrenome);
    }
    event Deposito(address indexed _from, bytes32 indexed _id, uint _valor);
    function comprar(uint valor) public payable {
        if (valor < msg.value / 1 ether)
            revert("Pague 1 ether para curtir a festa");
        // forma alternativa: 
        require(
            valor <= msg.value / 1 ether,
            "Pague 1 ether para curtir a festa"
        );
        // faça a compra:
    
     }
}
        
        
