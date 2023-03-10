<?php
  class Noticia extends Model{
    protected $tabela="noticia";
    protected $query = "SELECT noticia.*, categoria.categoria as categoria_categoria FROM noticia JOIN categoria ON categoria.id = noticia.categoria_id ORDER BY data, titulo ";
    protected $ordem="data, titulo";
    
  }
 ?>
