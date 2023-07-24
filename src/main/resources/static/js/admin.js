
function selectAnimal(data) {
    console.log(data);
    let outHtml = ``;
    for (let animal of data) {

        outHtml += `<tr><td>${data.NAME}</td><td>${data.SPECIES_NAME}</td><td>${data.AGE}</td><td>`;
    }

    console.log(outHtml);

    let animalTable = document.querySelector('#animalTable');
    animalTable.innerHTML = outHtml;

    console.log(animalTable);
}

let keydownObject = document.querySelector("#keydown");
animalTableBody();

function getSelectAllFromREST() {
    let url = 'http://localhost:8080/memberId/${memberId}';

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