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

    function mostrar_cat($categoria, $producto)
    {
        if (isset($categoria->descripcion)) {
            $this->smarty->assign('cat', $categoria);
            $this->smarty->assign('productos', $producto);
            $this->smarty->display('templates/categoria.tpl');
        } else {
            echo "La categoria no existe o no tiene una descripción válida.";
        }
    }


    public function showNosotros()
    {
        $this->smarty->display('Nosotros.tpl');
    }
    
    public function showContactos()
    {
        $this->smarty->display('Contactos.tpl');
    }

    public function showConsejos()
    {
        $this->smarty->display('Consejos.tpl');
    }
}