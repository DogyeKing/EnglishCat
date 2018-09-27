package com.cos.util;

//네이버 API 예제 - 회원프로필 조회
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.cos.dao.RegistDAO;
import com.cos.dto.RegistVO;

public class APIExamMemberProfile {

 public String getProfile(String token) {
	 RegistDAO rdao = new RegistDAO();
     String header = "Bearer " + token; // Bearer 다음에 공백 추가
     try{
        String apiURL = "https://openapi.naver.com/v1/nid/me";
        URL url = new URL(apiURL);
        HttpURLConnection con = (HttpURLConnection)url.openConnection();
        con.setRequestMethod("GET");
        con.setRequestProperty("Authorization", header);
        int responseCode = con.getResponseCode();
        BufferedReader br;
        if(responseCode==200) { // 정상 호출
            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
        } else {  // 에러 발생
            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
        }
        String inputLine;
        StringBuffer response = new StringBuffer();
        while ((inputLine = br.readLine()) != null) {
            response.append(inputLine);
        }
        br.close();
        System.out.println(response.toString());
        JSONParser parser = new JSONParser();
        JSONObject getData = (JSONObject)parser.parse(response.toString());
        JSONObject resp = (JSONObject) getData.get("response");
        String id = resp.get("id").toString();
        System.out.println("id : " + id);
        String user_pid = rdao.select_pid(id); // 기존에 존재하는 pid를 가져옴
        if(user_pid == null) {
        	System.out.println("naverRegist_access");
            RegistVO regist = new RegistVO();
        	regist.setUser_id(id);
 			regist.setUser_mail(resp.get("email").toString());
 			regist.setUser_name(resp.get("name").toString());
 			
 			rdao.naverRegist(regist);
 			
 			user_pid = rdao.select_pid(id); //새로 넣은 데이터의 pid를 가져옴
        }
        System.out.println("return id");
        return user_pid; 
     } catch (Exception e) {
         e.printStackTrace();
     }
     return null;
 }
}