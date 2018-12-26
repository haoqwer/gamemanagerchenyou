package com.chenyou;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-25 21:01
 * @Version: 1.0
 **/
public class Attach {
    private Integer propId;
    private Integer propCount;

    public Integer getPropId() {
        return propId;
    }

    public void setPropId(Integer propId) {
        this.propId = propId;
    }

    public Integer getPropCount() {
        return propCount;
    }

    public void setPropCount(Integer propCount) {
        this.propCount = propCount;
    }

    @Override
    public String toString() {
        return "Attach{" + "propId=" + propId + ", propCount=" + propCount + '}';
    }
}
