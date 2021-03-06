<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gleb
  Date: 11/7/2018
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>

<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
    <title>Manufacturers</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>
<%@ include file="header.html" %>


<div class="wrap">
    <section>
        <div class="container">
            <table class="table table-striped" style="table-layout: fixed">
                <thead>
                <tr>
                    <th>
                        Manufacture id
                    </th>
                    <th>
                        Manufacture name
                    </th>
                    <th>
                        Manufacture location
                    </th>
                    <th>
                        Action
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <tr>
                        <td class="overflowHidden">
                            <c:out value="${manufacturer.manuf_id}"/>
                        </td>
                        <td class="overflowHidden">
                            <c:out value="${manufacturer.name}"/>
                        </td>
                        <td class="overflowHidden">
                            <c:out value="${manufacturer.location}"/>
                        </td>
                        <td td class="overflowHidden">
                            <a href="ManufacturersController?action=edit&manuf_id=<c:out value="${manufacturer.manuf_id}"/>">Update</a>
                            <a>/</a>
                            <a href="ManufacturersController?action=delete&manuf_id=<c:out value="${manufacturer.manuf_id}"/>">Delete</a>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="ManufacturersController?action=insert" class="btn btn-danger" role="button">Add new</a>

        </div>
    </section>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

</body>
</html>