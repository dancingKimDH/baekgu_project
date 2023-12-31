let member_id;
let pet_name;
let pet_age;
let pet_type;
let pet_gen
const submit_btn = document.getElementById("animal_btn");

submit_btn.addEventListener("click", (result) => {

  pet_name = document.getElementsByName("animal_name")[0].value;
  pet_birthdate = document.getElementsByName("birthdate")[0].value;
  pet_type = document.getElementById("animal_type").value;
  member_id = document.getElementById("userId").value;
  pet_gen = document.getElementById("animal_gen").value;

  new_animal(member_id, pet_type, pet_gen, pet_name, pet_birthdate);
  swal("추가 완료!", "정보를 업데이트하였습니다", "success");

})

function new_animal() {

  let url = '/addAnimal';
  let option = {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      "MEMBER_ID": member_id, 
      "SPECIES_ID": pet_type, 
      "PETGEN_ID": pet_gen, 
      "PETNAME": pet_name, 
      "BIRTHDATE": pet_birthdate, 
      "PETAGE": " ",
    })
  };
  let request = fetch(url, option)
    .then((result) => {
      return result.json();
    })
    .then((data) => {
      console.log(data);
    })
    .catch((errorMeg) => {
      console.log(errorMeg);
    });

}
