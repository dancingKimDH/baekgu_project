
function selectAnimal(data) {

    console.log("Successfully working");
    const animalList = data;
    console.log(data);


    
    let outHtml = '';
    for (let animal in animalList) {

        outHtml = `${outHtml}<tr><td>${animal.NAME}</td><td>${animal.SPECIES_NAME}</td><td>${animal.AGE}</td></tr>`;
        console.log(`Successfully returned ${animal.NAME}`)
    }
    outHtml += ``;

    console.log(outHtml);

    const tableBody = document.querySelector("#datashow");
    tableBody.innerHTML = outHtml;
}


function getSelectAllFromREST(param) {
    
    // const MEMBER_ID = document.getElementById(data).value;
    
    let url = `/memberId/${param}`;

    let request = fetch(url)
        .then(response => {
            return response.json();
        })
        .then(data => {
            console.log(data);
            selectAnimal(data);
        })
        .catch((data) => {
            console.log(param)
        });
}

function searchMember(event) {
    event.preventDefault();
    const inputElement = document.getElementById('find_membername');
    const nameValue = inputElement.value.trim();
}