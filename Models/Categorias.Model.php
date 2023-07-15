<?php
class CategoriasModel
{
    private $db;
    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_huerta_organica;charset=utf8', 'root', '');
    }
    /**
     *  Obtiene la lista de cruceros
     */
    function getcategorias()
    {
        $query = $this->db->prepare('SELECT * FROM categorias');
        $query->execute();
        $categorias = $query->fetchAll(PDO::FETCH_OBJ);
        return $categorias;
    }
    function getcategoriass()
    {
        $query = $this->db->prepare('SELECT * FROM categorias');
        $query->execute();
        $categorias = $query->fetchAll(PDO::FETCH_OBJ);
        
        $indexedCategorias = array();
        foreach ($categorias as $categoria) {
            $indexedCategorias[$categoria->ID] = $categoria;
        }
        
        return $indexedCategorias;
    }

    function getcategoria($id)
    {
        $query = $this->db->prepare('SELECT * FROM categorias WHERE ID = ?');
        $query->execute([$id]);
        $categoria = $query->fetch(PDO::FETCH_OBJ);
        return $categoria;
    }
}