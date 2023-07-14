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

    public function show_home()
    {
        $categorias = $this->model->getcategorias();
        $this->view->mostrar_home($categorias);
    }
}