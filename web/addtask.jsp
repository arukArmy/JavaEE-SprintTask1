
<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
</head>
<body>
    <div class="row">
        <div class="col-6 mx-auto">
            <form action="/add-task" method="post">
                <div class="row">
                    <div class="col-12">
                        <label>Наименование:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="task_name">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <label>Описание:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="task_description">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <label>Крайний срок:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="date" class="form-control" name="task_deadlineDate">
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 mt-3">
                        <button class="btn bs-tertiary-color-rgb">Закрыть</button>
                        <button style="background-color: #00008b" class="btn btn-success">Добавить</button>
                    </div>
                </div>

            </form>
        </div>
    </div>

</body>
</html>
