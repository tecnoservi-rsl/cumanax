    </div>
</div>
<div class="pietop">
www.CumanaX.com.ve

</div>
 <section class="piebody">
        <div class="container">
        <div class="col-xs-12 col-md-4"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> <?php echo APP_SLOGAN ?></div>
        <div class="col-xs-12 col-md-4">Copyright <span class="glyphicon glyphicon-copyright-mark" aria-hidden="true"></span> 2016-2017 </div>
        <div class="col-xs-12 col-md-4"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> web desarrollada por grupo <?php echo APP_NAME ?></div>
        <div class="col-xs-12"> <br>El sitio contiene material sexualmente explícito. Ingrese SÓLO si tiene por lo menos 18 años de edad y acepta ser responsable de los actos a ejecutar mediante este sitio web.
 </div>
        </div>
    </section>

    <div class="piebottom">

        www.CumanaX.com.ve

    </div>


 <!-- Publicos -->
<script src="<?php echo BASE_URL; ?>public/js/jquery.js" type="text/javascript"></script>
<script src="<?php echo BASE_URL; ?>public/js/alertify.min.js" type="text/javascript"></script>
<script src="<?php echo BASE_URL; ?>public/js/config.js" type="text/javascript"></script>
<script src="<?php echo BASE_URL; ?>public/js/jquery.validationEngine.js" type="text/javascript"></script>
<script src="<?php echo BASE_URL; ?>public/js/jquery.validationEngine-es.js" type="text/javascript"></script>
<script src="<?php echo BASE_URL; ?>public/js/jquery-ui.js" type="text/javascript"></script>
<!-- modal plugin-->
<script src="<?php echo BASE_URL; ?>public/js/modalEffects.js" type="text/javascript"></script>
<script src="<?php echo BASE_URL; ?>public/js/classie.js" type="text/javascript"></script>
<script src="<?php echo BASE_URL; ?>public/js/modernizr.custom.js" type="text/javascript"></script>
<script src="<?php echo BASE_URL; ?>public/js/cssParser.js" type="text/javascript"></script>
<!--
<script src="<?php echo BASE_URL; ?>public/js/css-filters-polyfill.js" type="text/javascript"></script>
-->

<!-- Bootstrap Core JavaScript -->
 <script src="<?php echo BASE_URL; ?>public/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Plugin JavaScript -->
<!-- Custom Theme JavaScript -->
<!--  Js del layout  -->
 <script src="<?php echo $_layoutParams['ruta_js'];?>header.js" type="text/javascript"></script>
<!--  Js de la vista  -->
<?php if(isset($_layoutParams['js']) && count($_layoutParams['js'])): ?>
    <?php for($i=0; $i < count($_layoutParams['js']); $i++): ?>
        <script src="<?php echo $_layoutParams['js'][$i] ?>" type="text/javascript"></script>
    <?php endfor; ?>
<?php endif; ?>

</body>

</html>