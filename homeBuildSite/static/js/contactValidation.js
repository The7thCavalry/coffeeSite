function validate(event) {
    var phoneRegExpr = new RegExp("\\+[0-9] \\([0-9]{3}\\) [0-9]{3}-[0-9]{2}-[0-9]{2}");
    var emailRegExpr = new RegExp(".*@.*");

    var name = $('#id_name').val();
    var phone = $('#id_phone').val();
    var email = $('#id_email').val();
    var text = $("textarea").val();
    var phoneIsOk = false;

    if (name === '' && $('#name_validation').length === 0) {
        $('input[type="text"]').css("border", "2px solid red");
        $("#id_name").parent().after("<div id='name_validation' class='name_validation' style='color:red;margin-left:93px;'><center>Please enter your name</center></div>");
    }
    if (name !== '') {
        $('input[type="text"]').css("border", "");
        let element = document.getElementById("name_validation");
        if (element != null) {
            element.parentNode.removeChild(element);
        }
    }
    if ((!phone.match(new RegExp(phoneRegExpr)) || phone === '') && $('#phone_validation').length === 0) {
        $('input[type="tel"]').css("border", "2px solid red");
        $("#id_phone").parent().after("<div id='phone_validation' class='phone_validation' style='color:red;margin-left:70px;'><center>Please enter correct phone number</center></div>");
    }
    if (phone.match(new RegExp(phoneRegExpr))) {
        $('input[type="tel"]').css("border", "");
        //document.getElementById("phone_validation").outerHTML = "";
        let element = document.getElementById("phone_validation");
        if (element != null) {
            element.parentNode.removeChild(element);
        }

        phoneIsOk = true;
    }
    if (!email.match(new RegExp(emailRegExpr)) && $('#email_validation').length === 0) {
        $('input[type="email"]').css("border", "2px solid red");
        $("#id_email").parent().after("<div id='email_validation' class='email_validation' style='color:red;margin-left:93px;'><center>Please enter correct email</center></div>");
    }
    if (email.match(new RegExp(emailRegExpr))) {
        $('input[type="email"]').css("border", "");
        let element = document.getElementById("email_validation");
        if (element != null) {
            element.parentNode.removeChild(element);
        }
    }
    if ((text === '' || text === undefined) && $('#text_validation').length === 0) {
        $("textarea").css("border", "2px solid red");
        $("textarea").parent().after("<div id='text_validation' class='text_validation' style='color:red;margin-left:93px;'><center>Please enter text here</center></div>");
    }
    if (text !== "" && text !== undefined) {
        $("textarea").css("border", "");
        let element = document.getElementById("text_validation");
        if (element != null) {
            element.parentNode.removeChild(element);
        }
    }

    if (!phoneIsOk) {
            /*alert("validation failed false");*/
            event.preventDefault();
            /*window.history.back();*/
            return false;
    }
}