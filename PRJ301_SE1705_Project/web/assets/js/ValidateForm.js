/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */


var counter = 0;
var phoneRegex = /^[0-9]{10}/;
var emailregex = /^[A-Za-z]{1}[A-Za-z0-9_]*@[A-Za-z]+.[A-Za-z]+/;

//Hàm kiểm tra tính hợp lệ của form
function formSubmit() {
    var username = $("#username");
    var email = $("#email");
    var password = $("#password");
    var rePassword = $("#rePassword");
    var usernameMsg = $("#validUsername");
    var emailMsg = $("#validEmail");
    var passwordMsg = $("#validPassword");
    var rePasswordMsg = $("#validRePassword");
	

    checkRegex(email, emailMsg);
    checkFieldLength(username, usernameMsg, 3, 30);
    checkFieldLength(email, emailMsg, 5, 50);
    checkFieldLength(password, passwordMsg, 8, 30);
    checkFieldLength(rePassword, rePasswordMsg, 8, 30);
    checkMatchPassword(password, rePassword);
    
    $('#userWarning').css({"display":"none"});
    $('#emailWarning').css({"display":"none"});

    if (counter > 0) {
        counter = 0;
        return false;
    }
}

function checkMatchPassword(password, rePassword) {
    if (password.val() != rePassword.val()) {
        password.addClass('is-invalid');
        password.removeClass('is-valid');
        rePassword.addClass('is-invalid');
        rePassword.removeClass('is-valid');

        $("#validPassword").html('Mật khẩu không trùng khớp')
        counter++;
    }
}

function checkFieldLength(field, validmsg, min, max) {
    if (min <= field.val().length && field.val().length <= max) {
        field.removeClass('is-invalid');
        field.addClass('is-valid');
    } else {
        field.addClass('is-invalid');
        field.removeClass('is-valid');
        validmsg.html('Độ dài của dữ liệu phải từ ' + min + ' đến ' + max);
        validmsg.addClass('invalid-feedback');
        counter++;
    }
}

function checkRegex(email, emailMsg) {
    if (!emailregex.test(email.val())) {
        email.addClass('is-invalid');
        email.removeClass('is-valid');
        emailMsg.html('Không khớp định dạng email ');
        emailMsg.addClass('invalid-feedback');
        counter++;
    }
}

function clearMsg(){
	$('.warning').style.display = 'none';
}
