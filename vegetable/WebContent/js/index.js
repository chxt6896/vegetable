/**
 * 
 */
var count = 0;
	var pic = Array("ca", "cca", "ccca", "cccca");
	$(document).ready(function() {
		$("#leftbt").click(function() {
			var rc = count;
			count--;
			if (count < 0)
			{
				count = 3;
			}
			$("#" + pic[rc]).fadeOut();
			var t = setTimeout("$('#'+pic[count]).fadeIn()", 800);
		});
		$("#rightbt").click(function() {
			lc = count;
			count++;
			if (count >= 4)
			{
				count = 0;
			}
			$("#" + pic[lc]).fadeOut();
			var tt = setTimeout("$('#'+pic[count]).fadeIn()", 800);
		});
	});