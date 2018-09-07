package com.chenyou.net.user;

import com.alibaba.fastjson.JSON;
import com.chenyou.base.BizException;
import com.chenyou.net.BaseMethod;
import com.chenyou.net.pojo.User;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.URIBuilder;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

public class UserInfoMethod implements BaseMethod {

    private String serviceRootUrl;
    private Request request=new Request();


    @Override
    public String getMethodUrl() {
        return serviceRootUrl+"user/findPage.do";
    }

    @Override
    public HttpRequestBase getRequest() throws BizException {
        try {
            URI uri = new URIBuilder(getMethodUrl())
                    .addParameter("data", JSON.toJSONString(request))
                    .build();
            return new HttpGet(uri);
        } catch (URISyntaxException e) {
            throw new BizException(BizException.CODE_PARM_ERROR,e.getMessage());
        }
    }


    public UserInfoMethod(String serviceRootUrl, int page,int rows) {
        this.serviceRootUrl = serviceRootUrl;
        request.setPage(page);
        request.setRows(rows);
    }

    public static class Request extends BaseMethod.ChenYouRequest{
        private int page;

        private int rows;
        public int getPage() {
            return page;
        }

        public void setPage(int page) {
            this.page = page;
        }

        public int getRows() {
            return rows;
        }

        public void setRows(int rows) {
            this.rows = rows;
        }
    }


    public static class Response extends BaseMethod.ChenYouResponse{
        private List<User> data;

        public List <User> getData() {
            return data;
        }

        public void setData(List <User> data) {
            this.data = data;
        }
    }

}
