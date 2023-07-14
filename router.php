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
        echo ("En construccion");
        break;
    case 'productos':
        echo ("En construccion");
        break;
    case 'nosotros':
        echo ("En construccion");
        break;
    case 'contacto':
        echo ("En construccion");
        break;
}