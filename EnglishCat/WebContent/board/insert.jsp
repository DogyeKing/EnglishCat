<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!-- Smart Editor -->
   <script type="text/javascript" src="<%=request.getContextPath()%>/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/editor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>

 <!-- Page Content -->
  <div class="container">
    <div class="row">
      <!-- Blog Entries Column -->
      <div class="col-md-8">
           <div class="content-section">
              <form name="w_form" method="POST" action="<%=request.getContextPath()%>/board?cmd=board_write">
                 <fieldset class="form-group">
                    <legend class="border-bottom mb-4">New Post</legend>
                    <div class="form-group">
                       <label class="form-control-label">Title</label>
                       <input class="form-control form-control-lg" type="text" name="title" required autofocus>
                    </div>
                    <div class="form-group">
                       <label class="form-control-label">Content</label>
                       <textarea id="textAreaContent" name="content" rows="15" cols="80" style="width:100%"></textarea>
                    </div>                 
                    <div class="form-group">
                       <button class="btn btn-outline-info" type="button" onclick="submitContents(this)">Update</button>
                    </div>
                 </fieldset>
              </form>
           </div>
      </div>

<script>
  var form = document.w_form;
  var oEditors = [];
  nhn.husky.EZCreator.createInIFrame({
      oAppRef: oEditors,
      elPlaceHolder: "textAreaContent",
      sSkinURI: "<%=request.getContextPath()%>/editor/SmartEditor2Skin.html",
      fCreator: "createSEditor2"
  });
   
  //‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
  function submitContents(elClickedObj) {
      // 에디터의 내용이 textarea에 적용된다.
      oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
   
      // 에디터의 내용에 대한 값 검증은 이곳에서
      // document.getElementById("textAreaContent").value를 이용해서 처리한다.
    
      try {
          elClickedObj.form.submit();
      } catch(e) {
       
      }
  }
   
  // textArea에 이미지 첨부
  function pasteHTML(filepath){
      var sHTML = '<img src="<%=request.getContextPath()%>/editor/upload/'+filepath+'">';
      oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
  }
</script>



</body>
</html>