package com.chenyou.HttpClientDemo;

import com.microsoft.schemas.office.x2006.encryption.CTKeyEncryptor;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.junit.Test;

import javax.swing.text.html.parser.Entity;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

public class HttpClientTest {

    @Test
    public  void test_httpClientPost() throws IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        List <NameValuePair> parameters = new ArrayList <>();
        HttpPost httpPost = new HttpPost("http://localhost:8088/login.do");
        parameters.add(new BasicNameValuePair("loginName", "admin"));
        parameters.add(new BasicNameValuePair("password", "admin"));
        UrlEncodedFormEntity formEntity = new UrlEncodedFormEntity(parameters);
        httpPost.setEntity(formEntity);
        CloseableHttpResponse response = null;
        response = httpClient.execute(httpPost);
        System.out.println(EntityUtils.toString(response.getEntity()));
    }

    /**
     *补单
     * @throws URISyntaxException
     * @throws IOException
     */
    @Test
    public   void  test_httpClientGet() throws URISyntaxException, IOException {
//        /?mod=sendPay&act=sp&uid=1239574&jfd=2&amount=6
//        CloseableHttpClient httpClient = HttpClients.createDefault();
        CloseableHttpClient httpClient = HttpClients.createDefault();
        URI uri=new URIBuilder("http://47.104.227.113:8080").setParameter("mod","sendPay").
                setParameter("uid","1239574").setParameter("jfd","2").setParameter("amount","6").build();
        HttpGet httpGet=new HttpGet(uri);
        CloseableHttpResponse response = httpClient.execute(httpGet);
//        if(response.getStatusLine().getStatusCode()==200){
            String su=EntityUtils.toString(response.getEntity(),"utf-8");
            if(su.equals("SUCCESS")){
                System.out.println("响应的值是:"+su);
            }
        System.out.println(su);
//            System.out.println(EntityUtils.toString(response.getEntity(),"utf-8"));
//        }
    }

    /**
     *封号
     * @throws URISyntaxException
     * @throws IOException
     * 发送请求成功的话发送的时succ
     */
    @Test
    public  void test_sethonor() throws URISyntaxException, IOException {
       // http://47.104.227.113:8080/?mod=user&act=set&uid=4290563&key=state&value=1
        //封号
        CloseableHttpClient httpClient = HttpClients.createDefault();
        URI uri=new URIBuilder("http://47.104.227.113:8080/").setParameter("mod","user").setParameter("act","set").
                setParameter("uid","4290563").setParameter("key","state").setParameter("value","1").build();
        HttpGet httpGet=new HttpGet(uri);
        CloseableHttpResponse response = httpClient.execute(httpGet);
        System.out.println(EntityUtils.toString(response.getEntity(),"utf-8"));

    }

    /**
     * 道具发送
     */

    @Test
    public  void test_itemToSend() throws URISyntaxException, IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        //http://47.104.227.113:8080/?mod=user&act=set&uid=4290563&key=state&value=1
        URI uri=new URIBuilder("http://47.104.227.113:8080").setParameter("mod","user").setParameter("act","set").
                setParameter("uid","4290563").setParameter("key","state").setParameter("value","1").build();
        HttpGet httpGet=new HttpGet(uri);
        CloseableHttpResponse response = httpClient.execute(httpGet);
        System.out.println(EntityUtils.toString(response.getEntity(),"utf-8"));
    }

    /**
     * 活动调整
     */
    @Test
    public  void  test_adjust() throws URISyntaxException, IOException {
//        http://47.104.227.113:8080/?mod=control&act=modifyAct&server=node_360_1&aid=1001&fields=stime,2018-10-14%2018:00:00,etime,2018-10-14%2018:59:59,state,1,value,1
        CloseableHttpClient httpClient = HttpClients.createDefault();
        URI uri=new URIBuilder("http://47.104.227.113:8080").setParameter("mod","control").setParameter("act","modifyAct")
                .setParameter("server","node_360_1").setParameter("aid","1001").setParameter("fields","stime,2018-10-14%2018:00:00,etime,2018-10-14%2018:59:59,state,1,value,1").build();
        HttpGet httpGet=new HttpGet(uri);
        CloseableHttpResponse response = httpClient.execute(httpGet);
        System.out.println(EntityUtils.toString(response.getEntity(),"utf-8"));
    }

    @Test
    public  void test_activititoAdd() throws URISyntaxException, IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        //http://47.104.240.79:8080/?mod=control&act=addAct&server=node_360_1&aid=1001&value=1&stime=2018-10-13%2023:59:59&etime=2018-10-15%2023:59:59&state=1
        URI uri=new URIBuilder("http://47.104.240.79:8080").setParameter("mod","control").setParameter("act","addAct").setParameter("server","node_360_1")
                .setParameter("aid","1001").setParameter("value","1").setParameter("stime","2018-10-13%2023:59:59")
                .setParameter("etime","2018-10-15%2023:59:59").setParameter("state","1").build();
        HttpGet httpGet=new HttpGet(uri);
        CloseableHttpResponse response = httpClient.execute(httpGet);
        System.out.println(EntityUtils.toString(response.getEntity(),"utf-8"));
    }




}
