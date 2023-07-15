<?php
class productosModel
{
    private $db;
    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_huerta_organica;charset=utf8', 'root', '');
    }
    /**
     *  Obtiene la lista de tours
     */
    function getproductos()
    {
        $query = $this->db->prepare('SELECT * FROM productos');
        $query->execute();
        $productos = $query->fetchAll(PDO::FETCH_OBJ);
        return $productos;
    }
    public function getProductosByCategoria($categoriaId)
    {
        $query = $this->db->prepare('SELECT * FROM productos WHERE id_categoria = ?');
        $query->execute([$categoriaId]);
        $productos = $query->fetchAll(PDO::FETCH_OBJ);
        return $productos;
    }
    function getproducto($id)
    {
        $query = $this->db->prepare('SELECT * FROM productos WHERE ID = ?');
        $query->execute([$id]);
        $producto = $query->fetch(PDO::FETCH_OBJ);
        if ($query->rowCount() > 0) {
            return $producto;
        } else {
            return null; // ID no encontrado en la base de datos
        }
    }

    function getids($id)
    {
        $query = $this->db->prepare('SELECT ID FROM productos WHERE id_categoria = ?');
        $query->execute([$id]);
        $ids = $query->fetchAll(PDO::FETCH_COLUMN); // Obtener un arreglo de IDs
        return $ids;
    }
}