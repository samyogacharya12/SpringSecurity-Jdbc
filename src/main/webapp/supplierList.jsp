<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="apple-touch-icon"  href="static/black-dashboard-html-v1.0.1/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="static/black-dashboard-html-v1.0.1/assets/img/favicon.png">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/favicon.ico">
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="static/black-dashboard-html-v1.0.1/assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="static/black-dashboard-html-v1.0.1/assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="static/resources/jquery.dynatable.css" rel="stylesheet"/>
	<style type="text/css" class="init">
	
	</style>

</head>
<body class="nav-md">
    <div class="wrapper">
    <div class="sidebar">
    <div class="sidebar-wrapper ps">
    <div class="logo">
     <a href="javascript:void(0)" class="simple-text logo-mini"> 
     </a>
     <a href="javascript:void(0)" class="simple-text logo-normal">
    <b>Welcome ${username}</b>
     </a> 
     <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <ul class="nav"> 
   <li><a href="/"> <i class="tim-icons icon-chart-pie-36"></i> Dashboard <span class="fa fa-chevron-right"></span></a>
                  </li>
                  
                  <li><a href="/list_supplier">  <i class="tim-icons icon-single-02"></i> Supplier <span class="fa fa-chevron-right"></span></a></li>
                  <li><a href="/list_product">  <i class="tim-icons icon-basket-simple"></i> Product <span class="fa fa-chevron-right"></span></a>
                   
                  </li>
                 <li><a href="/list_Customer"> <i class="tim-icons icon-single-02"></i> Customer <span class="fa fa-chevron-right"></span></a>
                   
                  </li>
                    
                    <li><a href="/get_list"> <i class="tim-icons icon-single-02"></i> User <span class="fa fa-chevron-right"></span></a>
                   
                  </li>


                    <li>
            <a href="/get_report">
             <i class="tim-icons icon-bag-16"></i>
              Summary Report
            </a>
          </li>
          
           <li>
            <a href="/get_expenses">
          <i class="tim-icons icon-notes"></i>
              Expenses
            </a>
          </li>
          

                   <li><a href="/logout">  <i class="icon-double-right"></i>Log Out <span class="fa fa-chevron-right"></span></a> </li>
        </ul>
        </div>
      </div>
    </div>
    </div>
    
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle d-inline">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <br>
            <a class="navbar-brand" href="javascript:void(0)"></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          </div>
          </nav>
                <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- End Navbar -->
      <div class="content">
        <div class="col-md-8 ml-auto mr-auto">
          <h2 class="text-center"></h2>
          <p class="text-center">
          </p>
        </div>
        <div class="row mt-5">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="toolbar">
                  <!--        Here you can write extra buttons/actions for the toolbar              -->
                </div>
                <div id="datatable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                <div class="row">
                <div class="col-sm-12 col-md-6">
                <div class="dataTables_length" id="datatable_length">
                </div></div>
              
               <div class="col-sm-12 col-md-6">
                <div id="datatable_filter" class="dataTables_filter">
                <form action="/getSupplierByName" method="get">           
             
             
                 <select id="myInput" name="supplier_name" class="chosen">
                <c:forEach var="supplier1" items="${supplier3}">
                <option>
                 ${supplier1.supplier_name}              
                 </option>
				 </c:forEach>
				 
				 <c:forEach var="supplier12" items="${supplier1}"> 
				 <option>
                 ${supplier12.supplier_name}
                 </option>
                 </c:forEach>
                 
                 <c:forEach var="supplier13" items="${supplier2}"> 
				 <option>
                 ${supplier13.supplier_name}
                 </option>
                 </c:forEach>
                 
                </select>
                <button class="btn btn-primary btn-sm">Search</button>
                </form>
                </div>
                </div>
                </div>
              
       <div class="row">
       <div class="col-sm-12">
          <a href="/supplier_Form" class="btn btn-primary btn-sm"> Add new </a>
          <button class="btn btn-primary btn-sm" onclick="search(this)">Filter</button>
          <a href="/supplier_Report" class="btn btn-primary btn-sm"> Supplier Report</a>
                  
                  <table class="table" id="">
                    <a href="/createExcelSupplier" style="float:right;"><img src="images/excelimg.png" style="width:80px;"> </a>
                     <a href="/createPdfSupplier" style="float:right;"><img src="images/Pdf_by_mimooh.svg.png" style="width:40px; margin-left:10px;"> </a>
                    <thead class="text-primary">
                      <tr>
                        <th>
                          Supplier Id
                        </th>
                        <th>
                          Supplier Name
                        </th>
                        <th>
                          Supplier Type
                        </th>
                        
                        <th class="text-center">
                          quantity
                        </th>
                        
                        <th>
                        cost
                        </th>
                        
                        <th>
                        buy date
                        </th>
                        <th>
                        permanent address
                        </th>
                        
                        <th>
                        temporary address
                        </th>
               
                                
                        <th>
                        product id
                        </th>
                        
                        <th>
                        product name
                        </th>
                      </tr>
                    </thead>
        
       
                    <tbody id="myTable">
                 <c:forEach var="suppliers" items="${supplier}">
