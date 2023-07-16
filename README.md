# Documentación de Huerta Orgánica

Esta es la documentación del proyecto Huerta Orgánica, un sitio web para un vivero familiar que se dedica a la venta de plantas y productos relacionados con la huerta orgánica. El proyecto está desarrollado en PHP y utiliza el patrón de diseño MVC (Modelo-Vista-Controlador) para organizar el código.

## Índice

1. [Descripción general](#descripcion-general)
2. [Archivos principales](#archivos-principales)
    - [router.php](#router-php)
    - [categoriascontroller.php](#categoriascontroller-php)
    - [ProductosController.php](#productoscontroller-php)
    - [main.js](#main-js)
    - [categoriasModel.php](#categoriasmodel-php)
    - [productosModel.php](#productosmodel-php)
    - [categoriasview.php](#categoriasview-php)
    - [productosview.php](#productosview-php)
    - [.htaccess](#htaccess)
3. [Introducción](#introduccion)
4. [Desarrollo](#desarrollo)
5. [Conclusion](#conclusion)
6. [Instalación](#instalacion)
7. [Uso](#uso)
8. [Tecnologías utilizadas](#tecnologias-utilizadas)
9. [Contribuciones](#contribuciones)
10. [Licencia](#licencia)

## Descripción general<a name="descripcion-general"></a>

El proyecto Huerta Orgánica es un sitio web que permite a los usuarios explorar diferentes productos relacionados con la huerta orgánica. Los usuarios pueden navegar por las categorías de productos, ver detalles de los productos y realizar filtros para encontrar productos específicos. El proyecto utiliza la librería Smarty para la gestión de las vistas y una base de datos MySQL para almacenar los datos de las categorías y productos.

## Archivos principales<a name="archivos-principales"></a>

### router.php<a name="router-php"></a>

El archivo router.php es el punto de entrada principal del proyecto y se encarga de dirigir las solicitudes a los controladores correspondientes. Este archivo define una serie de rutas que mapean las URL a las acciones dentro de los controladores. Por ejemplo, la ruta `/home` se asigna a la acción `show_home` del controlador de categorías.

### categoriascontroller.php<a name="categoriascontroller-php"></a>

El archivo categoriascontroller.php contiene la definición del controlador de categorías. Este controlador se encarga de manejar las acciones relacionadas con las categorías de productos, como mostrar la lista de categorías, mostrar una categoría específica y filtrar los productos por categoría. Utiliza el modelo CategoriasModel para acceder a los datos de las categorías y el controlador ProductosController para obtener los productos relacionados con una categoría específica. Utiliza la vista CategoriasView para renderizar las plantillas Smarty y mostrar la información al usuario.

### ProductosController.php<a name="productoscontroller-php"></a>

El archivo ProductosController.php contiene la definición del controlador de productos. Este controlador se encarga de manejar las acciones relacionadas con los productos, como mostrar la lista de productos, mostrar un producto específico y realizar filtros por categoría. Utiliza el modelo ProductosModel para acceder a los datos de los productos y el controlador CategoriasController para obtener la lista de categorías. Utiliza la vista ProductosView para renderizar las plantillas Smarty y mostrar la información al usuario.

### main.js<a name="main-js"></a>

El archivo main.js contiene el código JavaScript que se ejecuta en el lado del cliente para gestionar la interacción con la página. Proporciona funcionalidades como el manejo del menú de navegación, la visualización de imágenes y la integración con el mapa.

### categoriasModel.php<a name="categoriasmodel-php"></a>

El archivo categoriasModel.php contiene la definición del modelo de categorías. Este modelo se encarga de acceder a la base de datos y obtener la información de las categorías de productos. Utiliza PDO (PHP Data Objects) para la conexión y ejecución de consultas SQL.

### productosModel.php<a name="productosmodel-php"></a>

El archivo productosModel.php contiene la definición del modelo de productos. Este modelo se encarga de acceder a la base de datos y obtener la información de los productos. Proporciona métodos para obtener todos los productos, filtrar por categoría y obtener productos por ID. Utiliza PDO (PHP Data Objects) para la conexión y ejecución de consultas SQL.

### categoriasview.php<a name="categoriasview-php"></a>

El archivo categoriasview.php contiene la definición de la vista de categorías. Esta vista utiliza la librería Smarty para renderizar las plantillas HTML y mostrar la información al usuario. Proporciona métodos para mostrar la lista de categorías, la página de inicio, una categoría específica y la sección de "Nosotros" y "Contactos".

### productosview.php<a name="productosview-php"></a>

El archivo productosview.php contiene la definición de la vista de productos. Al igual que la vista de categorías, utiliza Smarty para renderizar las plantillas HTML y mostrar la información al usuario. Proporciona métodos para mostrar la lista de productos, los productos filtrados y los detalles de un producto específico.

### .htaccess<a name="htaccess"></a>

El archivo .htaccess es un archivo de configuración utilizado en servidores Apache para definir reglas de reescritura de URL. En este proyecto, se utiliza para redirigir todas las solicitudes a router.php y permitir la utilización de URL amigables. También se excluyen las solicitudes de archivos estáticos como CSS, JavaScript e imágenes para que no sean procesadas por router.php.

## Introducción<a name="introduccion"></a>

El proyecto Huerta Orgánica es una solución en línea para facilitar la adquisición de productos relacionados con la huerta orgánica. Proporciona una interfaz intuitiva y fácil de usar para que los usuarios puedan explorar y comprar productos de manera conveniente.

## Desarrollo<a name="desarrollo"></a>

El desarrollo del proyecto se basa en el patrón de diseño MVC (Modelo-Vista-Controlador) para una estructura organizada y modular del código. Esto permite una fácil mantenibilidad y escalabilidad del proyecto a medida que crece.

## Conclusion<a name="conclusion"></a>

El proyecto Huerta Orgánica ofrece una solución en línea para facilitar la adquisición de productos relacionados con la huerta orgánica. Mediante su arquitectura basada en el patrón MVC, el proyecto se organiza de manera estructurada y modular, lo que facilita el mantenimiento y la escalabilidad del código. Además, se utilizan tecnologías como PHP, MySQL y Smarty para proporcionar un entorno de desarrollo robusto y eficiente.

## Instalación<a name="instalacion"></a>

1. Clona el repositorio: `git clone https://github.com/tu-usuario/huerta-organica.git`
2. Configura la base de datos MySQL en el archivo `config.php`.
3. Importa el archivo de la base de datos `database.sql`.
4. Configura tu servidor web para que el directorio raíz apunte a la carpeta del proyecto.
5. Asegúrate de tener instalado PHP y MySQL en tu entorno de desarrollo.

## Uso<a name="uso"></a>

1. Accede al sitio web desde tu navegador.
2. Explora las diferentes categorías de productos en la página de inicio.
3. Haz clic en una categoría para ver los productos relacionados.
4. Filtra los productos por categoría utilizando el menú desplegable.
5. Haz clic en un producto para ver los detalles.
6. Utiliza el menú de navegación para acceder a las secciones "Nosotros" y "Contactos".

## Tecnologías utilizadas<a name="tecnologias-utilizadas"></a>

- PHP
- MySQL
- Smarty

## Contribuciones<a name="contribuciones"></a>

Las contribuciones son bienvenidas. Si encuentras algún problema o tienes alguna mejora, no dudes en abrir un issue o enviar un pull request.

## Licencia<a name="licencia"></a>

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
