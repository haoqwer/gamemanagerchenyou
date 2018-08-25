package com.chenyou.net;

public interface CustomResponseHandler<T> {
    public void handleResponse(T response);
}
