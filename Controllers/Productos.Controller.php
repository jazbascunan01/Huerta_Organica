<?php

require_once('libs/Smarty.class.php');
require_once('Views/Productos.View.php');
require_once('Models/Productos.Model.php');
require_once('Controllers/Categorias.Controller.php');


class ProductosController
{
    private $view;
    private $model;
    private $categoriascontroller;
    public function __construct()
    {
        $this->view = new ProductosView();
        $this->model = new ProductosModel();
        $this->categoriascontroller = new categoriasController();
    }
    public function show()
    {
        $categorias = $this->getAllcategorias(); //Obtener los cruceros con el crucero controller
        $productos = $this->getAllproductos(); //obtener todos los tours del model
        $this->view->mostrar_productos($categorias, $productos);
    }
    public function getAllproductos()
    {
        return $this->model->getproductos();
    }

    public function getAllcategorias()
    {
        return $this->categoriascontroller->getModel()->getcategoriass();
    }
    public function getModel()
    {
        return $this->model;
    }

    public function filtrar()
    {
        $categoriaSeleccionado = $_POST['filtro'];
        if ($categoriaSeleccionado === "All") {
            $productos = $this->model->getproductos();
            $categorias = $this->categoriascontroller->getModel()->getCategorias();
            $this->view->mostrar_productos($categorias, $productos);
        } else {
            // Obtener los tours correspondientes al crucero seleccionado
            $productos = $this->model->getProductosByCategoria($categoriaSeleccionado);
            // Obtener todos los cruceros para cargar el select
            $categorias = $this->categoriascontroller->getModel()->getCategorias();

            if (empty($productos)) {
                $this->view->showError("No hay plantas disponibles para esta categoría.");
            } else {
                $this->view->mostrarProductosFiltrados($categorias, $productos);
            }
            // Asignar los datos a la vista
        }

    }
    public function showProducto($id)
    {
        $producto = $this->model->getproducto($id);
        $categoria_id = $producto->id_categoria;
        $categoria = $this->categoriascontroller->getModel()->getcategoria($categoria_id);
        $this->view->mostrar_producto($producto, $categoria);
    }
}