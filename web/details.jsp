
<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-3 pb-5">
    <div class="row">
        <div class="col-6 mx-auto">
            <%
                Task task =(Task) request.getAttribute("tapsyrma");
                if(task!=null)
            %>

            <div class="row">
                <div class="col-6 mx-auto">
                    <div class="row">
                        <div class="col-12">
                            <label>Наименование : </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getName()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Описание : </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getDescription()%>" >
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Краткий срок : </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getDeadlineDate()%>" >
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <label>Выполнено : </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getIsDone()%> " >
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editTask">
                                Сохранить
                            </button>

                            <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
                                Удалить
                            </button>
                        </div>
                    </div>
                    <div class="modal fade" id="deleteTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="/delete-task" method="post">
                                    <input type="hidden" name="id" value="<%=task.getId()%>">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5">Confirm Delete</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <h5 class="text-center">Are you sure?</h5>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                        <button class="btn btn-danger">YES</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
