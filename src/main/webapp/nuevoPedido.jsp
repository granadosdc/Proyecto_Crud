
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Agencia de Marketing y posicionamiento FullStack">
    <meta name="keywords" content="Marketing Posicionamiento, Codo a Codo 4.0">
    <meta name="author" content="Diana Granados">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, max|min-sacle=1">
    <title>Carrito</title>
    <!--CSS-->
    <link rel="stylesheet" href="css/StyleLogin.css">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel = "styleshee" href ="css2? family = Poppins: wght @ 100 & display = swap">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel = "preconnect" href = "https://fonts.gstatic.com">
    <link href = "https://fonts.googleapis.com/css2? family = Open + Sans: wght @ 300; 400; 700 & display = swap" rel =" hoja de estilo ">
</head>
<body>

    <form class="" action="Control?accion=nuevoPedido" >
            <div class="container col-lg-3">
            <div class="form-group text-center">
                <img src="img/carro_compra.svg" alt="" height="80" width="80"/>
                <p><strong>Carrito de Compra</strong></p>
            </div>
        <div class="select">
            <div class="mb-3">
                <label for="producto" class="form-label"><h4>Producto</h1></label>
                 <select class="form-select form-select-lg mb-2" aria-label=".form-select-mb example">
                 <option selected>Menú de Cremas</option>
                 <option value="1">Almendra canela</option>
                 <option value="2">Cacahuate canela</option>
                 <option value="3">Avellana cacao</option>
             </select>
                <select class="form-select form-select-sm" aria-label=".form-select-mb example">
                <option selected>gramos</option>
                <option value="1">500</option>
                <option value="2">250</option>
                <option value="3">120</option>
             </select>
            </div>
        </div>
        <div class="mb-3">
          <label for="cantidad" class="form-label">Cantidad</label>
          <input type="text" class="form-control" id="cantidad" name="cantidad">
        </div>
        
             <button type="submit" class="btn btn-primary">Comprar</button>
             
        </div>
    </form>
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>   
</body>
</html>