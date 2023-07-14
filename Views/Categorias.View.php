<?php
class CategoriasView
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
    }
    function mostrar_home($categorias)
    {
        $this->smarty->assign('categorias', $categorias);
        $this->smarty->display('templates/home.tpl'); // muestro el template    
    }
    function mostrar_categoria($categorias)
    {
        $this->smarty->assign('categorias', $categorias);
        $this->smarty->display('templates/categorias.tpl'); // muestro el template    
    }
}