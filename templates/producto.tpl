{include file="header.tpl"}
<section class="tour">
    <h2>{$producto->Producto}</h2>
    <div class="fotos_destino_tour">
        <img class="foto_1tour" src="data:image/jpeg;base64,{$producto->img1_base64}" alt="Imagen 1">
        <img class="foto_1tour" src="data:image/jpeg;base64,{$producto->img2_base64}" alt="Imagen 1">
    </div>

    <h6 class="tour_detalles">{$producto->detalles}</h6>
    </div>
</section>

</main>
{include file="footer.tpl"}