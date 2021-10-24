<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Εκπαιδευτές</title>
        <link rel="stylesheet" href="/css/bootstrap.css" />
        <link rel="stylesheet" href="/css/style.css" /> 
        <script src="/js/jquery.min.js"></script>
    </head>
    <body>
        <div id="divHeader"></div>
        <div id="mainPage">
            <div id="divTable" class="center">
                <div id="insert">
                    <h1 id="label">Εκπαιδευτές</h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <table class="table table-hover size">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Όνομα</th>
                            <th>Επώνυμο</th>
                            <th>Θέμα</th>
                            <th>Επεξεργασία</th>
                            <th>Διαγραφή</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${allTrainers}" var="trainer">
                            <tr>
                                <td>${trainer.id}</td>
                                <td>${trainer.firstname}</td>
                                <td>${trainer.lastname}</td>
                                <td>${trainer.tsubject}</td>
                                <td><button type="button" class="btn btn-primary insert" onclick="window.location.href = 'editTrainerForm?id=${trainer.id}';">Επεξεργασία</button></td>
                                <td><button type="button" class="btn btn-danger" onclick="deleteTrainer(${trainer.id});">Διαγραφή</button></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="divFooter"></div>
        <script src="/js/bootstrap.bundle.min.js"></script>
        <script src="/js/custom.js"></script>
        <script src="/js/prism.js"></script>
        <script src="/js/script.js"></script> 
    </body>
</html>
