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

function maskingName(name)
{
  if (name.length <= 2)
  {
    return name.replace(name.substring(0, 1), "*");
  }

  return
  (
    name.substring(0, 3) +
    "*".repeat(name.length - 3)
  );
}