(function() {
    function goodslist(id, count) {
        $.ajax({
            url: 'http://10.31.163.21/project/csh/1902chenshaohua/meide/php/pic.php', //获取所有的接口数据
            dataType: 'json'
        }).done(function(data) {
            $.each(data, function(index, value) {
                if (id == value.sid) { //遍历判断sid和传入的sid是否相同，方便将那条数据设置到渲染的商品列表中。
                    var $clonebox = $('.item_product:hidden').clone(true, true);
                    $clonebox.find('.product_pic').find('img').attr('src', value.url);
                    $clonebox.find('.product_pic').find('img').attr('sid', value.sid);
                    $clonebox.find('.product_xinxi').find('a').html(value.title);
                    $clonebox.find('.product_price').find('.danjia').html(value.price);
                    $clonebox.find('.product_num').find('input').val(count);
                    $clonebox.find('.product_guige').find('span').html(value.guige)
                        //计算每个商品的价格。
                    $clonebox.find('.product_sum').find('.sum').html((value.price * count).toFixed(2));
                    $clonebox.css('display', 'block');
                    $('.cart_item').append($clonebox);
                    priceall(); //计算总价的
                }
            });
        })
    }
    //获取cookie，执行渲染列表的函数
    if (getCookie('cookiesid') && getCookie('cookienum')) {
        var s = getCookie('cookiesid').split(','); //数组sid
        var n = getCookie('cookienum').split(','); //数组num
        $.each(s, function(i, value) {
            goodslist(s[i], n[i]);
        });
    }
    //如果购物车为空，显示cart_none盒子(购物车空空的)
    kong();

    function kong() {
        if (getCookie('cookiesid') && getCookie('cookienum')) {
            $('.cart_none').hide(); //cookie存在，购物车有商品，隐藏盒子。
        } else {
            $('.cart_none').show();
        }
    }
    //计算总价和总的商品件数，必须是选中的商品。
    function priceall() {
        var $sum = 0;
        var $count = 0;
        $('.item_product:visible').each(function(index, element) {
            if ($(element).find('.checkedbox input').prop('checked')) {
                $sum += parseInt($(element).find('.duoshao').find('input').val());
                $count += parseFloat($(element).find('.product_sum').find('.sum').html());
            }
        });

        $('.right_choose').find('i').html($sum);
        $('.right_sum').html('合计：' + '<i>' + $count.toFixed(2) + '</i>');
    }

    //全选操作
    $('.allchecked').on('change', function() {
        $('.item_product:visible').find(':checkbox').prop('checked', $(this).prop('checked'));
        $('.allchecked').prop('checked', $(this).prop('checked'));
        priceall(); //取消选项，重算总和。
    });

    var $inputs = $('.item_product:visible').find(':checkbox');
    $('.cart_item').on('change', $inputs, function() { //事件的委托的this指向被委托的元素
        if ($('.item_product:visible').find('input:checkbox').length == $('.item_product:visible').find('input:checked').size()) {
            $('.allchecked').prop('checked', true);
        } else {
            $('.allchecked').prop('checked', false);
        }
        priceall(); //取消选项，重算总和。
    });


    //数量的改变
    //改变商品数量++
    $('.add').on('click', function() {
        var $count = $(this).parents('.item_product').find('.duoshao  input').val(); //值
        $count++;
        if ($count >= 99) {
            $count = 99;
        }
        $(this).parents('.item_product').find('.duoshao input').val($count); //赋值回去
        $(this).parents('.item_product').find('.product_sum').find('.sum').html(singlegoodsprice($(this))); //改变后的价格
        priceall(); //重新计算总和。
        setCookie($(this)); //将改变的数量重新添加到cookie

    });

    //改变商品数量--
    $('.down').on('click', function() {
        var $count = $(this).parents('.item_product').find('.duoshao  input').val();
        $count--;
        if ($count <= 1) {
            $count = 1;
        }
        $(this).parents('.item_product').find('.duoshao  input').val($count);
        $(this).parents('.item_product').find('.product_sum').find('.sum').html(singlegoodsprice($(this))); //改变后的价格
        priceall();
        setCookie($(this));
    });
    //直接输入改变数量
    $('.duoshao input').on('input', function() {
        var $reg = /^\d+$/g; //只能输入数字
        var $value = parseInt($(this).val());
        if ($reg.test($value)) { //是数字
            if ($value >= 99) { //限定范围
                $(this).val(99);
            } else if ($value <= 0) {
                $(this).val(1);
            } else {
                $(this).val($value);
            }
        } else { //不是数字
            $(this).val(1);
        }
        $(this).parents('.item_product').find('.product_sum').find('.sum').html(singlegoodsprice($(this))); //改变后的价格
        priceall();
        setCookie($(this));
    });

    //计算数量改变后单个商品的价格
    function singlegoodsprice(obj) { //obj:当前元素
        var $dj = parseFloat(obj.parents('.item_product').find('.product_price').find('.danjia').html()); //单价
        var $cnum = parseInt(obj.parents('.item_product').find('.product_num input').val()); //数量
        return ($dj * $cnum).toFixed(2); //结果
    }

    //将改变后的数量的值存放到cookie
    //点击按钮将商品的数量和id存放cookie中
    var arrsid = []; //商品的id
    var arrnum = []; //商品的数量
    //提前获取cookie里面id和num
    function cookietoarray() {
        if (getCookie('cookiesid') && getCookie('cookienum')) {
            arrsid = getCookie('cookiesid').split(','); //cookie商品的sid  
            arrnum = getCookie('cookienum').split(','); //cookie商品的num
        }
    }

    function setCookie(obj) { //obj:当前操作的对象
        cookietoarray(); //得到数组
        var $index = obj.parents('.item_product').find('img').attr('sid'); //通过id找数量的位置
        arrnum[$.inArray($index, arrsid)] = obj.parents('.item_product').find('.product_num input').val();
        addCookie('cookienum', arrnum.toString(), 7);
    }

    //删除cookie
    function delgoodslist(sid, arrsid) { //sid：当前删除的sid，arrsid:cookie的sid的值
        var $index = -1;
        $.each(arrsid, function(index, value) { //删除的sid对应的索引位置。 index:数组项的索引
            if (sid == value) {
                $index = index; //如果传入的值和数组的值相同，返回值对应的索引。
            }
        });
        arrsid.splice($index, 1); //删除数组对应的值
        arrnum.splice($index, 1); //删除数组对应的值
        addCookie('cookiesid', arrsid.toString(), 7); //添加cookie
        addCookie('cookienum', arrnum.toString(), 7); //添加cookie
    }
    //删除单个商品的函数(委托)
    $('.item_product').on('click', '.product_caozuo .delete', function(ev) {
        cookietoarray(); //得到数组,上面的删除cookie需要。
        if (confirm('你确定要删除吗？')) {

            $(this).first().parents('.product_lists').remove(); //通过当前点击的元素找到整个一行列表，删除
            kong();
        }
        delgoodslist($(this).first().parents('.product_lists').find('img').attr('sid'), arrsid);
        priceall();

    });
    //删除全部商品的函数
    $('.del span').on('click', function() {
        cookietoarray(); //得到数组,上面的删除cookie需要。
        if (confirm('你确定要全部删除吗？')) {
            $('.item_product:visible').each(function() {
                if ($(this).find('input:checkbox').is(':checked')) { //复选框一定是选中的
                    $(this).remove();
                    delgoodslist($(this).find('img').attr('sid'), arrsid);
                }
            });
            priceall();
            kong();
        }
    });
})();