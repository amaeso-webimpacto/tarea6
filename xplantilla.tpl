{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file=$layout}

{block name='head_seo' prepend}
  <link rel="canonical" href="{$product.canonical_url}">
{/block}

{block name='content' }

  <section id="main">
    <div class="row" style="background-color: #fff;">
      <div class="col-lg-6">
        {block name='page_content_container'}
          <section class="page-content--product" id="content">
            {block name='page_content'}
              {block name='product_flags'}
                  {include file='catalog/_partials/product-flags.tpl'}
              {/block}

              {block name='product_cover_thumbnails'}
                {include file='catalog/_partials/product-cover-thumbnails.tpl'}
              {/block}


            {/block}
          </section>
        {/block}
        </div>

        <div class="col-lg-6">
          {block name='page_header_container'}
            {block name='page_header'}
              <h1 class="h1">{block name='page_title'}{$product.name}{/block}</h1>
            {/block}
          {/block}
          {*bloque precios CAMBIAR EN PLANTILLA PRODUCT-PRICES.tpl*}
          {block name='product_prices'}
            {include file='catalog/_partials/product-prices.tpl'}
          {/block}

          {*caja infor producto*}
          <div class="product-information">
          

            {*bloque marca*}
             {block name='manufacturer'}
              <div id="product-manufacturer{$product.id}" ><b>Marca: </b>  <span style="color: #727171;"> {$product.reference} </span> </div>
            {/block}

            {*bloque envio*}
            {block name='shipping'}
              <div id="shipping{$product.id}"> <b>Envío: </b> <span style="color: #727171;"> Desde  {$product.additional_shipping_cost} € </span> </div>
            {/block}

            
    
    <!--SELECCIÓN CANTIDAD-->

            <div class="product-actions">
              {block name='product_buy'}
                <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
                  <input type="hidden" name="token" value="{$static_token}">
                  <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                  <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id">

                  {block name='product_add_to_cart'}
                    {include file='catalog/_partials/product-add-to-cart.tpl'}
                  {/block}

   <!--INFO EXTRA DEBAJO DE CANTIDAD-->

             {block name='prom'}
                    <div>
                      <div id="prom0"> <b>Promoción:</b> 
                       <span style="float: right; width: 75%; color: #ff6000; background-color: #ffeac9; border-style: dashed; border-color: #ff6000; border-width: thin; cursor: pointer;"> &nbsp;Ofertas especiales de la semana &nbsp; </span>
                     </div>
                    </div>
            <br/>
              <div>
                <div id="product-availability{$product.id}"> <b>Disponibilidad: </b> 
                 <span style="float: right; width: 75%; color: #458057; background-color: #d6eed1; border-style: dashed; border-color: #458057; border-width: thin; cursor: pointer;"> &nbsp; En stock {$product.quantity} artículos </span> </div>
              </div>
            </div>
            {/block}

    <!--fin extra-->

  
                            <!--BOTON COMPARTIR EN RRSS-->
      <div class="social-sharing social-sharing--product">
        <a href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Flocalhost%2Fpresta_1_7%2Findex.php%3Fid_product%3D2%26rewrite%3Dbrown-bear-printed-sweater%26controller%3Dproduct%26id_lang%3D1" class="text-hide social-share-btn social-share-btn--product facebook" title="Compartir" target="_blank" rel="nofollow noopener">Compartir</a>
        <a href="https://twitter.com/intent/tweet?text=Hummingbird+printed+sweater http%3A%2F%2Flocalhost%2Fpresta_1_7%2Findex.php%3Fid_product%3D2%26rewrite%3Dbrown-bear-printed-sweater%26controller%3Dproduct%26id_lang%3D1" class="text-hide social-share-btn social-share-btn--product twitter" title="Tuitear" target="_blank" rel="nofollow noopener">Tuitear</a>
        <a href="https://www.pinterest.com/pin/create/button/?media=http%3A%2F%2Flocalhost%2Fpresta_1_7%2Fimg%2Fp%2F2%2F1%2F21.jpg&amp;url=http%3A%2F%2Flocalhost%2Fpresta_1_7%2Findex.php%3Fid_product%3D2%26rewrite%3Dbrown-bear-printed-sweater%26controller%3Dproduct%26id_lang%3D1" class="text-hide social-share-btn social-share-btn--product pinterest" title="Pinterest" target="_blank" rel="nofollow noopener">Pinterest</a>
 
              

    <!-- Botón Carrito-->
        <div class="add col-auto">
          <button
          style="background-color: #ff6000; border-color: #ff6000;"
            class="btn btn-primary add-to-cart btn-lg btn-block btn-add-to-cart js-add-to-cart"
            data-button-action="add-to-cart"
            type="submit"
            {if !$product.add_to_cart_url}
              disabled
            {/if}
          >
            <i class="material-icons shopping-cart btn-add-to-cart__icon">&#xE547;</i><span class="btn-add-to-cart__spinner" role="status" aria-hidden="true"></span>
            {l s='Add to cart' d='Shop.Theme.Actions'}
          </button>
        </div>

        {/block}

      
