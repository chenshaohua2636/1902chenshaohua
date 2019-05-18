// 插入图片
(function() {
    var picid = location.search.substring(1).split('=')[1];
    //将当前的id传给后端获取对应的数据
    $.ajax({
        url: '../php/details.php',
        data: {
            sid: picid
        },
        dataType: 'json'
    }).done(function(data) { //data:后端返回的和id对应的数据

        $('#smallpic img').attr('src', data.url);
        $('#bigpic').attr('src', data.url);
        $('#smallpic').attr('sid', data.sid);
        $('.loadtitle').html(data.title);
        $('.loadpcp').html(data.price);
        $('.bianhao').html(data.num);
        $('.liang').html(data.guige);
        var arr = data.urls.split('&,');

        var str = '';

        $.each(arr, function(index, value) {
            str += '<li><img src="' + value + '"/></li>';
        });
        $('#list ul').html(str);
        var oLi = $('#list ul li');
        $(oLi[0]).addClass('active');


    });
})();
// 放大镜效果
(function() {
    var spic = $('#smallpic');
    var sf = $('#smallfang');
    var bf = $('#bigfang');
    var bpic = $('#bigpic');
    var smpic = $('#smpic');
    var product_left = $('.product_left');


    sf.width(spic.width() * bf.width() / bpic.width());
    sf.height(spic.height() * bf.height() / bpic.height());
    var bili = bpic.width() / spic.width();
    spic.hover(function() {
        sf.css('visibility', 'visible');
        bf.css('visibility', 'visible');
        $(this).on('mousemove', function(ev) {
            var $left = ev.pageX - product_left.offset().left - sf.width() / 2;

            var $top = ev.pageY - product_left.offset().top - sf.height() / 2;

            if ($left < 0) {
                $left = 0;
            } else if ($left >= spic.width() - sf.width()) {
                $left = spic.width() - sf.width();
            }
            if ($top < 0) {
                $top = 0;
            } else if ($top >= spic.height() - sf.height()) {
                $top = spic.height() - sf.height();
            }
            sf.css('left', $left);
            sf.css('top', $top);
            bpic.css('left', -$left * bili);
            bpic.css('top', -$top * bili);
        });
    }, function() {
        sf.css('visibility', 'hidden');
        bf.css('visibility', 'hidden');
    });

    //点击小图切换
    $('#list ul').on('mouseover', 'li', function() {
        var $imgurl = $(this).find('img').attr('src');
        smpic.attr('src', $imgurl);
        $(this).addClass('active').siblings().removeClass('active');
        bpic.attr('src', $imgurl);
    });
})();
//加加减减
(function() {
    var minus = $('#minus');
    var add = $('#add');
    var number = $('#number');
    var howmuch = parseInt(number.val());

    minus.on('click', function() {
        if (howmuch == 0) {
            alert('亲，不能在减少了');
        } else {
            howmuch--;
        }
        number.val(howmuch);
    });
    add.on('click', function() {
        howmuch++;
        number.val(howmuch);

    })
})();
//加入购物车
(function() {
    var arrsid = []; //商品的sid
    var arrnum = []; //商品的数量
    function cookietoarray() {
        if (getCookie('cookiesid') && getCookie('cookienum')) { //判断商品是第一次存还是多次存储
            arrsid = getCookie('cookiesid').split(','); //cookie商品的sid  
            arrnum = getCookie('cookienum').split(','); //cookie商品的num
        }
    }

    //2.有了上面的方法，可以点击加入购物车按钮判断商品是否是第一次还是多次。
    $('#join_cart').on('click', function() { //点击加入购物车按钮。


        //判断当前的商品sid是否存在购物车(cookie)
        //判断当前的按钮对应的商品的sid和取出的cookie里面的sid进行比较

        //获取当前的按钮对应的商品的sid
        var picid = location.search.substring(1).split('=')[1];
        // console.log(picid);
        cookietoarray(); //获取已经存在的cookie值。
        if (confirm('是否加入购物车？')) {
            location.href = "cart.html";
            if ($.inArray(picid, arrsid) != -1) { //商品存在，数量叠加 
                //先取出cookie中的对应的数量值+当前添加的数量值，添加到对应的cookie中。
                var num = parseInt(arrnum[$.inArray(picid, arrsid)]) + parseInt($('#number').val());
                arrnum[$.inArray(picid, arrsid)] = num;
                addCookie('cookienum', arrnum.toString(), 10); //数组存入cookie


            } else { //不存在，第一次添加。将商品的id和数量存入数组，再存入cookie.
                arrsid.push(picid); //将当前的id存入数组
                addCookie('cookiesid', arrsid.toString(), 10); //数组存入cookie
                arrnum.push($('#number').val());
                addCookie('cookienum', arrnum.toString(), 10); //数组存入cookie
            }
        }

    });
})();
//倒计时
(function() {
    var d1 = new Date();

    function countDown() {
        var futureTime = new Date('2019/8/4 00:00:00');
        var currentTime = new Date();
        var leadTime = parseInt((futureTime - currentTime) / 1000); //秒
        var day = parseInt(leadTime / 86400); //天
        var hour = parseInt(leadTime % 86400 / 3600) //时
        var min = parseInt(leadTime % 3600 / 60);
        var sec = leadTime % 60;
        $('#timer').html('距活动结束：' + day + '天' + hour + '时' + min + '分' + sec + '秒');
    }
    countDown();
    setInterval(countDown, 1000);
    // console.log(new Date() - d1);
})();