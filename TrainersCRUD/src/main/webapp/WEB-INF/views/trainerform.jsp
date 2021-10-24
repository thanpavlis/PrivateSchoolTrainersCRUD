<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>${title}</title>
        <link rel="stylesheet" href="/css/bootstrap.css" />
        <link rel="stylesheet" href="/css/style.css" /> 
        <script src="/js/jquery.min.js"></script>
    </head>
    <body>
        <div id="divHeader"></div>
        <div id="mainPage">
            <div id="divForm" class="divFormStyle">
                <form:form id="form" onsubmit="return validateTrainerForm()" action="${action}" 
                           modelAttribute="trainer" method="POST">
                    <fieldset>
                        <legend class="center">${formTitle}</legend>
                        <div class="form-group">
                            <form:input path="id" id="id" type="hidden" class="form-control" value="" name="id"/>
                            <div class="form-group has-danger">
                                <label>Όνομα:</label>
                                <form:input path="firstname" id="fname" class="form-control" name="fname" size="100" maxlength="100" 
                                            placeholder="Όνομα"/>
                                <div class="invalid-feedback">Το όνομα είναι υποχρεωτικό !</div>
                            </div>
                            <div class="form-group has-danger">
                                <label>Επώνυμο:</label>
                                <form:input path="lastname" id="lname" class="form-control" name="lname" size="100" maxlength="100"
                                            placeholder="Επώνυμο"/>
                                <div class="invalid-feedback">Το επώνυμο είναι υποχρεωτικό !</div>
                            </div>
                            <div class="form-group has-danger">
                                <label>Θέμα:</label>
                                <form:textarea path="tsubject" id="subject" class="form-control" name="subject" rows="7"
                                               placeholder="Θέμα"/> 
                                <div class="invalid-feedback">Το θέμα είναι υποχρεωτικό !</div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="divButtons">
                        <button type="submit" class="btn btn-primary">${submit}</button>
                        <button type="button" id="cancel" class="btn btn-warning" onclick="window.location.href = '/trainers/';">Άκυρο</button>
                        <button type="reset" id="reset" class="btn btn-danger" onclick="hideWrongData()">Reset</button>
                    </div>
                </form:form>
            </div>
        </div>
        <div id="divFooter"></div>
        <script src="/js/bootstrap.bundle.min.js"></script>
        <script src="/js/custom.js"></script>
        <script src="/js/prism.js"></script>
        <script src="/js/script.js"></script>
    </body>
</html>
