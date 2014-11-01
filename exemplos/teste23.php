<?php
class Pessoa
{
   protected $nome;
   protected $idade;

   public function __construct($nome, $idade)
   {
       $this->nome = $nome;
       $this->idade = $idade;
   }

   public function setIdade($idade)
   {
       $this->idade = $idade;
       return $this;
   }

   public function getIdade()
   {
       return $this->idade;
   }

   public function setNome($nome)
   {
       $this->nome = $nome;
       return $this;
   }

   public function getNome()
   {
       return $this->nome;
   }

}

$pessoa = new Pessoa('Diego', 23.5);
echo $pessoa->getNome();