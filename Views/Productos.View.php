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
        // Codificar las imágenes en base64 antes de asignarlas a la plantilla
        foreach ($productos as &$producto) {
            $img1_base64 = base64_encode($producto->img1);
            $img2_base64 = base64_encode($producto->img2);

            // Asignar las imágenes codificadas en base64 a variables adicionales
            $producto->img1_base64 = $img1_base64;
            $producto->img2_base64 = $img2_base64;
        }

        // Asignar las listas de categorías y productos (con las imágenes en base64) a la plantilla
        $this->smarty->assign('categorias', $categorias);
        $this->smarty->assign('productos', $productos);

        // Mostrar el template
        $this->smarty->display('templates/productos.tpl');
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
            // Codificar las imágenes en base64 antes de asignarlas a la plantilla
            $img1Base64 = base64_encode($producto->img1);
            $img2Base64 = base64_encode($producto->img2);

            // Asignar las imágenes codificadas en base64 a variables adicionales
            $producto->img1_base64 = $img1Base64;
            $producto->img2_base64 = $img2Base64;

            // Asignar las variables a la plantilla
            $this->smarty->assign('producto', $producto);
            $this->smarty->assign('categoria', $categoria);
            $this->smarty->assign('img1Base64', $img1Base64);
            $this->smarty->assign('img2Base64', $img2Base64);

            $this->smarty->display('templates/producto.tpl');
        } else {
            echo "El producto no existe o no tiene una descripción válida.";
        }
    }
}