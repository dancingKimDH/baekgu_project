
function selectAnimal(data) {

    const animalList = data;

    console.log(data);

    let outHtml = ``;
    for (let animal of animalList) {

        outHtml = `${outHtml}<tr><td>${animal.NAME}</td><td>${animal.SPECIES_NAME}</td><td>${animal.AGE}</td></tr>`;
        console.log(`Successfully returned ${animal.NAME}`)
    }
    outHtml += ``;

    console.log(outHtml);

    let selectanimal = document.querySelector("#animalTable");
    selectanimal.innerHTML = outHtml;
}


function getSelectAllFromREST() {
    let url = '/memberId/M-01';

    let request = fetch(url)
        .then(response => {
            return response.json();
        })
        .then(data => {
            console.log(data);
            selectAnimal(data);
        })
        .catch((data) => {
            console.log(data)
        });
}

function searchMember(event) {
    event.preventDefault();
    const inputElement = document.getElementById('find_membername');
    const nameValue = inputElement.value.trim();
}