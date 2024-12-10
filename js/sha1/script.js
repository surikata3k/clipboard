let myButton = document.querySelector('button');
let textInput = document.querySelector('textarea');
let parag = document.querySelector('p');


function reverseString(str) {
  return str.split('').reverse().join('');
}

async function digestMessage(message) {
  const msgUint8 = new TextEncoder().encode(message); // encode as (utf-8) Uint8Array
  const hashBuffer = await crypto.subtle.digest("SHA-256", msgUint8); // hash the message
  const hashArray = Array.from(new Uint8Array(hashBuffer)); // convert buffer to byte array
  const hashHex = hashArray
    .map((b) => b.toString(16).padStart(2, "0"))
    .join(""); // convert bytes to hex string

  return hashHex;
}


async function action() {

  if (textInput.value === '') {
    parag.innerHTML = "Texto vacio";
    parag.setAttribute("class", "error");
    return;
  }

  parag.removeAttribute("class");
  //parag.innerHTML = reverseString(textInput.value);
  let hash = await digestMessage(textInput.value);

  parag.innerHTML = hash;
}



textInput.oninput = function () {
  action();
}

myButton.onclick = function () {
  action();
}

