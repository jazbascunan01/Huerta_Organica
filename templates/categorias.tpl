{include file="header.tpl"}
<div id="content">
    <article class="contenido">

    <h2>Categorias</h2>
    <h4>Te invitamos a explorar una amplia variedad de especies de plantas</h4>

    <article class="recuadros">
        {foreach from=$categorias item=$categoria}

            <section class="recuadro">
                <img class="foto_menu" src={$categoria->img1} alt="Paisaje de montañas">
                <a class="link_tour" type="submit" href="categoria/{$categoria->ID}"><h4>{$categoria->nombre}</h4></a>
                <p>{$categoria->descripcion}</p>
                <a class="link_tour" type="submit" href="categoria/{$categoria->ID}">Leer más</a>
            </section>
        {{/foreach}}

    </article>
    </article>
</div>
{include file="footer.tpl"}