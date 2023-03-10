    <h1>Listagem de Categorias</h1>
    <a class="btn btn-primary mb-2" href="<?php echo APP; ?>categoria/novo">Nova Categoria</a>
    <table class="table table-striped table-hover table-bordered">
      <thead>
        <tr>
          <th>ID</th>
          <th>Descrição</th>
          <th>Editar</th>
          <th>Excluir</th>
        </tr>
      </thead>
      <tbody>
        <?php
          foreach ($categorias as $categoria) {
              $path_editar = APP.'categoria/editar';
              $path_excluir = APP.'categoria/excluir';
              echo "
              <tr>
                <td>{$categoria['id']}</td>
                <td>{$categoria['categoria']}</td>
                <td><a class='btn btn-primary' href='$path_editar/{$categoria['id']}'>Editar</a></td>
                <td><a class='btn btn-danger' href='$path_excluir/{$categoria['id']}'>Excluir</a></td>
              </tr>
              ";
          }
         ?>

      </tbody>
    </table>
