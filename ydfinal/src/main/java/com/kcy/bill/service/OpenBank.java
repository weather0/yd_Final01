package com.kcy.bill.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.google.gson.Gson;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class OpenBank {
	
	
    private final HttpHeaders httpHeaders;
    private final RestTemplate restTemplate;
	
	public static void main(String[] args) {
		//Map<String,Object> map = BankAPI.getBalanceInfo();
		//Map<String,Object> map = BankAPI.getTransactionInfo();
		//Map<String,Object> map = BankAPI.getInquiryInfo();
		//System.out.println(map);
		AccountListVO vo = new AccountListVO();
		vo.setAccessToken("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiIxMTAxMDEyNDI2Iiwic2NvcGUiOlsiaW5xdWlyeSIsImxvZ2luIiwidHJhbnNmZXIiXSwiaXNzIjoiaHR0cHM6Ly93d3cub3BlbmJhbmtpbmcub3Iua3IiLCJleHAiOjE2NzAzODM3NzIsImp0aSI6IjUwZjk2OTBmLTVjNjctNDE5Mi04MTNjLWU1ZTJhYThmYmY1ZCJ9.GIm1pP-mHdOy53xgtyL2U2K2S3EVzpurB9dV5KmZN4Q");
		vo.setFintechUseNum("12022017288894115890060");		
	}		
	
	String org_access_token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiIxMTAxMDEyNDI2Iiwic2NvcGUiOlsiaW5xdWlyeSIsImxvZ2luIiwidHJhbnNmZXIiXSwiaXNzIjoiaHR0cHM6Ly93d3cub3BlbmJhbmtpbmcub3Iua3IiLCJleHAiOjE2NzAzODM3NzIsImp0aSI6IjUwZjk2OTBmLTVjNjctNDE5Mi04MTNjLWU1ZTJhYThmYmY1ZCJ9.GIm1pP-mHdOy53xgtyL2U2K2S3EVzpurB9dV5KmZN4Q";
	
	public static long seq = 20;
	
	public String getSequence() {
		long t = System.nanoTime();
		String result =String.valueOf(t);
		result = result.substring(result.length()-9);
		return result;
	}
	
	public String getDate() {
		String result = "";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		Date date = new Date();
		result = sdf.format(date);
		return result;
	}
	

	// 사용자인증
	public static String getAccessToken(String code) {

		final String strUrl = "https://testapi.openbanking.or.kr/oauth/2.0/token"; // Host
		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();

		postParams.add(new BasicNameValuePair("code", code));
		postParams.add(new BasicNameValuePair("client_id", "482b4dac-6f12-4754-bbb4-e1b2e41dfe6f")); // REST API KEY
		postParams.add(new BasicNameValuePair("client_secret", "1dc26f9a-2573-4252-8e64-f81999d9d117"));
		postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost/bankcallBack")); // 리다이렉트 URI
		postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));

		StringBuilder sb = new StringBuilder();
		try {
			URL url = new URL(strUrl);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST"); // HEADER + BODY(파라미터값)
			con.setDoInput(true);
			con.setDoOutput(true);
			con.addRequestProperty("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");

			OutputStream os = con.getOutputStream();
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, "UTF-8"));
			writer.write(getQuery(postParams)); // 파라미터와 &= 합체.
			writer.flush();
			writer.close();
			os.close();

			if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
				String line;
				while ((line = br.readLine()) != null) {
					sb.append(line).append("\n");
				}
				br.close();
				System.out.println("" + sb.toString());
			} else {
				System.out.println(con.getResponseMessage());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}

		return sb.toString();
	}

	// 이용기관
	public static String getOobAccessToken() {

		final String strUrl = "https://testapi.openbanking.or.kr/oauth/2.0/token"; // Host
		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();

		postParams.add(new BasicNameValuePair("client_id", "482b4dac-6f12-4754-bbb4-e1b2e41dfe6f")); // REST API KEY
		postParams.add(new BasicNameValuePair("client_secret", "1dc26f9a-2573-4252-8e64-f81999d9d117"));
		postParams.add(new BasicNameValuePair("scope", "oob"));
		postParams.add(new BasicNameValuePair("grant_type", "client_credentials"));

		StringBuilder sb = new StringBuilder();
		try {
			URL url = new URL(strUrl);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST"); // HEADER + BODY(파라미터값)
			con.setDoInput(true);
			con.setDoOutput(true);
			con.addRequestProperty("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");

			OutputStream os = con.getOutputStream();
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, "UTF-8"));
			writer.write(getQuery(postParams));
			writer.flush();
			writer.close();
			os.close();

			if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
				String line;
				while ((line = br.readLine()) != null) {
					sb.append(line).append("\n");
				}
				br.close();
				System.out.println("" + sb.toString());
			} else {
				System.out.println(con.getResponseMessage());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}

		return sb.toString();
	}
	
	public HttpHeaders setHeader(String access_token){
        httpHeaders.add("Authorization", "Bearer "+access_token);
        return httpHeaders;
    }
	
	public AccountListVO requestAccountList(AccountListVO vo){
        String url = "https://testapi.openbanking.or.kr/v2.0/account/list";
        HttpEntity<String> openBankAcountSerchRequest = new HttpEntity<>(setHeader(vo.getAccessToken()));
        UriComponents builder = UriComponentsBuilder.fromHttpUrl(url)
                .queryParam("user_seq_no", "1101012426")
                .queryParam("include_cancel_yn", "Y")
                .queryParam("sort_order", "D")
                .build();

        return restTemplate.exchange(builder.toUriString(), HttpMethod.GET, openBankAcountSerchRequest, AccountListVO.class).getBody();
    }
	
	public static Map<String,Object> getAccountInfo(AccountListVO vo){
		String reqURL = "https://testapi.openbanking.or.kr/v2.0/account/list";
		String param = "user_seq_no=" + "1101012426";
		param +="&include_cancel_yn="+"Y";
		param +="&sort_order="+ "D";

		
		HttpHeaders headers = new HttpHeaders();		
		headers.set("Authorization","Bearer "+vo.getAccessToken());
		
        HttpEntity<MultiValueMap<String, String>> request = 
        		new HttpEntity<MultiValueMap<String, String>>( null, headers);
        
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Map> response = restTemplate.exchange(	reqURL + "?" + param,
				        									HttpMethod.GET,
														    request,
														    Map.class );        
        return response.getBody();        
	}
	
	// 출금이체
	public static String getWithDraw(Map vo) {

		StringBuilder sb = new StringBuilder();

		try {
			String strUrl = "https://testapi.openbanking.or.kr/v2.0/transfer/withdraw/fin_num";
			URL url = new URL(strUrl);

			Gson gson = new Gson();
			String query = gson.toJson(vo);

			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.addRequestProperty("Authorization", "Bearer" + vo.get("access_token"));

			con.setRequestMethod("POST");
			con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			con.setRequestProperty("Content-Length", String.valueOf(query.length()));
			con.setDoOutput(true);
			byte[] input = query.getBytes("utf-8");
			con.getOutputStream().write(input);

			if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
				String line;
				while ((line = br.readLine()) != null) {
					sb.append(line).append("\n");
				}
				br.close();
				System.out.println("" + sb.toString());
			} else {
				System.out.println(con.getResponseMessage());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}

		return sb.toString();
	}

	// 입금이체
	public static String getDeposit(PayVO vo) {

		StringBuilder sb = new StringBuilder();

		try {
			String strUrl = "https://testapi.openbanking.or.kr/v2.0/transfer/deposit/fin_num";
			URL url = new URL(strUrl);

			Gson gson = new Gson();
			String query = gson.toJson(vo);

			HttpURLConnection con = (HttpURLConnection) url.openConnection();

			con.addRequestProperty("Authorization", "Bearer" + vo.getAccessToken());
			con.setRequestMethod("POST");
			con.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
			con.setRequestProperty("Content-Length", String.valueOf(query.length()));
			con.setDoOutput(true);

			byte[] input = query.getBytes("utf-8");
			con.getOutputStream().write(input);

			// JSON 형태 반환값 처리
			if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
				String line;
				while ((line = br.readLine()) != null) {
					sb.append(line).append("\n");
				}
				br.close();
				System.out.println("" + sb.toString());
			} else {
				System.out.println(con.getResponseMessage());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}

		return sb.toString();

	}

	private static String getQuery(List<NameValuePair> params) throws UnsupportedEncodingException {
		StringBuilder result = new StringBuilder();
		boolean first = true;

		for (NameValuePair pair : params) {
			if (first)
				first = false;
			else
				result.append("&");

			result.append(URLEncoder.encode(pair.getName(), "UTF-8"));
			result.append("=");
			result.append(URLEncoder.encode(pair.getValue(), "UTF-8"));
		}

		return result.toString();
	}
}
