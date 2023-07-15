<?php

require_once('libs/Smarty.class.php');
require_once('Views/Categorias.View.php');
require_once('Models/Categorias.Model.php');


class ProductosView
{
    private $smarty;
    public function __construct()
    {
        $this->smarty = new Smarty();
    }
    function mostrar_productos($categorias, $productos)
    {
        $this->smarty->assign('categorias', $categorias); // Asignar la lista de cruceros
        $this->smarty->assign('productos', $productos); // Asignar la lista de tours
        $this->smarty->display('templates/productos.tpl'); // Mostrar el template
    }
    public function showError($msgError)
    {
        $this->smarty->assign('msg', $msgError);
        $this->smarty->display('error.tpl');
    }
    function mostrarProductosFiltrados($categorias, $productos)
    {
        $this->smarty->assign('categorias', $categorias);
        $this->smarty->assign('productos', $productos);
        $this->smarty->display('templates/productos.tpl');
    }
    function mostrar_producto($producto, $categoria)
    {
        if (isset($producto->descripcion)) {
            $this->smarty->assign('producto', $producto);
            $this->smarty->assign('categoria', $categoria);
            $this->smarty->display('templates/producto.tpl');
        } else {
            echo "El producto no existe o no tiene una descripción válida.";
        }
    }
}