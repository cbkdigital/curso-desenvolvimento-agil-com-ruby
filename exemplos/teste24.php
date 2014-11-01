<?php
class Aluno extends Pessoa
{
   protected $nota;
   public function __construct($nome, $idade, $nota)
   {
       parent::__construct($nome, $idade);
       $this->nota = $nota;
   }
   public function setNota($nota)
   {
       $this->nota = $nota;
       return $this;
   }
   public function getNota()
   {
       return $this->nota;
   }    
}

$aluno = new Aluno('Diego', 23.5, 9.9);
echo $aluno->getNota();