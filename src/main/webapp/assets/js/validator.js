/**
 * 
 */

function validateLoginForm() {
	console.log("Enter here");
	if (document.loginForm.userName.value == ""
			|| document.loginForm.email.value.trim() == "") {
		alert("email cannot be empty");
		return false;
	} else if (document.loginForm.password.value == "") {
		alert("Password cannot be empty");
		return false;
	}
	return true;
}
function validateForm() {
	console.log("enter here");
	if (document.registration.firstName.value == ""
			|| document.registration.userName.value.trim() == "") {
		alert("First name cannot be empty.");
		return false;
	} else if (document.registration.email.value == ""
			|| document.registration.email.value.trim() == "") {
		alert("Email cannot be empty.");
		return false;
	}
	return true;
}
