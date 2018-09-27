
	$(function(){
		$(".reset").click(function(){
			// alert(typeof $(".jisuan input:text")[0].value)
			 for(var i=0;i<$(".jisuan input:text").length;i++){
			 	$(".jisuan input:text")[i].value='';
			}
            $(".payPlan table td").remove();
            $(".income").text("0元");
            $(".interest").text("0元");
		});
	});