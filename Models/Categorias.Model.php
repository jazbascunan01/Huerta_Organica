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
}