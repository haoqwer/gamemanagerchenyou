package com.chenyou.HttpClientDemo;


import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.junit.Test;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

public class HttpClientDemo {

    @Test
    public  void demo1(){
        //httpClient的基础操作
        //创建HttpClient对象
        CloseableHttpClient httpClient=HttpClients.createDefault();
        //创建HttpClient请求
        HttpGet httpGet=new HttpGet("https://www.baidu.com/s?wd=%E7%99%BE%E5%BA%A6&rsv_spt=1&rsv_iqid=0x8f783bef00017049&issp=1&f=8&rsv_bp=1&rsv_idx=2&ie=utf-8&rqlang=cn&tn=baiduhome_pg&rsv_enter=1&oq=http%2526lt%253Blient%25E7%2594%25B5%25E5%2595%2586&rsv_t=4180ifbh946enCit0LYBn0MzzTwyWToRQX5zkd0%2FeedPXGSkW%2B%2FXMp%2BxQqhGXClZhPLZ&inputT=8089&rsv_pq=e63382c8000178c7&rsv_sug3=29&rsv_sug1=24&rsv_sug7=100&bs=httpClient%E7%94%B5%E5%95%86");
        //判断返回状态码是否为200
        CloseableHttpResponse response;
        try {
          response=httpClient.execute(httpGet);
          if(response.getStatusLine().getStatusCode() ==200 ){
              String content = EntityUtils.toString(response.getEntity(), "utf-8");
              System.out.println("响应内容是:"+content);
          }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public  void demo2() throws UnsupportedEncodingException {
      CloseableHttpClient httpClient=HttpClients.createDefault();
      HttpPost httpPost=new HttpPost("http://targethost/login");
      List<NameValuePair> nvps=new ArrayList<>();
      nvps.add(new BasicNameValuePair("username","vip"));
      nvps.add(new BasicNameValuePair("password","secret"));
      httpPost.setEntity(new UrlEncodedFormEntity(nvps));

    }

}
