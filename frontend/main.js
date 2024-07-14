const url_animes = "http://localhost:8080/animes/animes/anime";

function validateForm(form) {
    var inputs = form.querySelectorAll("input, textarea");
    for (let i = 0; i < inputs.length; i++) {
        if (!inputs[i].value) {
            return false;
        }
    }
    return true;
}

window.postAnime = function (e) {
    e.preventDefault();

    var form = document.querySelector("#animeForm");

    if (!validateForm(form)) {
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Campos incompletos en el formulario"
        });
        return;
    }

    var elements = form.elements;
    var btn = document.querySelector("#btnSubmit");
    btn.setAttribute("disabled", true);

    var obj = {};
    for (let i = 0; i < elements.length; i++) {
        var element = elements[i];
        if (element.name) {
            obj[element.name] = element.value;
        }
    }

    fetch(url_animes, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(obj),
    })
    .then(response => {
        if (response.ok) {
            Swal.fire({
                icon: "success",
                title: "OK!",
                text: "El elemento fue insertado exitosamente"
            });
            btn.removeAttribute('disabled');
            form.reset();
            loadAnimes();  // Recargar la lista de animes
        } else {
            throw new Error("Fallo al insertar el elemnto");
        }
    })
    .catch(error => {
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Hubo problemas al tratar de insertar el elemento"
        });
        btn.removeAttribute('disabled');
    });

    return false;
}

window.deleteAnime = function (id) {
    fetch(`${url_animes}?id=${id}`, {
        method: "DELETE",
        headers: {
            "Content-Type": "application/json",
        },
    })
    .then(response => {
        if (response.ok) {
            Swal.fire({
                title: "Borrado exitosamente!",
                icon: "success",
                allowOutsideClick: false
            }).then(() => {
                loadAnimes();
            });
        } else {
            throw new Error('Failed to delete anime');
        }
    })
    .catch(error => {
        console.error('Error deleting anime:', error);  // Añadir más información sobre el error
        Swal.fire("Error!", "", "error");
    });
};

document.addEventListener("DOMContentLoaded", (event) => {
    loadAnimes();
});


function loadAnimes() {
    fetch(url_animes)
        .then(response => response.json())
        .then(animes => {
            var animeList = document.querySelector("#animeList");
            animeList.innerHTML = ""; // Limpiar la lista actual
            animes.forEach(anime => {
                var card = document.createElement("div");
                card.className = "card";
                card.innerHTML = `
                    <img src="${anime.imagen}" alt="${anime.titulo}">
                    <h3>${anime.titulo}</h3>
                    <p>Género: ${anime.genero}</p>
                    <p>Duración: ${anime.duracion}</p>
                    <button onclick='deleteAnime(${anime.id})'>Eliminar</button>
                `;
                animeList.appendChild(card);
            });
        })
        .catch(error => {
            console.error("Error loading animes:", error);
            Swal.fire({
                icon: "error",
                title: "Error",
                text: "Hubo un problema al cargar la lista de animes."
            });
        });
}