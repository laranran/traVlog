(function(){
	
	var current = 0;
	var max = 0;
	var container;
	var xml;
	var interval;
	var xml;
	var amimateTarget = null;
	var iWidth;
	var iHeight;
	
	function init() {
		container = jQuery(".slide ul");
		max = container.children().length;
		
		events();
		
		interval = setInterval(next, 3000);
		
		config_load();
	}
	function config_load() {
		var obj = {};
		obj.dataType = "text";
		obj.type = "get";
		obj.success = loadComplete;
		obj.fail = loadFail;
		jQuery.ajax(obj);
	}
	function loadComplete($arg1, $arg2) {
		if($arg2 == "success") {
			var data = jQuery.parseXML($arg1);
			xml = jQuery(data);
			
			setting();
		}
	}
	function loadFail($arg1, $arg2, $arg3) {
		console.log([$arg1, $arg2, $arg3]);
	}
	function setting() {
		var li = "";
		xml.find("images").find("item").each(function(i) {
			var self = jQuery(this);
			li += '<li><img src="'+self.find("src").text()+'" alt="" /></li>';
		})
		
		iWidth = xml.find("config").find("width").text();
		iHeight = xml.find("config").find("height").text();
		
		jQuery(".slide").css("width", iWidth+"px");
		jQuery(".slide").css("height", iHeight+"px");
		
		container.append(li);
		max = container.children().length;
		container.css("margin-left", "-1538px");
		container.prepend(container.children()[max-1]);
		
		events();
		
		interval = setInterval(next, 3000);
	}
	
	function events() {
		jQuery("button.prev").on("click", prev);
		jQuery("button.next").on("click", next);
		
		jQuery(window).on("keydown", keydown);
	}
	
	function prev(e) {
		current--;
		if( current < 0 ) current = max-1;
		animate("prev");
	}
	function next(e) {
		current++;
		if( current > max-1 ) current = 0;
		animate("next");
		
	}	
	function animate($direction) {
		/*var moveX = current * 600;
		TweenMax.to(container, 0.8, {marginLeft:-moveX, ease:Expo.easeOut});
		
		//timer
		clearInterval(interval);
		interval = setInterval(next, 3000); */
		
		if(amimateTarget != null) {
			TweenMax.killTweensOf(amimateTarget);
			amimateTarget.css("margin-left", "0");
		}
		if($direction == "next") {
			jQuery(container.children()[1]).css("margin-left", iWidth+"px");
			container.append(container.children()[0]);
			
		} else if ($direction == "prev" ){
			container.prepend(container.children()[max-1]);
			jQuery(container.children()[0]).css("margin-left", (-iWidth)+"px");
		} 
		amimateTarget = jQuery(container.children()[0]);
		TweenMax.to(amimateTarget, 0.8, {marginLeft:0, ease:Expo.easeOut});
		
	}
	function keydown(e) {
		
		if(e.which == 39 /*right*/) {
			next();
		} else if(e.which == 37 /*left*/) {
			prev();
		}
	}
	
	jQuery(document).ready(init);

})();