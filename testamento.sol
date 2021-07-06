// SPDX-License-Identifier: GPL-3.0

// Curso PUCSP - Victor 06072021 //
// Testamentotestamento simples para testador indicar beneficiarios e participacao // 
    
    pragma solidity ^0.8.6;

    contract Testamento {
    address public advogadoDonoContrato;
    address public testador;
    address public inventariante;
    mapping(address => uint) public beneficiarios; //uint = parte de 100 

    constructor(address _advogadoDonoContrato)  {
    advogadoDonoContrato = _advogadoDonoContrato;
  }
    //somente o advogado de confianca podera designar o testador
    function designarTestador(address _testador) public advogadoDonoContratoSomente {
    testador = _testador;
  }
    //possibilita o testador indicar Inventariante 
    function indicarInventariante(address _inventariante) public testadorSomente {
    inventariante = _inventariante;
  }
    //possibilita o testador indicar beneficiarios da heranca cripto e sua respectiva participacao
    function adicionarBeneficiario(address beneficiario, uint share) public testadorSomente {
    beneficiarios[beneficiario] = share;
  }
   
    modifier advogadoDonoContratoSomente() {
    require(msg.sender == advogadoDonoContrato, "somente o advogado dono do contrato pode chamar essa funcao");
    _;
  }

  modifier testadorSomente() {
    require(testador != address(0), "testador precisa ser definido primeiro");
    require(msg.sender == testador, "somente testador pode chamar esta funcao");
    _;
  }

}
