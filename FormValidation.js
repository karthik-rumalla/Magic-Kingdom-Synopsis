function formValidation()  
{  

var ufname = document.registration.uname;
var upassword = document.registration.pass;
var upassword1 = document.registration.rpass;
var ucontact=document.registration.phone;
var uemail = document.registration.email;
var ucity=document.registration.city;
var uquestion=document.registration.sques;
var uanswer=document.registration.answer;
if(fname_validation(ufname))  
{ 
	
	if(alphanumeric(ufname))
		{
		if(password_validation(upassword,7,12))  
		{
			
			if(password_validation1(upassword1,7,12))  
			{

		if(allnumeric(ucontact))  
		{ 			
			if(ValidateEmail(uemail))  
			{ 

				if( countryselect(ucity))
					{
					
					if(QuestionValidation(uquestion))
						{
						
						if(AnswerValidation(uanswer))
							{
		return true;
	
}
	
	}


}
	
}
				
}
			
}
		
}
		
}
	
}	
return false;
}
function fname_validation(ufname)  
{  
	var letters = /^[A-Za-z]+$/;  
	if(!ufname.value.match(letters))  
	{  
	// Focus goes to next field i.e. Last Name.  

		//document.registration.lname.focus();
		alert('First Name Must be Alphabetic Character Only, No Special Character');  
		ufname.focus(); 
	return false;  
	}  
	else  
	{  
	 
	return true;  
	} 
	}
function alphanumeric(uname)  
{   
var letters = /^[0-9a-zA-Z]+$/;  
if(uname.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('User address must have alphanumeric characters only');  
uname.focus();  
return false;  
}  
}
function allnumeric(ucontact)  
{   
	var ucontact_len = ucontact.value.length;  
	var numbers = /^[0-9]+$/;
	if (ucontact_len==10)  
	{  
 if(ucontact.value.match(numbers))  
		{  
		return true;  
		}  
		else  
		{  
		alert('Contact  must have numeric characters only');  
		ucontact.focus();  
		return false;
	}  
	//return true;  
	}
	else
		{
		alert('Contact length must be 10 digit');
		ucontact.focus();
		return false;
		}
		}
  


function countryselect(ucity)  
{  
  
if(ucity.value == "Please Select City")  
{  
alert('Select your city from the list');  
ucity.focus();  
return false;  
}  
else  
{  
// Focus goes to next field i.e. emalid.  
  return true;  
}  
}
function ValidateEmail(uemail)  
{  
var mailformat = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;  
if(uemail.value.match(mailformat))  
{
	  	
return true;  
}  
else  
{  
alert("You have entered an invalid email address!");  
uemail.focus();  
return false;  
}  
} 

function password_validation(upassword,mx,my)  
{  
var password_len = upassword.value.length;  
if (password_len == 0 ||password_len >= my || password_len < mx)  
{  
alert("Password should not be empty / length be between "+mx+" to "+my);  
upassword.focus();  
return false;  
}
else
	{
return true;  
}  
}
function password_validation1(upassword1,mx,my)  
{  
var password_len = upassword1.value.length;  
if (password_len == 0 ||password_len >= my || password_len < mx)  
{  
alert(" New Password should not be empty / length be between "+mx+" to "+my);  
upassword1.focus();  
return false;  
}
else
	{
return true;  
}  
}
function QuestionValidation(uquestion)  
{  
  
if(uquestion.value == "Default")  
{  
alert('Select your Question from the list');  
uquestion.focus();  
return false;  
}  
else  
{  
// Focus goes to next field i.e. emalid.  
  return true;  
}  
}
function AnswerValidation(uanswer)  
{   
var letters = /^[0-9a-zA-Z]+$/;  
if(uanswer.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('Answer must have alphanumeric characters only');  
uanswer.focus();  
return false;  
}  
}