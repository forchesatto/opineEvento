$(document).ready(function() {
	
	$("#btn_orcam, #fale").overlay({
       mask: {
        color: '#000',
        loadSpeed: 200,
        opacity: 0.5
      },
   });
   
   $("#nfe_rec, #nfe_em, #state").stylecombo();
   
   $(".tooltip_link").tooltip({ 
   		effect: 'slide',
		opacity: 1,
		offset: [10,0]
	});
   
});
