//搜索引擎
var search = document.querySelector('.search_input');
var oUl = document.querySelector('.se');

function taobao(data) {
    var dataarr = data.result; //数组
    var strhtml = '';
    for (var i = 0; i < dataarr.length; i++) {
        strhtml += '<li><a "#">' + dataarr[i][0] + '</a></li>';
    }
    oUl.innerHTML = strhtml;
}

search.oninput = function() {
    var cScript = document.createElement('script');
    cScript.src = 'https://suggest.taobao.com/sug?code=utf-8&q=' + search.value + '&_ksTS=1555466772316_659&callback=taobao';
    document.body.appendChild(cScript);
};