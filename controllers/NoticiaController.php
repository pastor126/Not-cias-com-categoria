<?php
   class NoticiaController extends Controller{
     function listar() {
       $model = new Noticia();
       $noticias = $model->read();
      
       $this -> view('listagemNoticia',compact('noticias'));
      
     }

     function novo() {
       $noticia = array();
       $noticia['id'] = 0;
       $noticia['titulo'] = "";
       $noticia['texto'] = "";
       $noticia['categoria_id'] = "";
       $noticia['data'] = "";
       $noticia['autor'] = "";
       $noticia['imagem'] = "";
       
       $modelCategoria = new Categoria();
       $categorias = $modelCategoria -> read();

       $this->view('frmNoticia', compact('noticia', 'categorias'));
     }

     function salvar() {
       $noticia = array();
       $noticia['id'] = $_POST['id'];
       $noticia['titulo'] = $_POST['titulo'];
       $noticia['texto'] = $_POST['texto'];
       $noticia['categoria_id'] = $_POST['categoria_id'];
       $noticia['autor'] = $_POST['autor'];
       $noticia['data'] = $_POST['data'];
       $noticia['imagem'] = $_POST['imagem'];
       $model = new Noticia();
       if ($noticia['id'] == 0) {
         $model->create($noticia);
       } else {
         $model->update($noticia);
       }
       $this->redirect('noticia/listar');
     }

     function editar($id) {
       $model = new Noticia();
       $noticia = $model->getById($id);
       
       $modelCategoria = new Categoria();
       $categorias = $modelCategoria->read();

       $this -> view('frmNoticia', compact('noticia', 'categorias'));
     }

     function excluir($id) {
       $model = new Noticia();
       $model->delete($id);
       $this->redirect('noticia/listar');
     }
   }

 ?>
