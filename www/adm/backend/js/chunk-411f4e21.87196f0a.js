(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-411f4e21"],{"02f4":function(e,t,r){var l=r("4588"),a=r("be13");e.exports=function(e){return function(t,r){var o,n,i=String(a(t)),s=l(r),c=i.length;return s<0||s>=c?e?"":void 0:(o=i.charCodeAt(s),o<55296||o>56319||s+1===c||(n=i.charCodeAt(s+1))<56320||n>57343?e?i.charAt(s):o:e?i.slice(s,s+2):n-56320+(o-55296<<10)+65536)}}},"0390":function(e,t,r){"use strict";var l=r("02f4")(!0);e.exports=function(e,t,r){return t+(r?l(e,t).length:1)}},"05c9":function(e,t,r){},"0bfb":function(e,t,r){"use strict";var l=r("cb7c");e.exports=function(){var e=l(this),t="";return e.global&&(t+="g"),e.ignoreCase&&(t+="i"),e.multiline&&(t+="m"),e.unicode&&(t+="u"),e.sticky&&(t+="y"),t}},"214f":function(e,t,r){"use strict";r("b0c5");var l=r("2aba"),a=r("32e9"),o=r("79e5"),n=r("be13"),i=r("2b4c"),s=r("520a"),c=i("species"),m=!o((function(){var e=/./;return e.exec=function(){var e=[];return e.groups={a:"7"},e},"7"!=="".replace(e,"$<a>")})),u=function(){var e=/(?:)/,t=e.exec;e.exec=function(){return t.apply(this,arguments)};var r="ab".split(e);return 2===r.length&&"a"===r[0]&&"b"===r[1]}();e.exports=function(e,t,r){var p=i(e),f=!o((function(){var t={};return t[p]=function(){return 7},7!=""[e](t)})),d=f?!o((function(){var t=!1,r=/a/;return r.exec=function(){return t=!0,null},"split"===e&&(r.constructor={},r.constructor[c]=function(){return r}),r[p](""),!t})):void 0;if(!f||!d||"replace"===e&&!m||"split"===e&&!u){var v=/./[p],_=r(n,p,""[e],(function(e,t,r,l,a){return t.exec===s?f&&!a?{done:!0,value:v.call(t,r,l)}:{done:!0,value:e.call(r,t,l)}:{done:!1}})),b=_[0],h=_[1];l(String.prototype,e,b),a(RegExp.prototype,p,2==t?function(e,t){return h.call(e,this,t)}:function(e){return h.call(e,this)})}}},"520a":function(e,t,r){"use strict";var l=r("0bfb"),a=RegExp.prototype.exec,o=String.prototype.replace,n=a,i="lastIndex",s=function(){var e=/a/,t=/b*/g;return a.call(e,"a"),a.call(t,"a"),0!==e[i]||0!==t[i]}(),c=void 0!==/()??/.exec("")[1],m=s||c;m&&(n=function(e){var t,r,n,m,u=this;return c&&(r=new RegExp("^"+u.source+"$(?!\\s)",l.call(u))),s&&(t=u[i]),n=a.call(u,e),s&&n&&(u[i]=u.global?n.index+n[0].length:t),c&&n&&n.length>1&&o.call(n[0],r,(function(){for(m=1;m<arguments.length-2;m++)void 0===arguments[m]&&(n[m]=void 0)})),n}),e.exports=n},"5f1b":function(e,t,r){"use strict";var l=r("23c6"),a=RegExp.prototype.exec;e.exports=function(e,t){var r=e.exec;if("function"===typeof r){var o=r.call(e,t);if("object"!==typeof o)throw new TypeError("RegExp exec method returned something other than an Object or null");return o}if("RegExp"!==l(e))throw new TypeError("RegExp#exec called on incompatible receiver");return a.call(e,t)}},"929c":function(e,t,r){"use strict";r.r(t);var l=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",[r("el-breadcrumb",{staticStyle:{"margin-bottom":"50px"},attrs:{separator:"/"}},[r("el-breadcrumb-item",{attrs:{to:"/"}},[e._v("工作台")]),r("el-breadcrumb-item",{attrs:{to:"/itemdq/rule"}},[e._v("短期项目")]),r("el-breadcrumb-item",[e._v("设置")])],1),r("el-form",{staticClass:"form-search",attrs:{inline:!0,model:e.form},nativeOn:{submit:function(t){return t.preventDefault(),e.onSubmit(t)}}},[r("el-row",[r("el-col",[r("el-form-item",{attrs:{label:"项目名"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容"},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}}),r("el-input",{attrs:{size:"small",placeholder:"请输入内容（英文）"},model:{value:e.form.name_en,callback:function(t){e.$set(e.form,"name_en",t)},expression:"form.name_en"}}),r("el-input",{attrs:{size:"small",placeholder:"请输入内容（越南）"},model:{value:e.form.name_yn,callback:function(t){e.$set(e.form,"name_yn",t)},expression:"form.name_yn"}})],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"项目图片"}},[r("el-upload",{attrs:{limit:1,action:"/api/api/upload?ssid="+e.ssid(),"on-success":e.fileSuccess,"file-list":e.file,"list-type":"picture"}},[r("el-button",{attrs:{size:"small",type:"infor"}},[e._v("点击上传")]),r("div",{staticClass:"el-upload__tip",staticStyle:{color:"red"},attrs:{slot:"tip"},slot:"tip"},[e._v("\n              尺寸:宽750px 高:350px 格式:png、jpg、jpeg、gif\n            ")])],1)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"是否显示在首页"}},[r("el-select",{attrs:{size:"small",clearable:"",placeholder:"请选择"},model:{value:e.form.is_show_index,callback:function(t){e.$set(e.form,"is_show_index",t)},expression:"form.is_show_index"}},e._l(e.config.is_show_index,(function(e,t){return r("el-option",{key:e,attrs:{value:t,label:e}})})),1)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"类型"}},[r("el-select",{attrs:{size:"small",clearable:"",placeholder:"请选择"},model:{value:e.form.type,callback:function(t){e.$set(e.form,"type",t)},expression:"form.type"}},e._l(e.config.type,(function(e,t){return r("el-option",{key:e,attrs:{value:t,label:e}})})),1)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"状态"}},[r("el-select",{attrs:{size:"small",clearable:"",placeholder:"请选择"},model:{value:e.form.status,callback:function(t){e.$set(e.form,"status",t)},expression:"form.status"}},e._l(e.config.status,(function(e,t){return r("el-option",{key:e,attrs:{value:t,label:e}})})),1)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"排名"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容"},model:{value:e.form.sort,callback:function(t){e.$set(e.form,"sort",t)},expression:"form.sort"}},[r("template",{slot:"append"},[e._v("数字越大，排名越靠前")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"投资时长"}},[r("el-input",{attrs:{size:"small",type:"number",placeholder:"请输入内容"},model:{value:e.form.days,callback:function(t){e.$set(e.form,"days",t)},expression:"form.days"}},[r("template",{slot:"append"},[e._v("天")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"开始时间"}},[r("el-date-picker",{attrs:{type:"datetime",placeholder:"选择日期时间","default-time":"12:00:00"},model:{value:e.date,callback:function(t){e.date=t},expression:"date"}})],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"组件总数"}},[r("el-input",{attrs:{size:"small",type:"number",step:"1",placeholder:"请输入内容"},model:{value:e.form.stock,callback:function(t){e.$set(e.form,"stock",t)},expression:"form.stock"}},[r("template",{slot:"append"},[e._v("件")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"剩余组件"}},[r("el-input",{attrs:{size:"small",type:"number",step:"1",placeholder:"请输入内容"},model:{value:e.form.rem_count,callback:function(t){e.$set(e.form,"rem_count",t)},expression:"form.rem_count"}},[r("template",{slot:"append"},[e._v("件")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"利率"}},[r("el-input",{attrs:{size:"small",type:"number",step:"0.01",placeholder:"请输入内容"},model:{value:e.form.apr,callback:function(t){e.$set(e.form,"apr",t)},expression:"form.apr"}},[r("template",{slot:"append"},[e._v("%")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"红包额度"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容"},model:{value:e.form.pack,callback:function(t){e.$set(e.form,"pack",t)},expression:"form.pack"}},[r("template",{slot:"append"},[e._v("元")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"满N元得一红包"}},[r("el-input",{attrs:{size:"small",type:"number",step:"0.01",placeholder:"请输入内容"},model:{value:e.form.pack_money,callback:function(t){e.$set(e.form,"pack_money",t)},expression:"form.pack_money"}},[r("template",{slot:"append"},[e._v("元")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"最大可获得红包数"}},[r("el-input",{attrs:{size:"small",type:"number",step:"0",placeholder:"请输入内容"},model:{value:e.form.pack_max_num,callback:function(t){e.$set(e.form,"pack_max_num",t)},expression:"form.pack_max_num"}},[r("template",{slot:"append"},[e._v("个")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"上级分润"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容"},model:{value:e.form.top_apr,callback:function(t){e.$set(e.form,"top_apr",t)},expression:"form.top_apr"}},[r("template",{slot:"append"},[e._v("%")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"投资送抽奖次数"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容"},model:{value:e.form.prize_num,callback:function(t){e.$set(e.form,"prize_num",t)},expression:"form.prize_num"}},[r("template",{slot:"append"},[e._v("次")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"最大投资金额"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容"},model:{value:e.form.max_money,callback:function(t){e.$set(e.form,"max_money",t)},expression:"form.max_money"}},[r("template",{slot:"append"},[e._v("元")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"最小投资金额"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容"},model:{value:e.form.min_money,callback:function(t){e.$set(e.form,"min_money",t)},expression:"form.min_money"}},[r("template",{slot:"append"},[e._v("元")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"最大投资次数"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容"},model:{value:e.form.max_count,callback:function(t){e.$set(e.form,"max_count",t)},expression:"form.max_count"}},[r("template",{slot:"append"},[e._v("次")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"是否使用代金券"}},[r("el-switch",{attrs:{"active-color":"#13ce66","inactive-color":"#ff4949","active-text":"开启代金券","inactive-text":"关闭代金券"},on:{change:e.vouchersHandle},model:{value:e.is_open_v,callback:function(t){e.is_open_v=t},expression:"is_open_v"}})],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"代金券金额"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入内容",disabled:"Y"!=e.form.if_open_vouchers},model:{value:e.form.vouchers_money,callback:function(t){e.$set(e.form,"vouchers_money",t)},expression:"form.vouchers_money"}},[r("template",{slot:"append"},[e._v("元")])],2)],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"项目说明"}},[r("el-input",{attrs:{size:"small",type:"textarea",rows:12,cols:20,placeholder:"请输入内容"},model:{value:e.form.item_desc,callback:function(t){e.$set(e.form,"item_desc",t)},expression:"form.item_desc"}},[r("template",{slot:"append"})],2),r("el-input",{attrs:{size:"small",type:"textarea",rows:12,cols:20,placeholder:"请输入内容（英文）"},model:{value:e.form.item_desc_en,callback:function(t){e.$set(e.form,"item_desc_en",t)},expression:"form.item_desc_en"}},[r("template",{slot:"append"})],2),r("el-input",{attrs:{size:"small",type:"textarea",rows:12,cols:20,placeholder:"请输入内容（越南）"},model:{value:e.form.item_desc_yn,callback:function(t){e.$set(e.form,"item_desc_yn",t)},expression:"form.item_desc_yn"}},[r("template",{slot:"append"})],2)],1)],1),r("el-col",[r("el-button",{attrs:{"native-type":"submit",type:"primary"}},[e._v("提交")])],1)],1)],1)],1)},a=[],o=(r("8e6e"),r("ac6a"),r("456d"),r("a481"),r("bd86")),n=r("5c96"),i=r("1c1e");function s(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);t&&(l=l.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,l)}return r}function c(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?s(r,!0).forEach((function(t){Object(o["a"])(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):s(r).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}var m={data:function(){return{form:{prize_num:0,name:"",min_money:"",max_money:"",schedule:"",is_show_index:"N",apr:"",days:"",type:[],max_count:"",thumb:"",money:0,begin_time:0,if_open_vouchers:"N",vouchers_money:0,stock:0,name_en:"",name_yn:""},is_open_v:!1,config:{status:{},sound_list:{},type:{},is_low_risk:null},file:[],date:new Date}},mounted:function(){var e=this,t=this.$router.history.current.params.id,r="/item/dq/config";t&&(r="/item/dq/view"),Object(i["a"])(r,{id:t}).then((function(t){t.data.view?("Y"==t.data.view.if_open_vouchers?e.is_open_v=!0:e.is_open_v=!1,e.form=t.data.view,e.config=t.data.config,t.data.view.thumb&&(e.file=[{url:t.data.view.thumb,name:t.data.view.thumb}]),t.data.view.begin_time>0&&(e.date=new Date(1e3*parseInt(t.data.view.begin_time)))):e.config=t.data}))},methods:{ssid:function(){return localStorage.getItem("ssid")},vouchersHandle:function(e){e?(this.form.if_open_vouchers="Y",this.is_open_v=!0,this.form.if_open_vouchers_name="是"):(this.form.if_open_vouchers="N",this.is_open_v=!1,this.form.if_open_vouchers_name="否")},onSubmit:function(){var e=this,t=this.$router.history.current.params.id,r="/item/dq/create";t&&(r="/item/dq/update"),this.form.begin_time=Date.parse(this.date)/1e3,Object(i["a"])(r,c({id:this.$router.history.current.params.id},this.form)).then((function(){n["Message"].success("操作成功"),e.$router.replace("/itemdq/rule")}))},fileSuccess:function(e,t){this.file=[t],this.form.thumb=e.data.file}}},u=m,p=(r("a5e8"),r("2877")),f=Object(p["a"])(u,l,a,!1,null,"2afcc518",null);t["default"]=f.exports},a481:function(e,t,r){"use strict";var l=r("cb7c"),a=r("4bf8"),o=r("9def"),n=r("4588"),i=r("0390"),s=r("5f1b"),c=Math.max,m=Math.min,u=Math.floor,p=/\$([$&`']|\d\d?|<[^>]*>)/g,f=/\$([$&`']|\d\d?)/g,d=function(e){return void 0===e?e:String(e)};r("214f")("replace",2,(function(e,t,r,v){return[function(l,a){var o=e(this),n=void 0==l?void 0:l[t];return void 0!==n?n.call(l,o,a):r.call(String(o),l,a)},function(e,t){var a=v(r,e,this,t);if(a.done)return a.value;var u=l(e),p=String(this),f="function"===typeof t;f||(t=String(t));var b=u.global;if(b){var h=u.unicode;u.lastIndex=0}var x=[];while(1){var y=s(u,p);if(null===y)break;if(x.push(y),!b)break;var g=String(y[0]);""===g&&(u.lastIndex=i(p,o(u.lastIndex),h))}for(var k="",w=0,$=0;$<x.length;$++){y=x[$];for(var z=String(y[0]),O=c(m(n(y.index),p.length),0),S=[],j=1;j<y.length;j++)S.push(d(y[j]));var E=y.groups;if(f){var D=[z].concat(S,O,p);void 0!==E&&D.push(E);var P=String(t.apply(void 0,D))}else P=_(z,p,O,S,E,t);O>=w&&(k+=p.slice(w,O)+P,w=O+z.length)}return k+p.slice(w)}];function _(e,t,l,o,n,i){var s=l+e.length,c=o.length,m=f;return void 0!==n&&(n=a(n),m=p),r.call(i,m,(function(r,a){var i;switch(a.charAt(0)){case"$":return"$";case"&":return e;case"`":return t.slice(0,l);case"'":return t.slice(s);case"<":i=n[a.slice(1,-1)];break;default:var m=+a;if(0===m)return r;if(m>c){var p=u(m/10);return 0===p?r:p<=c?void 0===o[p-1]?a.charAt(1):o[p-1]+a.charAt(1):r}i=o[m-1]}return void 0===i?"":i}))}}))},a5e8:function(e,t,r){"use strict";var l=r("05c9"),a=r.n(l);a.a},b0c5:function(e,t,r){"use strict";var l=r("520a");r("5ca1")({target:"RegExp",proto:!0,forced:l!==/./.exec},{exec:l})}}]);
//# sourceMappingURL=chunk-411f4e21.87196f0a.js.map