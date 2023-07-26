
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

    const tableBody = document.querySelector("#datashow");
    tableBody.innerHTML = outHtml;
}


function getSelectAllFromREST() {
    let url = `/memberId/${memberId}`;

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