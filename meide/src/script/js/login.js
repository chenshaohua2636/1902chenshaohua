//登录注册切换
(function() {
    var a = $('#zhuce');
    var log = $('#log');
    var reg = $('.registor');
    var login = $('.login')
        // reg.show();
        // login.hide();

    a.on('click', function() {
        reg.show();
        login.hide();
    });
    log.on('click ', function() {
        reg.hide();
        login.show();
    });
})();
//登录验证
(function() {
    function addCookie(key, value, day) {
        var date = new Date(); //创建日期对象
        date.setDate(date.getDate() + day); //过期时间：获取当前的日期+天数，设置给date
        document.cookie = key + '=' + encodeURI(value) + ';expires=' + date; //添加cookie，设置过期时间
    }


    $('#btn_login').on('click', function() {
        var $username = $('#usertel').val();
        var $password = $('#userpassword').val();
        $.ajax({
            type: 'post',
            url: '../php/login.php',
            data: { //将用户名和密码传输给后端
                name: $username,
                pass: $password
            },
            success: function(data) { //请求成功，接收后端返回的值
                if (!data) { //用户名或者密码错误
                    $('#error').html('用户名或者密码错误');
                    $('#userpassword').val('');
                } else { //成功,存cookie,跳转到首页
                    addCookie('UserName', $username, 7);
                    location.href = '../src/index123.html';
                }
            }
        })
    });
})();
//注册验证
(function() {
    $(function() {
        $('#form1').validate({
            rules: {
                username: {
                    required: true,
                    minlength: 11,
                    isPhone: true,
                    remote: { //将前端的name给后端
                        url: "../php/reg.php", //后台处理程序
                        type: "post" //数据发送方式
                    }
                },
                password: {
                    required: true,
                    minlength: 6
                },
                repass: {
                    required: true,
                    equalTo: '#password'
                },

            },
            messages: {
                username: {
                    required: '手机号不能为空',
                    minlength: '手机号格式不正确',
                    isPhone: '手机号格式不正确',
                    remote: '用户名已存在'
                },
                password: {
                    required: '密码不能为空',
                    minlength: '密码长度不够'
                },

                repass: {
                    required: '密码重复不能为空',
                    equalTo: '密码不一致'
                },
            }

        });
    });

    $.validator.setDefaults({
        /*添加校验成功后的执行函数--修改提示内容，并为正确提示信息添加新的样式(默认是valid)*/
        success: function(span) {
            span.text('√').css('color', 'green').addClass('valid');
        }
    });
    //添加自定义验证手机号
    jQuery.validator.addMethod("isPhone", function(value, element) {
        var length = value.length;
        var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
        return this.optional(element) || (length == 11 && mobile.test(value));
    }, "请填写正确的手机号码");
})();
//验证码 
(function() {
    var yangzheng = $('#yanzheng');
    var yanzhengma = $('#yanzhengma');
    var result = $('#result');
    var code;
    //生成验证码
    function createCode() {
        code = ''; //首先默认code为空字符串 
        var codeLength = 4; //设置长度
        var codeV = yangzheng;
        //设置随机字符 
        var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
        for (var i = 0; i < codeLength; i++) { //循环codeLength 
            var index = Math.floor(Math.random() * 36); //设置随机数范围
            code += random[index]; //字符串拼接 将每次随机的字符 进行拼接 
        }
        codeV.val(code); //将拼接好的字符串赋值给展示的Value 
    }
    //验证码加载点击事件 
    yangzheng.on('click', function() {
        createCode();
    });
    //验证
    yanzhengma.on('blur', function() {
        var oValue = $("#yanzheng").val().toUpperCase();
        result.html("");
        if (oValue == "") {
            result.html("请输入验证码");
        } else if (oValue != code) {
            result.html("验证码不正确，请重新输入");
            oValue = "";
            createCode();
        } else {
            result.html("<font color='green'>√</font>");
        }
    });

})();