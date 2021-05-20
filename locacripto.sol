// SPDX-License-Identifier: CC-BY-4.0
pragma solidity 0.8.4;

contract emprestimoCripto {
    string public locatario;
    string public locador;
    string public tipoDeAtivo;
    uint public valorEmprestimo;
    string public walletDeposito;
    uint constant jurosMensaisEmBTC = 5;
    
    constructor() {
        locatario = "VictorGomes";
        locador = "SatoshiNakamoto";
        tipoDeAtivo = "btc";
        valorEmprestimo = 50;
        walletDeposito = "12GeGbVgjGhRGiE8fLXkwJVheoD2xfuZ3t";
    }
    
    function simularDevolucaoBtc (uint256 quantidadeDeMeses)
    public
    view
    returns (uint valorDevolucaoBtc)
    {
        valorDevolucaoBtc = valorEmprestimo*quantidadeDeMeses*jurosMensaisEmBTC;
        return valorDevolucaoBtc;
    }
    
}   
    
    
    
    
