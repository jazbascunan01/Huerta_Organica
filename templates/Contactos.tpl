{include file="header.tpl"}
<article class="contenido">
    <article class="primer_imagen_de_fondo" id="contactos">
        <h2 class="mas_chico">Contacto</h2>
    </article>
    <h3>¡Trabajemos Juntos!</h3>
    <p>Si deseas consultar mayor información sobre nuestros productos o tienes alguna duda al respecto, no dudes en
        consultarnos!
    </p>
    <article class="gran_container">
        <article class="contenedor" id="contacto">
            <!--api de FormSubmit para permitir enviar el formulario a un correo electronico-->
            <form id="form_cargar_datos" action="https://formsubmit.co/gsarguello68@gmail.com" method="post">
                <label for="Nombre">Nombre</label>
                <input type="text" name="name">

                <label for="email">Correo Electrónico</label>
                <input type="email" name="email">

                <label for="comments">Comentarios</label>
                <textarea name="comments" cols="15" rows="5"></textarea>


                <button type="submit" value="Enviar">Enviar</button>

                <input type="hidden" name="_next"
                    value="{BASE_URL}Contactos">
                <input type="hidden" name="_captcha" value="false">
            </form>
        </article>


        <article class="contenedor_redes">
            <h4 class="contactarnos">Si lo prefieres puedes contactarnos directamente!!!</h4>
            <section class="redes_sociales">
                <img class="red_social" id="gmail" src="{BASE_URL}images/60543.png" alt="logo de gmail">
                <a href="mailto:gsarguello68@gmail.com@gmail.com">Enviar correo electrónico</a>
            </section>
            <section class="redes_sociales">
                <img class="red_social" src="{BASE_URL}images/20673.png" alt="logo de facebook">
                <a class="reed" href="https://www.facebook.com/huerta.organica.792/">Huerta Organica</a>
            </section>
            <section class="redes_sociales">
                <img class="red_social" src="{BASE_URL}images/619.png" alt="logo de maps">
                <a>72 nº 3766</a>
            </section>
        </article>
    </article>

    <h3>Puedes visitarnos para que te ayudemos a armar tu huerta!!!</h3>
    <section class="ubicacion">
        <div id="map"></div>
    </section>
</article>
{include file="footer.tpl"}