<!-- <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <script type="text/javascript" src="assets2/js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="assets2/js/bootstrap.js"></script>
  <script type="text/javascript" src="assets2/js/custom.js"></script>

 -->
 
 
 
 
<!--===============================================================================================-->	
	<script src="ashion/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/bootstrap/js/popper.js"></script>
	<script src="ashion/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="ashion/vendor/daterangepicker/moment.min.js"></script>
	<script src="ashion/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/slick/slick.min.js"></script>
	<script src="ashion/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="ashion/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="ashion/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			//var productId =  $(this).parent().parent().find('.myProduct').attr("")
			$(this).on('click', function(){
				swal(nameProduct, "is Added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
			//	$(this).off('click');
			
				 $.ajax({
				        url: $(this).attr('href'),
				        success: function(response) {
				        	setTimeout(function(){
				        		window.location.reload();
				        	},3000);
				        }
				    });
					   
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

		
			
			$(this).on('click', function(){
 				swal(nameProduct, "is added to Wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				//$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="ashion/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="ashion/js/main.js"></script>
 