<%@ page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%

//Save---------------------------------
if (request.getParameter("name") != null) 
{ 
 Payment paymentObj = new Payment(); 
 String stsMsg = ""; 
//Insert--------------------------
if (request.getParameter("hidUserIDSave") == "") 
 { 
 stsMsg = paymentObj.insertP(request.getParameter("name"), 
 request.getParameter("district"), 
 request.getParameter("units"), 
 request.getParameter("dues"), 
 request.getParameter("date")); 
 } 
else//Update----------------------
 { 
 stsMsg = paymentObj.updateP(request.getParameter("hidUserIDSave"), 
 request.getParameter("name"), 
 request.getParameter("district"), 
 request.getParameter("units"), 
 request.getParameter("dues"),
 request.getParameter("date"));
 } 
 session.setAttribute("statusMsg", stsMsg); 
} 
//Delete-----------------------------
if (request.getParameter("hidUserIDDelete") != null) 
{ 
 Payment paymentObj = new Payment(); 
 String stsMsg = 
 paymentObj.deleteP(request.getParameter("hidUserIDDelete")); 
 session.setAttribute("statusMsg", stsMsg); 
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment details</title>
<link rel="stylesheet" href="Views/css/">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=6LkcVKZ-R8bP6eHFe4ZDDCrJO24tMbHbTwp8KdudVdQrMY7bRleiZOeZjRUlcm2qR_Lb0LanFXEi68-L6mQgTQ" charset="UTF-8"></script><link rel="stylesheet" crossorigin="anonymous" href="https://gc.kis.v2.scr.kaspersky-labs.com/E3E8934C-235A-4B0E-825A-35A08381A191/abn/main.css?attr=aHR0cHM6Ly90cnlpdC53M3NjaG9vbHMuY29tL2NvZGVfZGF0YXMucGhw"/><script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
  
<script src="Components/jquery-3.6.0.js"></script>
<script src="Components/Payment.js"></script>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-8">
 
 <h1 class="m-3">Payment details</h1>

<form id="formP" name="formP" method="post" action="Payment.jsp">
 User Name: 
<input id="name" name="name" type="text" 
 class="form-control form-control-sm">
<br> District: 
<input id="district" name="district" type="text" 
 class="form-control form-control-sm">
<br> No.OF Units: 
<input id="units" name="units" type="text" 
 class="form-control form-control-sm">
<br> No.OF Dues: 
<input id="dues" name="dues" type="text" 
 class="form-control form-control-sm">
<br> Date:
<input id="date" name="date" type="text" 
 class="form-control form-control-sm">
 <br>
<input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
<input type="hidden" id="hidUserIDSave" name="hidUserIDSave" value="">
</form>

</div>
</div>
 
<br>
 
<div class="row">
<div class="col-12" id="colPay">
 
</div>
</div>
</div>
</body>
</html>