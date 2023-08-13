{include file="header.tpl"}
<section class="crucero">
    <h2>{$cat->nombre}</h2>
    <div class="fotos_crucero">
        <img class="foto_1crucero" src="data:image/jpeg;base64,{$producto->img1_base64}" alt="Imagen 1">
        <img class="foto_1crucero" src="data:image/jpeg;base64,{$producto->img2_base64}" alt="Imagen 1">
    </div>
    <h6 class="crucero_detalles">
        {$cat->detalles}
    </h6>

    <h2>Plantas de la categoría {$cat->nombre}</h2>
    <article class="recuadros">

        {foreach from=$productos item=$producto}
            <section class="recuadro">
                <img class="foto_menu" src={$producto->img1} alt="Paisaje de montañas">
                <a class="link_tour" type="submit" href="{BASE_URL}producto/{$producto->ID}">
                    <h4 class="link_tour">{$producto->Producto}</h4>
                </a>
                <p>{$producto->descripcion}</p>
                <a class="link_tour" type="submit" href="{BASE_URL}producto/{$producto->ID}">Leer mas</a>
            </section>
        {{/foreach}}

    </article>
</section>

</main>
{include file="footer.tpl"}