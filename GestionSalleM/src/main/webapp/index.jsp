<%@page import="com.google.gson.Gson"%>
<%@page import="beans.RepGson"%>
<%@page import="service.MachineService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

 
<%
Gson gsonObj = new Gson();
MachineService ms = new MachineService();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
List<RepGson> chart = ms.MachineparSalle();
 for(RepGson rp : chart){
	 map = new HashMap<Object,Object>(); map.put("label", rp.getCode()); map.put("y", rp.getNbr()); list.add(map);
 }
 System.out.println(list);
String dataPoints = gsonObj.toJson(list);
%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Souka admin</title>
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet"
	href="assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css" />
<link rel="stylesheet"
	href="assets/vendors/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css" />
<link rel="stylesheet" href="assets/css/style.css" />
<link rel="shortcut icon" href="assets/images/favicon.png" />

<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	title: {
		text: "Nombre des machines par salle"
	},
	axisX: {
		title: "Les salles"
	},
	axisY: {
		title: "Nombre des machines",
		includeZero: true
	},
	data: [{
		type: "column",
		yValueFormatString: "#,#0 salles",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>

<body>
	<div class="container-scroller">
		<%@include file="template/menu.jsp"%>
		<div class="container-fluid page-body-wrapper">
			<%@include file="template/header.jsp"%>
			<div class="main-panel">
				<div id="content" class="content-wrapper pb-0">
					<!-- Content start -->
					<div class="row mt-12" >
						<div class="col-xl-12 col-lg-12 stretch-card grid-margin">
						<div class="col-xl-4 col-md-4 stretch-card grid-margin grid-margin-sm-0 pb-sm-3">
                    <div class="card bg-warning" style="background-color :#343e3e !important ;">
                      <div class="card-body px-3 py-4">
                        <div class="d-flex justify-content-between align-items-start">
                          <div class="color-card">
                            <p class="mb-0 color-card-head">Salle</p>
                            <h2 id="nbrSalles" class="text-white">
                            </h2>
                          </div>
                          <i class="card-icon-indicator mdi mdi-home bg-inverse-icon-dark"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-4 col-md-4 stretch-card grid-margin grid-margin-sm-0 pb-sm-3">
                    <div class="card bg-danger" style="background-color :#343e3e !important ;">
                      <div class="card-body px-2 py-4">
                        <div class="d-flex justify-content-between align-items-start">
                          <div class="color-card">
                            <p class="mb-0 color-card-head">Machines</p>
                            <h2 id="nbrMachines" class="text-white"> 
                            </h2>
                          </div>
                          <i class="card-icon-indicator mdi mdi-laptop bg-inverse-icon-dark"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-4 col-md-4 stretch-card grid-margin grid-margin-sm-0 pb-sm-3 pb-lg-0 pb-xl-3">
                    <div class="card bg-primary" style="background-color :#343e3e !important ;">
                      <div class="card-body px-2 py-4">
                        <div class="d-flex justify-content-between align-items-start">
                          <div class="color-card">
                            <p class="mb-0 color-card-head">Utilisateurs</p>
                            <h2 id="nbrUsers" class="text-white">
                            </h2>
                          </div>
                          <i class="card-icon-indicator mdi mdi-account bg-inverse-icon-dark"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                
              			</div>
		            	<div class="col-xl-12 stretch-card grid-margin">
			                <div class="card">
			                  	<div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
			                    	<div id="chartContainer" style="height: 370px; width: 100%;"></div>
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
	<script src="assets/js/chart.js"></script>
	<script src="assets/vendors/chart.js/Chart.min.js"></script>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script>
	$(document).ready(function() {
		$.ajax({
			url: "MachineController",
			data: { op: "statistics" },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				console.log(data);
				$("#nbrUsers").html(data.nbrUsers + " Utilisateurs");
				$("#nbrMachines").html(data.nbrMachine + " Machines");
				$("#nbrSalles").html(data.nbrSalle + " Salles");
			}
		});
	});
	</script>
</body>

</html>