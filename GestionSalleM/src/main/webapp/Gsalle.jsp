<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Soukaina Admin</title>
<script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css" />
<link rel="stylesheet" href="assets/vendors/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css" />
<link rel="stylesheet" href="assets/css/style.css" />
<link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body>
	<div class="container-scroller">
		<%@include file="template/menu.jsp"%>
		<div class="container-fluid page-body-wrapper">
			<%@include file="template/header.jsp"%>
			<div class="main-panel">
				<div id="content" class="content-wrapper pb-0">
					<!-- Content start -->
					<div class="row">
						<div class="col-4 grid-margin stretch-card mt-0">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title text-center">Ajouter une salle</h4>
									<div class="row">
										<div class="form-group col-10 mx-auto">
											<label>Code</label> 
											<input id="code" name="code" type="text" class="form-control p_input">
										</div>
										<div class="form-group col-10 mx-auto">
											<label>Type</label> 
											<input id="type" name="type" type="text" class="form-control p_input">
										</div>
										<div class="text-center col-6 m-auto">
											<button type="button" class="btn btn-success btn-block enter-btn" onclick="ajouterSalle()">Ajouter</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-8 grid-margin stretch-card mt-0">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Liste des salles</h4>
									<div class="table-responsive text-center">
										<table class="table">
											<thead>
												<tr>
													<th class="text-black">ID</th>
													<th class="text-black">Code</th>
													<th class="text-black">Type</th>
													<th class="text-black">Actions</th>
												</tr>
											</thead>
											<tbody id="salles" name="salles">

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Content end -->
				</div>
				<%@include file="template/footer.jsp"%>
			</div>
		</div>
	</div>
	
	<!-- Modal -->
<div class="modal fade" id="supprimersalle" tabindex="-1" aria-labelledby="supprimersalleLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="supprimersalleLabel">Suppression</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       Voulez-vous bien supprimer cette salle ?
      </div>
      <div class="modal-footer m-auto">
        <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">Non</button>
        <button type="button" class="btn btn-success" onclick="supprimerSalle()">Oui</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="modifiersalle" tabindex="-1" aria-labelledby="modifiersalleLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modifiersalleLabel">Modification</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
								<div class="card-body">
									<h4 class="card-title text-center">Modifier la salle</h4>
									<form>
										<div class="form-group">
											<label>Code</label> 
											<input id="mcode" name="mcode" type="text" class="form-control p_input">
										</div>
										<div class="form-group">
											<label>Type</label> 
											<input id="mtype" type="text" name="mtype" class="form-control p_input">
										</div>
									</form>
								</div>
							</div>
      <div class="modal-footer m-auto">
        <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">Annuler</button>
        <button type="submit" class="btn btn-success" onclick="modifierSalle()">Modifier</button>
      </div>
    </div>
  </div>
</div><!-- Modal -->
<div class="modal fade" id="supprimersalle" tabindex="-1" aria-labelledby="supprimersalleLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="supprimersalleLabel">Suppression</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       Voulez-vous bien supprimer cette salle ?
      </div>
      <div class="modal-footer m-auto">
        <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">Non</button>
        <button type="button" class="btn btn-success" onclick="supprimerSalle()">Oui</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="modifiersalle" tabindex="-1" aria-labelledby="modifiersalleLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modifiersalleLabel">Modification</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
									<div class="card-body">
										<h4 class="card-title text-center">Modifier la salle</h4>
										<form>
											<div class="form-group">
												<label>Code</label> 
												<input id="mcode" name="mcode" type="text" class="form-control p_input">
											</div>
											<div class="form-group">
												<label>Type</label> 
												<input id="mtype" type="text" name="mtype" class="form-control p_input">
											</div>
										</form>
									</div>
								</div>
      <div class="modal-footer m-auto">
        <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">Annuler</button>
        <button type="submit" class="btn btn-success" onclick="modifierSalle()">Modifier</button>
      </div>
    </div>
  </div>
</div>
	<script>
$(document).ready(function() {
	$.ajax({
		url: "SalleController",
		data: { op: "load" },
		type: 'POST',
		success: function(data, textStatus, jqXHR) {
			console.log(data);
			remplirSalle(data);
		}
	});
});
var idSalle;
function load(x) {
	idSalle = x.parentNode.parentNode.cells[0].innerText;
	let code = x.parentNode.parentNode.cells[1].innerText;
	let type = x.parentNode.parentNode.cells[2].innerText;
	$("#mcode").val(code);
	$("#mtype").val(type);
}
function ajouterSalle(){
	let code = $("#code").val();
	let type = $("#type").val();
	if(code !="" && type !="" ){
		$.ajax({
			url: "SalleController",
			data: { code: code,
				type: type
				},
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				console.log(data);
				remplirSalle(data);
				$("#code").val("");
				$("#type").val("");
			}
		});
	}
	else
		alert("Remplir tous les champs");
	
}
function modifierSalle(){
	let code = $("#mcode").val();
	let type = $("#mtype").val();
	$.ajax({
		url: "SalleController",
		data: { op: "update",
			code: code,
			type: type,
			idSalle: idSalle
			},
		type: 'POST',
		success: function(data, textStatus, jqXHR) {
			console.log(data);
			remplirSalle(data);
			$('#modifiersalle').modal('toggle');
		}
	});
}
function supprimerSalle(){
	console.log(idSalle);
	$.ajax({
		url: "SalleController",
		data: { op: "delete",
			idSalle: idSalle
			},
		type: 'POST',
		success: function(data, textStatus, jqXHR) {
			console.log(data);
			remplirSalle(data);
			$('#supprimersalle').modal('toggle');
		}
	});
}
function remplirSalle(data) {
	var ligne = "";
	for (var i = 0; i < data.length; i++) {
		ligne += '<tr><td>' + data[i].id + '</td><td>' + data[i].code + '</td><td>' + data[i].type + '</td><td><button type="button" class="btn btn-inverse-warning btn-rounded mr-5" data-toggle="modal" data-target="#modifiersalle" onclick="load(this)">Modifier</button><button type="button" class="btn btn-inverse-danger btn-rounded" data-toggle="modal" data-target="#supprimersalle" onclick="load(this)">Supprimer</button></td></tr>';
	}
	$("#salles").html(ligne);
}
</script>
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>
	<script src="assets/vendors/chart.js/Chart.min.js"></script>
	<script src="assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<script src="assets/vendors/flot/jquery.flot.js"></script>
	<script src="assets/vendors/flot/jquery.flot.resize.js"></script>
	<script src="assets/vendors/flot/jquery.flot.categories.js"></script>
	<script src="assets/vendors/flot/jquery.flot.fillbetween.js"></script>
	<script src="assets/vendors/flot/jquery.flot.stack.js"></script>
	<script src="assets/vendors/flot/jquery.flot.pie.js"></script>
	<script src="assets/js/off-canvas.js"></script>
	<script src="assets/js/hoverable-collapse.js"></script>
	<script src="assets/js/misc.js"></script>
	<script src="assets/js/dashboard.js"></script>
</body>
</html>