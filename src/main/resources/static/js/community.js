function number()
{
  let number = 1;
  number = number.toString();
  document.getElementById('number').innerText = number;
  number = number + 1;
}

window.onload = function()
{
  number();
};