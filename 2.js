const is_username_valid = (username) =>  /^[a-z]{6}$/.test(username);


var cek_username = (is_username_valid('kamusiapa'));
if (cek_username == true){
  console.log('valid');
}
if (cek_username == false){
  console.log('invalid');
}



const is_email_valid = (email) =>  /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/.test(email);

var cek_email = (is_email_valid('kamusiapa@gmail.com')); 

if (cek_email == true){
  console.log('valid');
}
if (cek_email == false){
  console.log('invalid');
}


const is_password_valid = (password) =>  /([A-Z]+)([a-z0-9]){8,12}$/.test(password);


var cek_password = (is_password_valid('Kamusiapa2169'));  

if (cek_password == true){
  console.log('valid');
}
if (cek_password == false){
  console.log('invalid');
}