<br/>
            {*BLOQUE POLITICAS DE ENVIO*}
           <!--
            {block name='hook_display_reassurance'}
              {hook h='displayReassurance'}
            {/block}
           -->
          


          </div>
      </div>
    </div>

    {*nueva sección*}
   
      <div class="col-lg-9">
      {*BLOQUE CARACTERÍSTICAS PRODUCTO*}
          {block name='product_tabs'}
              {include file='catalog/_partials/product-tabs.tpl'}
          {/block}

      </div>

      
<div class="col-lg-3">
<!--NEWSLETTER-->
<div class="container" style="padding: 2,5%;">
  <div class="row">
    
      <div class="block_newsletter col-lg-12 col-12"></div>
  <div class="row">
    <!--el siguiente col-lg es el que se pone a 12 (por defecto esta a 5 -->
    <p id="block-newsletter-label" class="col-lg-12 col-12">Infórmese de nuestras últimas noticias y ofertas especiales</p>
    <div class="col-lg-12 col-12">
      <form action="http://localhost/presta_1_7/index.php#footer" method="post" class="needs-validation">
        <input type="hidden" name="action" value="0">
        <div class="input-group">
          <input
                  name="email"
                  class="form-control"
                  type="email"
                  value=""
                  placeholder="Su dirección de correo"
                  aria-labelledby="block-newsletter-label"
                  autocomplete="email"
          >
          <div class="input-group-append">
            <button class="btn btn-primary" type="submit" name="submitNewsletter" style="background-color: #ff6000; border-color: #ff6000;"><span class="d-none d-sm-inline">Suscribirse</span><span class="d-inline d-sm-none">OK</span></button>
          </div>
        </div>

        <div class="clearfix">
                                      <p class="small mt-2">Puede darse de baja en cualquier momento. Para ello, consulte nuestra información de contacto en el aviso legal.</p>
                                        
                    </div>
      </form>
    </div>
  </div>
</div>

  <div class="social-sharing col-lg-4 col-sm-12">
        </div>


      </div>
  </div>
  <!--FIN NEWSLETTER-->
    </div>
  </section>
  {*fin nueva sección*}

    {block name='product_accessories'}
      {if $accessories}
        <section class="product-accessories mt-3">
          <p class="products-section-title">{l s='You might also like' d='Shop.Theme.Catalog'}</p>
          <div class="products">
            {foreach from=$accessories item="product_accessory"}
              {block name='product_miniature'}
                {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory}
              {/block}
            {/foreach}
          </div>
        </section>
      {/if}
    {/block}

    {block name='product_footer'}
      {hook h='displayFooterProduct' product=$product category=$category}
    {/block}

    {block name='product_images_modal'}
      {include file='catalog/_partials/product-images-modal.tpl'}
    {/block}

    {block name='page_footer_container'}
      <footer class="page-footer">{block name='page_footer'}{/block}</footer>
    {/block}
  </section>

{/block}
