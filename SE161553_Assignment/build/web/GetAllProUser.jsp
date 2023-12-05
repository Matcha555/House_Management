<!--trang nay lay het du lieu products danh cho user-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Simple Data Table</title>
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
$(document).ready(function(){
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
                        <div class="col-sm-8"><h2>Product <b>Details</b></h2></div>
 
                        <div class="col-sm-2">
                            <div class="search-box">
                                <form action="MainController" method="post">
                                    <i class="material-icons">&#xE8B6;</i>
                                    <input type="text" name="search_1" value="${param.search}" class="form-control" placeholder="Search&hellip;" />
                                    <input type="hidden" name="action" value="SearchUserPro" />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <c:if test="${requestScope.GetAllProUser != null}">  
                    <c:if test="${not empty requestScope.GetAllProUser}" >  
                        <table border="1" class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Product ID</th>
                                    <th>Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Add to cart</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="pro" varStatus="counter" items="${requestScope.GetAllProUser}" >
                                <form action="MainController" method="post">
                                    <tr>
                                        <td>${counter.count}</td>
                                        <td>
                                            <input type="text" name="proID" value="${pro.productID}" readonly=""></td>
                                        </td>
                                        <td><input type="text" name="proName" value="${pro.productName}" readonly=""></td>
                                        <td><input type="text" name="proQuantity" value="${pro.productQuantity}"></td>
                                        <td><input type="text" name="proPrice" value="${pro.productPrice}" readonly=""></td>
                                        <td>
                                            <input type="submit" value="Add" />
                                            <input type="hidden" name="action" value="UserAddToCart" />
                                        </td>
                                    </tr>                                   
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>
                        
                    </c:if>
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

                        <!-- Edit Modal HTML -->
                        <div id="addProductModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="MainController" method="post">
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Create product</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">					
                                            <div class="form-group">
                                                <label>Id</label>
                                                <input name="proId" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input name="proName" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Quantity</label>
                                                <input name="proQuantity" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Price</label>
                                                <input name="proPrice" type="text" class="form-control" required>
                                                <!--<textarea name="proPrice" class="form-control" required></textarea>-->
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                            <input type="submit" name="action" class="btn btn-success" value="Create New">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        ${requestScope.MESSAGE}
                        <div class="col-sm-6"><a href="index_2.jsp">Back to home page</a></h2></div>
                        <div class="col-sm-6 text-right">
                            <a href="MainController?action=UserViewCart">View cart</a>
                        </div>
                        
            </div>
        </div>        
    </div>     
</body>
</html>
