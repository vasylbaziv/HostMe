function sendRequest(element){
	var successRequest=$("<span/>",{
			html:"Sent",
			"class":"label label-primary"
	});
	var successRequest=$("<span/>",{
		html:"Cannot be sent",
		"class":"label label-danger"
});
	
	
	
	$.ajax({
		url : 'response',
		data : {
			email : emailValue,
		},

		success : function(response) {
			if(response){
				element.replaceWith(successRequest);
			}else{
				element.replaceWith(successRequest);
				
			}

		}
	});
}
