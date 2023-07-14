<?php

require_once('libs/Smarty.class.php');
require_once('Views/Categorias.View.php');
require_once('Models/Categorias.Model.php');


class CategoriasController
{
    private $view;
    private $model;
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
}