function formValidation()  
{  


var uuserid=document.login.userid;
var password = document.login.pwd;

	
	if(alphanumeric(uuserid))
		{
		if(password_validation(password,7,12))  
		{
			
			
		return true;
	
}
	
	}



return false;
}

function alphanumeric(uuserid)  
{   
var letters = /^[0-9a-zA-Z]+$/;  
if(uuserid.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('User address must have alphanumeric characters only');  
uuserid.focus();  
return false;  
}  
}


 

function password_validation(password,mx,my)  
{  
var password_len = password.value.length;  
if (password_len == 0 ||password_len >= my || password_len < mx)  
{  
alert("Password should not be empty / length be between "+mx+" to "+my);  
password.focus();  
return false;  
}
else
	{
return true;  
}  
}
