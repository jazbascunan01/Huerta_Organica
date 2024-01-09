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
        foreach ($categorias as $categoria) {
            $img1_base64 = base64_encode($categoria->img1);

            // Asignar las imágenes codificadas en base64 a las propiedades del producto
            $categoria->img1_base64 = $img1_base64;

        }
        $this->smarty->display('templates/home.tpl'); // muestro el template    
    }
    function mostrar_categoria($categorias)
    {
        $this->smarty->assign('categorias', $categorias);
        foreach ($categorias as $categoria) {
            $img1_base64 = base64_encode($categoria->img1);

            // Asignar las imágenes codificadas en base64 a las propiedades del producto
            $categoria->img1_base64 = $img1_base64;

        }
        $this->smarty->display('templates/categorias.tpl'); // muestro el template    
    }

    function mostrar_cat($categoria, $producto)
    {
        if (isset($categoria->descripcion)) {
            $img1Base64 = base64_encode($categoria->img1);
            $img2Base64 = base64_encode($categoria->img2);

            // Asignar las imágenes codificadas en base64 a variables adicionales
            $categoria->img1_base64 = $img1Base64;
            $categoria->img2_base64 = $img2Base64;
            $this->smarty->assign('img1Base64', $img1Base64);
            $this->smarty->assign('img2Base64', $img2Base64);
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