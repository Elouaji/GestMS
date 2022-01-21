$(document).ready(function () {
    $.ajax({
        url : "SalleController",
        data:{op:"load"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
			console.log(data);
            remplir(data);
        }
    });

    function remplir(data) {
        var ligne = "";
        for (var i = 0; i < data.length; i++) {
            ligne += "<tr><td>"+data[i].id+"</td><td>"+data[i].code+"</td><td>"+data[i].type+"</td><td><button class='btn btn-warning mr-5'>Modifier</button><button class='btn btn-danger'>Supprimer</button></td></tr>";
        }
        $("#salles").html(ligne);
    }
});