<tr>   
    <td> ${suppliers.supplier_id} </td>
    <td><a href="supplier_name?supplier_id=${suppliers.supplier_id}"> ${suppliers.supplier_name} </a> </td>
    <td> ${suppliers.supplier_type} </td>
    <td> ${suppliers.quantity} </td>
    <td> ${suppliers.cost} </td>
     <td> ${suppliers.buy_date} </td>
    <td> ${suppliers.permanent_address} </td>
    <td> ${suppliers.temporary_address}</td>
    <td> ${suppliers.product_id} </td>
    <td> ${suppliers.product_name} </td>
     <td><a href="/getSupplier?supplier_id=${suppliers.supplier_id}" class=""> <i class="tim-icons icon-upload"></i>  </a> </td>
    <td> <a href="supplier?supplier_id=${suppliers.supplier_id}&product_id=${suppliers.product_id}" class="btn btn-link btn-warning btn-icon btn-sm edit"><i class="tim-icons icon-pencil"></i></a> </td>
    <td> <a href="deletesupplier?supplier_id=${suppliers.supplier_id}&product_id=${suppliers.product_id}" class="btn btn-link btn-danger btn-icon btn-sm remove"><i class="tim-icons icon-simple-remove"></i></a> </td>
    </tr>
</c:forEach> 

<td> ${supplier5} </td>
<td>     </td>
<td>     </td>
<td>  ${supplier6}    </td>
<td>  ${supplier4} </td> 
<td>     </td>
<td>     </td>
<td>     </td>
<td>  ${supplier7}    </td>
<td>     </td>         
<td>     </td>
<td>     </td>      
<td>     </td>  

                 <c:forEach var="suppliers" items="${supply}">
<tr>   
    <td> ${suppliers.supplier_id} </td>
    <td><a href="supplier_name?supplier_id=${suppliers.supplier_id}"> ${suppliers.supplier_name} </a> </td>
    <td> ${suppliers.supplier_type} </td>
    <td> ${suppliers.quantity} </td>
    <td> ${suppliers.cost} </td>
    <td> ${suppliers.buy_date} </td>
    <td> ${suppliers.permanent_address} </td>
    <td> ${suppliers.temporary_address}</td>
    <td> ${suppliers.product_id} </td>
    <td> ${suppliers.product_name} </td>
     <td><a href="/getSupplier?supplier_id=${suppliers.supplier_id}" class=""> <i class="tim-icons icon-upload"></i>  </a> </td>
    <td> <a href="supplier?supplier_id=${suppliers.supplier_id}&product_id=${suppliers.product_id}" class="btn btn-link btn-warning btn-icon btn-sm edit"><i class="tim-icons icon-pencil"></i></a> </td>
    <td> <a href="deletesupplier?supplier_id=${suppliers.supplier_id}&product_id=${suppliers.product_id}" class="btn btn-link btn-danger btn-icon btn-sm remove"><i class="tim-icons icon-simple-remove"></i></a> </td> 
    </tr>
    </c:forEach>
<td>${totalsupplier} </td>
<td>     </td>
<td>     </td>
<td> ${totalquantity}    </td>
<td> ${totalcost} </td> 
<td>     </td>
<td>     </td>
<td>     </td>
<td> ${totalproduct}    </td>
<td>     </td>         
<td>     </td>
<td>     </td>      
<td>     </td>      
<td>     </td>         
<td>     </td>
<td>     </td>      
<td>     </td>         
   

                 <c:forEach var="begins" items="${begin_date}">
