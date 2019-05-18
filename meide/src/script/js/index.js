//轮播图
(function() {
    //1.获取元素

    var $oLunbo = $('.lunbo');
    var $picUl = $('.lunbo ul');
    var $picLi = $('.lunbo ul li');
    var $btnLi = $('.lunbo ol li');
    var $btnLeft = $('.lt_left');
    var $btnRight = $('.gt_right');
    var $bstop = true;
    var img = document.querySelectorAll('.lunbo ul li');
    var ulimg = document.querySelector('.lunbo ul');
    var $num = 0;
    //对布局里面首尾图片进行克隆，然后追加
    var firstPic = img[0].cloneNode(true);
    var lastPic = img[img.length - 1].cloneNode(true);
    ulimg.appendChild(firstPic);
    ulimg.insertBefore(lastPic, img[0]);


    // $($picLi[0]).clone().prepend('.lunbo ul');
    // $($picLi[$($picLi.length) - 1]).clone().prepend('.lunbo ul');
    // $($picLi[0]).clone().append($picUl);

    //ul赋值宽度，让所有的li排成一行。
    $picLi = $('.lunbo ul li'); //7

    var $liWidth = $($picLi[0]).outerWidth(); //1个li的宽度
    $picUl.css({ "width": $liWidth * $picLi.length + 'px' });
    $picUl.css({ "left": -$liWidth + 'px' });
    // 给小圆圈添加点击事件
    $btnLi.on('mousemove', function() {
        $(this).addClass('active').siblings().removeClass('active');
        var $num = $btnLi.index($(this));
        $($picUl).stop(true).animate({
            left: -($num) * $liWidth
        });
    });
    //封装切换过程。
    function tabSwitch() {
        var $index = $btnLi.index($(this));
        $($btnLi[$index]).removeClass('active');
        $($picUl).stop(true).animate({
            left: -($num + 1) * $liWidth
        }, function() {

            if ($picUl.offset().left <= -$liWidth * ($btnLi.length)) {
                $picUl.css({ "left": -$liWidth + 'px' });
                $num = 0;
            }

            if ($picUl.offset().left >= 0) {
                // if ($num < 0) {
                $picUl.css({ "left": -$liWidth * $btnLi.length + 'px' });
                $num = $btnLi.length - 1;
            }
            $bstop = true;
        });

    }


    //左右箭头显示与隐藏
    $oLunbo.on('mouseover', function() {
        $btnLeft.show();
        $btnRight.show();
        clearInterval(timer);
    });
    $oLunbo.on('mouseout', function() {
        $btnLeft.hide();
        $btnRight.hide();
        timer = setInterval(function() {
            $btnRight.on('click', function() {
                if ($bstop) {
                    $bstop = false;
                    $num++;
                    tabSwitch();
                    if ($num == $btnLi.length) {
                        $($btnLi[0]).addClass('active').siblings().removeClass('active');;
                    } else {
                        $($btnLi[$num]).addClass('active').siblings().removeClass('active');;
                    }
                }

            }());
        }, 2000);
    });
    //右箭头添加点击事件
    $btnRight.on('click', function() {


        if ($bstop) {
            $bstop = false;
            $num++;
            tabSwitch();
            if ($num == $btnLi.length) {
                $($btnLi[0]).addClass('active').siblings().removeClass('active');;
            } else {
                $($btnLi[$num]).addClass('active').siblings().removeClass('active');;
            }
        }
    });

    //左箭头添加点击事件
    $btnLeft.on('click', function() {

        if ($bstop) {
            $bstop = false;
            $num--;
            tabSwitch();
            if ($num < 0) {
                $($btnLi[$btnLi.length - 1]).addClass('active').siblings().removeClass('active');
            } else {
                $($btnLi[$num]).addClass('active').siblings().removeClass('active');
            }
        }
    });
    //定时器
    timer = setInterval(function() {
        $btnRight.on('click', function() {

            if ($bstop) {
                $bstop = false;
                $num++;
                tabSwitch();
                if ($num == $btnLi.length) {
                    $($btnLi[0]).addClass('active').siblings().removeClass('active');;
                } else {
                    $($btnLi[$num]).addClass('active').siblings().removeClass('active');;
                }
            }
        }());
    }, 2000);
})();
//数据渲染
(function() {
    $.ajax({
        url: '../php/pic.php',
        dataType: 'json',
        success: function(data) {
            // console.log(data);
            var $htmlStr = '';
            $.each(data, function(index, value) {
                $htmlStr += `
                <li>
                        <a href="details.html?sid=${value.sid}">
                            <img class="lazy" data-original="${value.url}" alt="" >
                            <span>${value.title}</span><br/>
                            <span>￥${value.price}</span>
                        </a>
                    </li>
                `;
            });

            $('.product_list1 ul').html($htmlStr);
            $(function() {
                $("img.lazy").lazyload({
                    effect: "fadeIn"
                });
            });
        }
    });
})();