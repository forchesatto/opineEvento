// Version 1.2
// 02-apr-2012
// By Ana Paula Locatelli (anapaula@2op.com.br)

jQuery.fn.stylecombo = function() {
	
	return this.each(function() {
		var idSelect = $(this).attr("id"); 
		var classWrapper = "sc_"+idSelect;
		var selectTitle = "";
		
		if($(this).attr("name")){
			var nameSelect = $(this).attr("name");
		}else{
			var nameSelect = idSelect+'_val';
		}
		
		if($('#'+idSelect).attr("value")){
			selectTitle = $('#'+idSelect).attr("value");
		}
				
		if($('#'+idSelect).attr("title")){
			selectTitle = $('#'+idSelect).attr("title"); 
		}	
				
		$(this).wrap("<div class="+classWrapper+"/>");
		var wrapper = $("."+classWrapper);
		
		$(this).children().each(function(index) {
			if(index==0) {
				wrapper.append("<input type='hidden' id='"+idSelect+"_val' name='"+nameSelect+"' title='"+selectTitle+"' readonly='readonly'/>");
				wrapper.append("<div class='sc_div' id='"+idSelect+"'>"+selectTitle+"</div>");
				wrapper.append("<div style='clear:both;'></div>");
				wrapper.append("<ul class='sc_option'></ul>");
			}
			
			if($(this).attr("href")) {
				wrapper.children("ul").append("<li title='"+$(this).val()+"'><a href="+$(this).attr("href")+" target='"+$(this).attr("target")+"'>"+$(this).text()+"</a></li>");
			
			} else if($(this).attr("onclick")) {
				wrapper.children("ul").append("<li title='"+$(this).val()+"' onclick="+$(this).attr("onclick")+">"+$(this).text()+"</li>");
			
			}else {
				wrapper.children("ul").append("<li title='"+$(this).val()+"'>"+$(this).text()+"</li>");
			}
		});
		
		var selecionado = $("#"+idSelect+" option[selected]");
		if(selecionado.text() != ""){
			$("."+classWrapper+" #"+idSelect).text(selecionado.text());
			$("."+classWrapper+" #"+idSelect+"_val").val(selecionado.val());
		}
					
		$("."+classWrapper+" li").click(function() {
			$("."+classWrapper+" #"+idSelect).text($(this).text());
			$("."+classWrapper+" #"+idSelect+"_val").attr("value",$(this).attr('title')).change();
			$("."+classWrapper+" .sc_option").slideToggle("fast");
			
			var exp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/; 
			var title = $(this).attr('title');
		   	if((title.match(exp))) {
	  			window.location=this.title;
		   	}
		});
	
		$("."+classWrapper+" .sc_button, ."+classWrapper+" #"+idSelect).click(function() {
			$("."+classWrapper+" .sc_option").slideToggle("fast");	
		});

		$(this).detach();
	});
	
};
