{include file="header.tpl"}
<section class="tour">
    <h2>{$producto->Producto}</h2>
    <div class="fotos_destino_tour">
        <img class="foto_1tour" src="{$producto->img1}" alt="imagen del destino">
        <img class="foto_1tour" src="{$producto->img2}" alt="imagen del destino">
    </div>

    <h6 class="tour_detalles">{$producto->detalles}</h6>
</div>
</section>

</main>
{include file="footer.tpl"}