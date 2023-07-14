{include file="header.tpl"}
<div id="content">
    <article class="contenido">
        <!--gran contenedor para  todo el contenido de la pagina web-->
        <article class="primer_imagen_de_fondo">
            <h2>Venta de plantas</h2>
            <!--fondo de huerta-->
        </article>

        <article class="fotos_de_vacaciones">
            <h3 class="titulo_corto">Comienza a saborear la frescura de la naturaleza en tu propia huerta orgánica.
                Obtén los mejores productos y cultiva tus propios alimentos ¡Empezá ahora tu viaje hacia una
                alimentación saludable y sostenible!</h3>
            <section class="contenedor_imagenes">
                <figure class="contenedor_fig">
                    <img class="anterior" id="anterior" src="{BASE_URL}images/318477.png" alt="Botón de anterior">
                </figure>
                <figure class="image">
                    <img class="imag" id="imag" src="{BASE_URL}images/imagen0.jpg" alt="Familia en silla aérea">
                </figure>
                <figure class="contenedor_fig">
                    <img class="siguiente" id="siguiente" src="{BASE_URL}images/318476.png" alt="Botón de siguiente">
                </figure>
            </section>

            <section class="galeria">
                <!--imagenes una al lado de la otra tipo galería-->
                <figure class="imagenes">
                    <img class="imagen" src="{BASE_URL}images/imagen0.jpg" />
                </figure>
                <figure class="imagenes">
                    <img class="imagen" src="{BASE_URL}images/imagen1.jpg" />
                </figure>
                <figure class="imagenes">
                    <img class="imagen" src="{BASE_URL}images/imagen2.jpg" />
                </figure>
                <figure class="imagenes">
                    <img class="imagen" src="{BASE_URL}images/imagen3.jpg" />
                </figure>
                <figure class="imagenes">
                    <img class="imagen" src="{BASE_URL}images/imagen4.jpg" />
                </figure>
                <figure class="imagenes">
                    <img class="imagen" src="{BASE_URL}images/imagen5.jpg" />
                </figure>
            </section>
        </article>
        <article class="servicios">

            <h3 class="titulo_largo">
                ¡Descubre la magia de la huerta orgánica! En Huerta Orgánica, te ofrecemos una increíble
                variedad de plantas para que puedas cultivar tu propio oasis verde. Sumérgete
                en una experiencia única mientras exploras las maravillas de la naturaleza y disfrutas de alimentos
                frescos y saludables directamente desde tu huerta. ¡Embárcate en esta aventura verde con nosotros y
                cultiva una vida llena de sabor y bienestar!
            </h3>
            <article class="recuadros">
                {foreach from=$categorias item=$categoria}

                    <section class="recuadro">
                        <img class="foto_menu" src={$categoria->img1} alt="Paisaje de montañas">
                        <h4>{$categoria->nombre}</h4>
                        <p>{$categoria->descripcion}
                        </p>
                    </section>
                {{/foreach}}

            </article>
        </article>

    </article>
</div>
{include file="footer.tpl"}