const header =
        "<nav class='navbar navbar-expand-lg navbar-dark bg-primary'>" +
        "<div class='container-fluid'>" +
        "<a href='https://peoplecerteducation.org/bootcamp/' target='_blank'><img class='logo'" +
        "src='/images/peoplecert.png' /></a>" +
        "<button class='navbar-toggler' type='button' data-bs-toggle='collapse' data-bs-target='#navbarColor01'" +
        "aria-controls='navbarColor01' aria-expanded='false' aria-label='Toggle navigation'>" +
        "<span class='navbar-toggler-icon'></span>" +
        "</button>" +
        "<div class='collapse navbar-collapse' id='navbarColor01'>" +
        "<ul class='navbar-nav me-auto'>" +
        "<li class='nav-item active'>" +
        "<a class='nav-link navItemTextSize' href='/'>Αρχική</a>" +
        "</li>" +
        "<li class='nav-item active'>" +
        "<a class='nav-link navItemTextSize' href='/trainers/'>Εκπαιδευτές</a>" +
        "</li>" +
        "<li class='nav-item active'>" +
        "<a class='nav-link navItemTextSize' href='/trainers/addTrainerForm'>Προσθήκη Εκπαιδευτή</a>" +
        "</li>" +
        "</ul>" +
        "</div>" +
        "</nav>";

const footer =
        "<footer id='footer' class='bg-primary center'>" +
        "<span> PrivateSchool Forms </span>" +
        "</footer>";

//setarisma header
$("#divHeader").html(header);
//setarisma footer
$("#divFooter").html(footer);

function hideWrongData() {
    $("#id").val("");
    $("#form div").children().removeClass("is-invalid");
}

//pairnei san eisodo ta ids ths kathe formas kai epistrefei tis times ths
//epishs energopoiei thn antistoixei klash gia to minima
function getFormData(elementsIds) {
    let isValid = true;
    let values = new Array();
    for (i = 0; i < elementsIds.length; i++) {
        values.push(
                $("#" + elementsIds[i])
                .val()
                .trim()
                .replace(/\s+/g, " ")
                );
        $("#" + elementsIds[i]).val(values[i]);
        if (values[i] == "") {
            $("#" + elementsIds[i]).addClass("is-invalid");
            isValid = false;
        } else {
            $("#" + elementsIds[i]).removeClass("is-invalid");
        }
    }
    return [isValid];
}

function validateTrainerForm() {
    let elementsIds = ["fname", "lname", "subject"];
    let [isValid] = getFormData(elementsIds);
    return isValid;
}

function deleteTrainer(id) {
    $.ajax({
        url: "/trainers/deleteTrainer/" + id,
        success: function () {
            location.reload();
        }
    });
}