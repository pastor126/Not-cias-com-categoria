    <h1>Cadastro de Categoria</h1>
    <form action="<?php echo APP; ?>categoria/salvar" method="post">
      <div class="mb-3">
          <label for="id" class="form-label">ID</label>
          <input readonly type="text" class="form-control" id="id" value="<?php echo $categoria['id']; ?>" name="id">
      </div>
      <div class="mb-3">
          <label for="categoria" class="form-label">Descrição</label>
          <input type="text" class="form-control" id="categoria" value="" name="categoria">
      </div>

      <button class="btn btn-primary" type="submit" name="button">Salvar</button>
    </form>

