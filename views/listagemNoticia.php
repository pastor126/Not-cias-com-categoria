    <h1>Listagem de Notícias</h1>
    <a class="btn btn-primary mb-2" href="<?php echo APP; ?>noticia/novo">Novo</a>
    <table class="table table-striped table-hover table-bordered">
      <thead>
        <tr>
          <th>ID</th>
          <th>Categoria</th>
          <th>Titulo</th>
          <th>Data</th>
          <th>Autor</th>
          <th>Editar</th>
          <th>Excluir</th>
        </tr>
      </thead>
      <tbody>
        <?php
          foreach ($noticias as $noticia) {
              $data = date("d/m/Y", strtotime($noticia['data']));
              $path_editar = APP.'noticia/editar';
              $path_excluir = APP.'noticia/excluir';
              echo "
              <tr>
                <td>{$noticia['id']}</td>
                <td>{$noticia['categoria_categoria']}</td>
                <td>{$noticia['titulo']}</td>
                <td>$data</td>
                <td>{$noticia['autor']}</td>
                <td><a class='btn btn-primary' href='$path_editar/{$noticia['id']}'>Editar</a></td>
                <td><a class='btn btn-danger' href='$path_excluir/{$noticia['id']}'>Excluir</a></td>
              </tr>
              ";
          }
         ?>

      </tbody>
    </table>
