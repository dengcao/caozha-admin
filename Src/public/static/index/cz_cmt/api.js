try {
    extendRoot
} catch (e) {
    var js = document.scripts;
    extendRoot = js[js.length - 1].src.substring(0, js[js.length - 1].src.lastIndexOf("/") + 1)
}

function includeFile(file, callback) {
    if (callback == 'css') {
        var fileref = document.createElement('link');
        fileref.setAttribute("rel", "stylesheet");
        fileref.setAttribute("type", "text/css");
        fileref.setAttribute("href", file)
    } else {
        var fileref = document.createElement('script');
        fileref.setAttribute('src', file);
        fileref.setAttribute('type', 'text/javascript');
        fileref.onload = fileref.onreadystatechange = function () {
            if (!this.readyState || this.readyState === 'loaded' || this.readyState === 'complete') {
                if (callback && typeof callback === "function") {
                    callback()
                }
                fileref.onload = fileref.onreadystatechange = null
            }
        }
    }
    if (typeof fileref != "undefined") {
        document.getElementsByTagName("head")[0].appendChild(fileref)
    }
}

function withjQuery(callback) {
    if (!(window.jQuery)) {
        var js = document.createElement('script');
        js.setAttribute('src', extendRoot + '/assets/jquery.min.js');
        js.setAttribute('type', 'text/javascript');
        js.onload = js.onreadystatechange = function () {
            if (!this.readyState || this.readyState === 'loaded' || this.readyState === 'complete') {
                if (callback && typeof callback === "function") {
                    callback()
                }
                js.onload = js.onreadystatechange = null
            }
        };
        document.getElementsByTagName('head')[0].appendChild(js)
    } else {
        if (callback && typeof callback === "function") {
            callback()
        }
    }
}

withjQuery(function () {
    $(function () {
        includeFile(extendRoot + 'assets/hd.js?v=1', function () {
            includeFile(extendRoot + 'assets/caozha.js?v=1', function () {
                includeFile(extendRoot + 'assets/style.css', 'css');
                var params = {
                    scrollload: '',
                    scroll: '',
                    scrollbottom: '',
                    pagination: '',
                    pageline: '',
                    pagefirst: '',
                    pagelast: '',
                    pageskip: '',
                    pagesize: '',
                    showhot: '',
                    hotpagesize: '',
                    catid: '',
                    cmtid: '',
                };
                for (var i in params) {
                    params[i] = $('.pl-520am').data(i)
                }
                try {
                    caozha.init($.extend({}, caozhaConfig, params))
                } catch (e) {
                    caozha.init(params)
                }
            })
        })
    })
});