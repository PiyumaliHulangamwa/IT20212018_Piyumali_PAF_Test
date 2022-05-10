$(document).ready(function() 
{ 
if ($("#alertSuccess").text().trim() == "") 
 { 
 $("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); 
}); 


// SAVE ============================================
$(document).on("click", "#btnSave", function(event) 
{ 
// Clear alerts---------------------
 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 
// Form validation-------------------
var status = validateItemForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
 } 
// If valid------------------------
 $("#formP").submit(); 
}); 
// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) 
{ 
 $("#hidUserIDSave").val($(this).closest("tr").find('#hidUserIDUpdate').val()); 
 $("#name").val($(this).closest("tr").find('td:eq(0)').text()); 
 $("#district").val($(this).closest("tr").find('td:eq(1)').text()); 
 $("#units").val($(this).closest("tr").find('td:eq(2)').text()); 
 $("#dues").val($(this).closest("tr").find('td:eq(3)').text());
 $("#date").val($(this).closest("tr").find('td:eq(4)').text());  
}); 
// CLIENT-MODEL================================================================
function validatePaymentForm() 
{ 
// NAME
if ($("#name").val().trim() == "") 
 { 
 return "Insert Name."; 
 } 
// DISTRICT
if ($("#district").val().trim() == "") 
 { 
 return "Insert District."; 
 } 
 
// UNITS-------------------------------
if ($("#units").val().trim() == "") 
 { 
 return "Insert Units."; 
 } 
// is numerical value
var tmpUnits = $("#units").val().trim(); 
if (!$.isNumeric(tmpUnits)) 
 { 
 return "Insert a numerical value for Units."; 
 } 
// convert to decimal price
 $("#units").val(parseFloat(tmpUnits).toFixed(2)); 

// DUES-------------------------------
if ($("#dues").val().trim() == "") 
 { 
 return "Insert Dues."; 
 } 
// is numerical value
var tmpDues = $("#dues").val().trim(); 
if (!$.isNumeric(tmpDues)) 
 { 
 return "Insert a numerical value for Dues."; 
 } 
// convert to decimal price
 $("#dues").val(parseFloat(tmpDues).toFixed(2)); 


// DATE------------------------
if ($("#date").val().trim() == "") 
 { 
 return "Insert Date."; 
 } 
return true; 
}

