function isCharNum(value) {
    var i;
    for (i = 0; i < value.length; i++) {
        if (value.charAt(i) < '0' || value.charAt(i) > '9') {
            if (value.charAt(i) < 'a' || value.charAt(i) > 'z') {
                if (value.charAt(i) < 'A' || value.charAt(i) > 'Z') {
                    return false;
                }
            }
        }
    }
    return true;
}

function isChinese(value) {
    var reg = /^[\u4e00-\u9fa5]+$/i;
    if (!reg.test(value))
        return false;
    return true;
}

function isChineseCharNum(value) {
    var reg = /^[\u4e00-\u9fa5 a-z A-Z 0-9]+$/i;
    if (!reg.test(value))
        return false;
    return true;
}

function isEmail(value) {
    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    if (!myreg.test(value))
        return false;
    return true;
}
