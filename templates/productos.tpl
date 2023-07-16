{include file="header.tpl"}
<div id="content">
    <h2>Descubre nuestras increibles plantas</h2>
    <h4 class="justify">Descubre un vivero lleno de maravillas vegetales donde podrás explorar una amplia variedad de plantas. Sumérgete
        en una experiencia única mientras te adentras en este fascinante mundo verde. En nuestro vivero, encontrarás una
        diversidad de especies y podrás aprender sobre la belleza y singularidad de cada una. Disfruta de un ambiente
        tranquilo y lleno de vida, donde podrás conectarte con la naturaleza y crear un espacio acogedor en tu hogar o
        jardín. </h4>

    <form method="POST" action="filtrar" class="formfilter">
        <label class="labelfiltro" for="crucero">Seleccionar Categoría:</label>
        <select class="selectfiltro" name="filtro" id="crucero">
            <option value="All">Todos los productos</option>
            {foreach from=$categorias item=categoria}
                <option value="{$categoria->ID}">{$categoria->nombre}</option>
            {/foreach}
        </select>

        <button class="buttonfiltro" type="submit"><img class="logo_nav" id="btnfilter"
                src="{BASE_URL}images/6488674.png" alt="logo filtrar"></button>
    </form>


    <article class="recuadros">
        {foreach from=$productos item=$producto}
            <section class="recuadro">
                <img class="foto_menu" src={$producto->img1} alt="Paisaje de montañas">
                <a class="link_tour" type="submit" href="producto/{$producto->ID}">
                    <h4 class="link_tour">{$producto->Producto}</h4>
                </a>
                <p>{$producto->descripcion}</p>
                <hr>
                <div class="precio">
                    <h5>Precio:</h5>
                    <p>$ {$producto->precio}</p>
                </div>
                <hr>
                <a class="link_tour" type="submit" href="producto/{$producto->ID}">Leer más</a>
            </section>
        {{/foreach}}
    </article>
</div>
{include file="footer.tpl"}