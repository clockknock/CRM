/**
 * Created by zhong on 2017/9/13.
 */

function addOptions(typeCode, selectId) {
    var url = "${pageContext.request.contextPath}/customer/dict.action";
    var data = {"dictTypeCode": typeCode};
    var callback = function (dicts) {
        $(dicts).each(function (i, dict) {
            var idSelector = "#" + selectId;
            var idData = "#" + selectId + "_data";
            idData = $(idData).attr("data");
            console.log(idData);
            //处理数据回显的判断
            if (idData == dict.dictId) {
                $(idSelector).append("<option value='" + dict.dictId +
                    "' selected='selected'>" +
                    dict.dictItemName +
                    "</option>")
            } else {
                $(idSelector).append("<option value='" + dict.dictId + "' >" +
                    dict.dictItemName +
                    "</option>")
            }
        })
    };
    var type = "json";
    $.post(url, data, callback, type)
}


