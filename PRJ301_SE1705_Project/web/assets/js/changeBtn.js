/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

var author_select = document.getElementById("author_select");
var author_input = document.getElementById("author_input");
var btn_add_auth = document.getElementById("btn_add_auth");
btn_add_auth.addEventListener("click", function (e) {
    if (btn_add_auth.innerText == "Add") {
        author_select.style.display = "none";
        author_input.type = "text";
        btn_add_auth.innerText = "Choose";
        author_select.value = "0";
    } else {
        author_select.style.display = "inline-block";
        author_input.type = "hidden";
        btn_add_auth.innerText = "Add";
    }
});
var publisher_select = document.getElementById("publisher_select");
var publisher_input = document.getElementById("publisher_input");
var btn_add_pub = document.getElementById("btn_add_pub");

btn_add_pub.addEventListener("click", function (e) {
    if (btn_add_pub.innerText == "Add") {
        publisher_select.style.display = "none";
        publisher_input.type = "text";
        btn_add_pub.innerText = "Choose";
        publisher_select.value = "0";
    } else {
        publisher_select.style.display = "inline-block";
        publisher_input.type = "hidden";
        btn_add_pub.innerText = "Add";
    }

});
var category_select = document.getElementById("category_select");
var category_input = document.getElementById("category_input");
var btn_add_cat = document.getElementById("btn_add_cat");
btn_add_cat.addEventListener("click", function (e) {
    if (btn_add_cat.innerText == "Add") {
        category_select.style.display = "none";
        category_input.type = "text";
        btn_add_cat.innerText = "Choose";
        category_select.value = "0";
    } else {
        category_select.style.display = "inline-block";
        category_input.type = "hidden";
        btn_add_cat.innerText = "Add";
    }
});
