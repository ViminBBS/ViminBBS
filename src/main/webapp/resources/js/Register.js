function validePwd() {
    var inputPwd = $("#inputRePwd");
    var pwd = $("#inputPwd").val();
    var repwd = inputPwd.val();
    if (pwd == "" || pwd != repwd) {
        inputPwd.tooltip("show");
        return false;
    } else {
        inputPwd.tooltip("hide");
    }
    return true;
}
function validate() {
    var inputUserId = $("#inputUserId");
    var value = inputUserId.val();
    var check = false;
    if (value.trim() == "" || value.length < 6 || value.length > 16) {
        inputUserId.tooltip("destroy");
        inputUserId.attr("title", "用户名长度应为6-16位");
        inputUserId.tooltip("show");
        return false;
    }
    else {
        inputUserId.tooltip("destroy");
    }
    return false;
    if (!isCharNum(value)) {
        inputUserId.tooltip("destroy");
        inputUserId.attr("title", "用户名只能包含字母和数字");
        inputUserId.tooltip("show");
        return false;
    } else {
        inputUserId.tooltip("destroy");
    }
    if (!validePwd())
        return false;
    var inputNickname = $("#inputNickName");
    var nickname = inputNickname.val();
    if (nickname.trim() == "") {
        inputNickname.attr("title", "昵称不能为空");
        inputNickname.tooltip("show");
        return false;
    } else if(!isChineseCharNum(nickname)){
    	inputNickname.attr("title", "昵称应为字母数字和汉字组合");
        inputNickname.tooltip("show");
        return false;
    }else{
        inputNickname.tooltip("destroy");
    }
    /* 验证年龄 出生年月*/
    var age = $("#inputAge").val();
    if (isNaN(age) || age < 1 || age > 99) {
        $("#inputAge").attr("title", "年龄应为1到99之间的数字");
        $("#inputAge").tooltip("show");
        return false;
    }
    else {
        $("#inputAge").tooltip("hide");
    }

    var checked = false;
    if ($("input:radio[name='sex']:checked").val() != null)
        checked = true;
    if (!checked) {
        $("#inputSex").attr("title", "性别不能为空");
        $("#inputSex").tooltip("show");
        return false;
    }
    else {
        $("#inputSex").tooltip("hide");
    }
    var inputEmail = $("#inputEmail");
    if (!isEmail(inputEmail.val())) {
        inputEmail.attr("title", "Email不合法");
        inputEmail.tooltip("show");
        return false;
    } else {
        inputEmail.tooltip("destroy");
    }

    var year = $("#inputYear").val();
    if (isNaN(year) || year < 1900 || year > 2050) {
        $("#inputYear").attr("title", "请输入1900到2050的数字 如1988");
        $("#inputYear").tooltip("show");
        return false;
    } else {
        $("#inputYear").tooltip("hide");
    }
    var month = $("#inputMonth").val();
    if (isNaN(month) || month < 1 || month > 12) {
        $("#inputMonth").attr("title", "请输入1到12之间的数字 如12");
        $("#inputMonth").tooltip("show");
        return false;
    } else {
        $("#inputMonth").tooltip("hide");
    }
    var day = $("#inputDay");
    var day_value = day.val();
    if (isNaN(day_value) || day_value < 1 || day_value > 12) {
        day.attr("title", "请输入1到31之间的数字 如 16");
        day.tooltip("show");
        return false;
    } else {
        day.tooltip("hide");
    }
    var year = $("#inputYear").val();
    if (isNaN(year) || year < 1900 || year > 2050) {
        $("#inputYear").tooltip("show");
        return false;
    } else {
        $("#inputYear").tooltip("hide");
    }
    var month = $("#inputMonth").val();
    if (isNaN(month) || month < 1 || month > 12) {
        $("#inputMonth").tooltip("show");
        return false;
    } else {
        $("#inputMonth").tooltip("hide");
    }
    var day = $("#inputDay").val();
    if (isNaN(day) || day < 1 || day > 31) {
        $("#inputDay").tooltip("show");
        return false;
    } else {
        $("#inputDay").tooltip("hide");
    }
    /*end of validate age birthday*/
    if ($("input:password[name='pwd']").val() != $("input:password[name='repwd']").val()) {
        $("#myModal2").modal({
            keyboard: false
        });
        return false;
    }
    if (!checked || $("input:text").val() == "") {
        $("#myModal").modal({
            keyboard: false
        });
        return false;
    }

    $("#myModal").modal({
        keyboard: false
    });

}