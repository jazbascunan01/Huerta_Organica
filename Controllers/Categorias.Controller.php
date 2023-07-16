<?php

require_once('libs/Smarty.class.php');
require_once('Views/Categorias.View.php');
require_once('Models/Categorias.Model.php');
require_once('Controllers/Productos.Controller.php');


class CategoriasController
{
    private $view;
    private $model;
    private $productosController;
    public function __construct()
    {
        $this->view = new CategoriasView();
        $this->model = new CategoriasModel();
    }

    public function getAllcategorias()
    {
        return $this->model->getcategorias();
    }
    public function show()
    {
        $categorias = $this->getAllcategorias();
        $this->view->mostrar_categoria($categorias);
    }
    public function show_home()
    {
        $categorias = $this->model->getcategorias();
        $this->view->mostrar_home($categorias);
    }
    public function getModel()
    {
        return $this->model;
    }
    public function showCategoria($id)
    {
        $this->productosController = new ProductosController();
        $categoria = $this->model->getcategoria($id); // Obtener el crucero con el id
        $productos_ids = $this->productosController->getModel()->getIds($id); // Acceder al modelo a través del método getModel()
        $productos = array(); // Inicializar un arreglo vacío para almacenar los tours

        // Obtener los tours correspondientes a cada ID
        foreach ($productos_ids as $producto_id) {
            $producto = $this->productosController->getModel()->getProducto($producto_id); // Acceder al modelo a través del método getModel()
            $productos[] = $producto; // Agregar el tour al arreglo
        }

        $this->view->mostrar_cat($categoria, $productos);
    }

    public function showNosotros()
    {
        $this->view->showNosotros();
    }
}