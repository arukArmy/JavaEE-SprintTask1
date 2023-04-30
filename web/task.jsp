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
         <div class="row mt-3">
             <div class="row mt-3">
                 <div class="col-12">
                     <!-- Button trigger modal -->
                     <button  style="background-color: #00008b"  type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        + Добавить задание
                     </button>

                     <!-- Modal -->
                     <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                         <div class="modal-dialog">
                             <div class="modal-content">
                                 <div class="modal-header">
                                     <h1 class="modal-title fs-5" id="exampleModalLabel">Новое задание</h1>
                                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                 </div>
                                 <div class="modal-body">
                                     <%@include file="addtask.jsp"%>

                                 </div>
                             </div>
                         </div>
                     </div>

             <div class="col-12 ">
                  <table class="table table-striped table-hover">
                      <thead>
                          <tr>
                              <th>ID</th>
                              <th>Наименование</th>
                              <th>Крайный срок</th>
                              <th>Выполнено</th>
                              <th style="width: 10%;">Детали</th>
                          </tr>
                      </thead>
                      <tbody>
                            <%
                                ArrayList<Task> tapsyrmalar = (ArrayList<Task>) request.getAttribute("example");
                                if(tapsyrmalar!=null){
                                for(Task tasks:tapsyrmalar){
                            %>
                            <tr>
                                <td><%=tasks.getId()%></td>
                                <td><%=tasks.getName()%></td>
                                <td><%=tasks.getDeadlineDate()%></td>
                                <td><%=tasks.getIsDone()%></td>
                                <td>
                                    <a style="background-color: #00008b" class="btn btn-primary btn-sm" href="/details?id=<%=tasks.getId()%>">DETAILS</a>
                                </td>
                            </tr>
                            <%
                                     }
                                }
                            %>
                      </tbody>
                  </table>
             </div>
         </div>
     </div>
</body>
</html>
