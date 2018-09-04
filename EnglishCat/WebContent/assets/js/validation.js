function hangulCheck(form){
   
   var user_id = form.user_id.value;
   var user_pass = form.user_pass.value;
   
   var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
   if(check.test(user_id)){
       alert("ID는 한글을 입력할 수 없습니다.");
       return false;
   }

   return true;
}