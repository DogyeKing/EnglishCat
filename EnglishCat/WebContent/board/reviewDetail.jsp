<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <meta name="author" content="Bright">


<%@include file="/include/header.jsp"%>

 <!-- Page Content -->
 <body>
 <br>
 <br>
  <div class="container">
    <div class="row">
      <!-- Blog Entries Column -->
      <div class="col-md-8">
           <div class="content-section">
              
                 <fieldset class="form-group">
                    <legend class="border-bottom mb-4">수강후기</legend>
                    <div class="form-group">
                       <label class="form-control-label">${item.cont_title }</label>
                       <input class="form-control form-control-lg" type="text" name="cont_title" required autofocus>
                    </div>
                    <div class="form-group">
                       <label class="form-control-label">${item.cont_content }</label>
                       <textarea id="textAreaContent" name="cont_content" rows="15" cols="80" style="width:100%"></textarea>
                    </div>                 
                    <div class="form-group">
                       <button class="btn btn-outline-info" type="button" onclick="#">수정</button>
                       <button class="btn btn-outline-info" type="button" onclick="#">삭제</button>
                    </div>
                 </fieldset>
              
           </div>
      </div>
</div>
</div>
</body>
<br>
<br>
<br>
<%@include file="/include/footer.jsp"%>
<%@include file="/include/jquery.jsp"%>