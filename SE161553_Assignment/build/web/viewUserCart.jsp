<!--trang view cart danh cho user-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shopping cart</title>
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Roboto', sans-serif;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                min-width: 1000px;
                background: #fff;
                padding: 20px;        
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {
                padding-bottom: 10px;
                margin: 0 0 10px;
            }
            .table-title h2 {
                margin: 8px 0 0;
                font-size: 22px;
            }
            .search-box {
                position: relative;        
                float: right;
            }
            .search-box input {
                height: 34px;
                border-radius: 20px;
                padding-left: 35px;
                border-color: #ddd;
                box-shadow: none;
            }
            .search-box input:focus {
                border-color: #3FBAE4;
            }
            .search-box i {
                color: #a0a5b1;
                position: absolute;
                font-size: 19px;
                top: 8px;
                left: 10px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }
            table.table td:last-child {
                width: 130px;
            }
            table.table td a {
                color: #a0a5b1;
                display: inline-block;
                margin: 0 5px;
            }
            table.table td a.view {
                color: #03A9F4;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #E34724;
            }
            table.table td i {
                font-size: 19px;
            }    
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 95%;
                width: 30px;
                height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 30px !important;
                text-align: center;
                padding: 0;
            }
            .pagination li a:hover {
                color: #666;
            }	
            .pagination li.active a {
                background: #03A9F4;
            }
            .pagination li.active a:hover {        
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 6px;
                font-size: 95%;
            }    
        </style>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
    </head>
    <body>
        <div class="container">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-10"><h1>Your cart</h1></div>
                            <div class="col-sm-2">
                                <a href="GetAllProductsUser">Add more products</a>
                            </div>

                        </div>
                    </div>

                    <!--Cái này gui tu trang managerUser.jsp-->
                    <c:set var="list" value="${sessionScope.CART}" />
                    <c:if test="${sessionScope.CART != null}">  
                        <table border="1" class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>Product ID</th>
                                    <th>Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                    <th>Edit</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="subTotal" value="0" scope="page" />
                                <c:forEach var="pro" varStatus="counter" items="${list.getCart()}" >

                                <form action="MainController" method="post">
                                    <!-- total price the each product -->
                                    <c:set var="total" value ="${pro.value.productQuantity * pro.value.productPrice}" ></c:set>
                                        <!-- sub total for whole cart -->
                                    <c:set var="subTotal" value = "${subTotal + total}" ></c:set>
                                        <tr>
                                            <td>
                                                <input type="text" name="proID" value="${pro.value.productID}" readonly="">
                                            </td>
                                            <td>${pro.value.productName}</td>
                                            <td><input type="number" name="proQuantity" value="${pro.value.productQuantity}"></td>
                                            <td>${pro.value.productPrice}</td>
                                            <td>$${total}</td>

                                            <td>
                                                <input type="submit" value="Edit" />
                                                <input type="hidden" name="action" value="EditUserCart" />
                                            </td>
                                            
                                            <td>     
                                                <a href="MainController?action=RemoveUserCart&proID=${pro.value.productID}">Remove</a>
                                            </td>
                                        </tr>                                   
                                </form>
                                </c:forEach>
                            
                            </tbody>
                        </table>
                        <div class="col-sm-10">
                           <h3>Total: $${subTotal} </h3>
                        </div>
                        <div class="col-sm-2">
                           <h3><a href="CheckoutController">Buy now</a></h3>
                        </div>
                        
                        ${requestScope.ERROR}<br>
                        
                        <br><div class="col-sm-6"><a href="index_2.jsp">Back to home page</a></h2></div>
                    </c:if>

                    <div class="clearfix">
                        <div class="hint-text">Showing <b>${counter.count}</b> out of <b>25</b> entries</div>
                        <ul class="pagination">
                            <li class="page-item disabled"><a href="#"><i class="fa fa-angle-double-left"></i></a></li>
                            <li class="page-item"><a href="#" class="page-link">1</a></li>
                            <li class="page-item"><a href="#" class="page-link">2</a></li>
                            <li class="page-item active"><a href="#" class="page-link">3</a></li>
                            <li class="page-item"><a href="#" class="page-link">4</a></li>
                            <li class="page-item"><a href="#" class="page-link">5</a></li>
                            <li class="page-item"><a href="#" class="page-link"><i class="fa fa-angle-double-right"></i></a></li>
                        </ul>
                    </div>

                    ${requestScope.MESSAGE}
                    
                    
                    <c:if test="${sessionScope.CART == null}">  
                        <h3>Gio hang trong, ban can them gio hang</h3>
                        <div class="col-sm-6"><a href="index_2.jsp">Back to home page</a></h2></div>
                    </c:if>
                </div>
            </div>        
        </div>     
    </body>
</html>