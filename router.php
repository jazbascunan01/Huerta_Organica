<?php

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');


require_once('Controllers/Productos.Controller.php');
require_once('Controllers/Categorias.Controller.php');
$productosc = new ProductosController;
$categoriasc = new CategoriasController;
if (!empty($_REQUEST['action'])) {
    $action = $_REQUEST['action'];
} else {
    header('Location: ' . BASE_URL . 'home'); // acción por defecto si no envían
}
$partesURL = explode('/', $_GET['action']);

switch ($partesURL[0]) {
    case 'home':
        $categoriasc->show_home();
        break;
    case 'categorias':
        $categoriasc->show();
        break;
    case 'categoria':
        $categoriasc->showCategoria($partesURL[1]);
        break;
    case 'productos':
        $productosc->show();
        break;
    case 'producto':
        $productosc->showProducto($partesURL[1]);
        break;
    case 'nosotros':
        echo ("En construccion");
        break;
    case 'contacto':
        echo ("En construccion");
        break;
    case 'filtrar':
        $productosc->filtrar();
        break;
    case 'Nosotros':
        $categoriasc->showNosotros();
        break;
}