<tr>   
    <td> ${begins.supplier_id} </td>
    <td><a href="supplier_name?supplier_id=${begins.supplier_id}"> ${begins.supplier_name} </a> </td>
    <td> ${begins.supplier_type} </td>
    <td> ${begins.quantity} </td>
    <td> ${begins.cost} </td>
    <td> ${begins.buy_date} </td>
    <td> ${begins.permanent_address} </td>
    <td> ${begins.temporary_address}</td>
    <td> ${begins.product_id} </td>
    <td> ${begins.product_name} </td>
     <td><a href="/getSupplier?supplier_id=${begins.supplier_id}" class=""> <i class="tim-icons icon-upload"></i>  </a> </td>
    <td> <a href="supplier?supplier_id=${begins.supplier_id}&product_id=${begins.product_id}" class="btn btn-link btn-warning btn-icon btn-sm edit"><i class="tim-icons icon-pencil"></i></a> </td>
    <td> <a href="deletesupplier?supplier_id=${begins.supplier_id}&product_id=${begins.product_id}" class="btn btn-link btn-danger btn-icon btn-sm remove"><i class="tim-icons icon-simple-remove"></i></a> </td>
    </tr>
</c:forEach>    
<td>${totalsupplier1} </td>
<td>     </td>
<td>     </td>
<td> ${totalquantity1}    </td>
<td> ${totalcost1} </td> 
<td>     </td>
<td>     </td>
<td>     </td>
<td> ${totalproduct1}    </td>
<td>     </td>         
<td>     </td>
<td>     </td>      
<td>     </td>
  
<tr>   
 <c:forEach var="supply" items="${suppliers}">
    <td> ${supply.supplier_id} </td>
    <td><a href="supplier_name?supplier_id=${supply.supplier_id}"> ${supply.supplier_name} </a> </td>
    <td> ${supply.supplier_type} </td>
    <td> ${supply.quantity} </td>
    <td> ${supply.cost} </td>
    <td> ${supply.buy_date} </td>
    <td> ${supply.permanent_address} </td>
    <td> ${supply.temporary_address}</td>
   <td> <a href="supplier_name?supplier_id=${supply.supplier_id}" class="btn btn-link btn-warning btn-icon btn-sm edit"><i class="tim-icons icon-pencil"></i></a> </td>
    <td> <a href="deleteuser?supplier_id=${supply.supplier_id}" class="btn btn-link btn-danger btn-icon btn-sm remove"><i class="tim-icons icon-simple-remove"></i></a> </td>
    </c:forEach>
    </tr>
    </tbody>
                  </table>
                </div>
              </div>
           </div>
           </div>
           </div>
           </div>   
           </div>
           </div>
         </div>
         </div>                        
  <!--   Core JS Files   -->
  
   <script src="static/resources/jquery.tablesorter.js.download"></script>
   <script src="static/resources/jquery.dataTables.min.js.download"></script>
  <script src="static/black-dashboard-html-v1.0.1/assets/js/core/jquery.min.js"></script>
  <script src="static/black-dashboard-html-v1.0.1/assets/js/core/popper.min.js"></script>
  <script src="static/black-dashboard-html-v1.0.1/assets/js/core/bootstrap.min.js"></script>
  <script src="static/black-dashboard-html-v1.0.1/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <!-- Place this tag in your head or just before your close body tag. -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/black-dashboard.min.js?v=1.0.0"></script>
  <!-- Black Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>  
     <script>
    
  var html ='<div class="table">\
  <div class="text-primary">\
  <form action="/getDate" method="get">\
      <span class="icon"><i class="fa fa-search"></i></span>\
      <input type="Date" name="buy_date[]" id="search" placeholder="Date..." />\
       <input type="Date" name="buy_date[]" id="search1" placeholder="Date..." />\
       <button type="submit" class="btn btn-fill btn-primary">Find</button>\
       </form>\
  </div>\
</div>';

function search(elem) {
  elem.outerHTML = html;
}
  </script>
  <script>
function goBack() {
  window.history.back();
}
</script>
  
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');
        $navbar = $('.navbar');
        $main_panel = $('.main-panel');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');
        sidebar_mini_active = true;
        white_color = false;

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();



        $('.fixed-plugin a').click(function(event) {
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .background-color span').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data', new_color);
          }

          if ($main_panel.length != 0) {
            $main_panel.attr('data', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data', new_color);
          }
        });

        $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            sidebar_mini_active = false;
            blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
          } else {
            $('body').addClass('sidebar-mini');
            sidebar_mini_active = true;
            blackDashboard.showSidebarMessage('Sidebar mini activated...');
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);
        });

        $('.switch-change-color input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (white_color == true) {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').removeClass('white-content');
            }, 900);
            white_color = false;
          } else {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').addClass('white-content');
            }, 900);

            white_color = true;
          }


        });

        $('.light-badge').click(function() {
          $('body').addClass('white-content');
        });

        $('.dark-badge').click(function() {
          $('body').removeClass('white-content');
        });
      });
    });
  </script> 
</body>
<script type="text/javascript">
		$(".chosen").chosen();
		</script>
</html>