(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-50565122"],{"02f4":function(t,e,r){var n=r("4588"),o=r("be13");t.exports=function(t){return function(e,r){var a,i,c=String(o(e)),l=n(r),u=c.length;return l<0||l>=u?t?"":void 0:(a=c.charCodeAt(l),a<55296||a>56319||l+1===u||(i=c.charCodeAt(l+1))<56320||i>57343?t?c.charAt(l):a:t?c.slice(l,l+2):i-56320+(a-55296<<10)+65536)}}},"0390":function(t,e,r){"use strict";var n=r("02f4")(!0);t.exports=function(t,e,r){return e+(r?n(t,e).length:1)}},"0bfb":function(t,e,r){"use strict";var n=r("cb7c");t.exports=function(){var t=n(this),e="";return t.global&&(e+="g"),t.ignoreCase&&(e+="i"),t.multiline&&(e+="m"),t.unicode&&(e+="u"),t.sticky&&(e+="y"),e}},"214f":function(t,e,r){"use strict";r("b0c5");var n=r("2aba"),o=r("32e9"),a=r("79e5"),i=r("be13"),c=r("2b4c"),l=r("520a"),u=c("species"),s=!a((function(){var t=/./;return t.exec=function(){var t=[];return t.groups={a:"7"},t},"7"!=="".replace(t,"$<a>")})),f=function(){var t=/(?:)/,e=t.exec;t.exec=function(){return e.apply(this,arguments)};var r="ab".split(t);return 2===r.length&&"a"===r[0]&&"b"===r[1]}();t.exports=function(t,e,r){var p=c(t),d=!a((function(){var e={};return e[p]=function(){return 7},7!=""[t](e)})),m=d?!a((function(){var e=!1,r=/a/;return r.exec=function(){return e=!0,null},"split"===t&&(r.constructor={},r.constructor[u]=function(){return r}),r[p](""),!e})):void 0;if(!d||!m||"replace"===t&&!s||"split"===t&&!f){var b=/./[p],v=r(i,p,""[t],(function(t,e,r,n,o){return e.exec===l?d&&!o?{done:!0,value:b.call(e,r,n)}:{done:!0,value:t.call(r,e,n)}:{done:!1}})),h=v[0],g=v[1];n(String.prototype,t,h),o(RegExp.prototype,p,2==e?function(t,e){return g.call(t,this,e)}:function(t){return g.call(t,this)})}}},"520a":function(t,e,r){"use strict";var n=r("0bfb"),o=RegExp.prototype.exec,a=String.prototype.replace,i=o,c="lastIndex",l=function(){var t=/a/,e=/b*/g;return o.call(t,"a"),o.call(e,"a"),0!==t[c]||0!==e[c]}(),u=void 0!==/()??/.exec("")[1],s=l||u;s&&(i=function(t){var e,r,i,s,f=this;return u&&(r=new RegExp("^"+f.source+"$(?!\\s)",n.call(f))),l&&(e=f[c]),i=o.call(f,t),l&&i&&(f[c]=f.global?i.index+i[0].length:e),u&&i&&i.length>1&&a.call(i[0],r,(function(){for(s=1;s<arguments.length-2;s++)void 0===arguments[s]&&(i[s]=void 0)})),i}),t.exports=i},"5e1c":function(t,e,r){},"5f1b":function(t,e,r){"use strict";var n=r("23c6"),o=RegExp.prototype.exec;t.exports=function(t,e){var r=t.exec;if("function"===typeof r){var a=r.call(t,e);if("object"!==typeof a)throw new TypeError("RegExp exec method returned something other than an Object or null");return a}if("RegExp"!==n(t))throw new TypeError("RegExp#exec called on incompatible receiver");return o.call(t,e)}},"7f7f":function(t,e,r){var n=r("86cc").f,o=Function.prototype,a=/^\s*function ([^ (]*)/,i="name";i in o||r("9e1e")&&n(o,i,{configurable:!0,get:function(){try{return(""+this).match(a)[1]}catch(t){return""}}})},a481:function(t,e,r){"use strict";var n=r("cb7c"),o=r("4bf8"),a=r("9def"),i=r("4588"),c=r("0390"),l=r("5f1b"),u=Math.max,s=Math.min,f=Math.floor,p=/\$([$&`']|\d\d?|<[^>]*>)/g,d=/\$([$&`']|\d\d?)/g,m=function(t){return void 0===t?t:String(t)};r("214f")("replace",2,(function(t,e,r,b){return[function(n,o){var a=t(this),i=void 0==n?void 0:n[e];return void 0!==i?i.call(n,a,o):r.call(String(a),n,o)},function(t,e){var o=b(r,t,this,e);if(o.done)return o.value;var f=n(t),p=String(this),d="function"===typeof e;d||(e=String(e));var h=f.global;if(h){var g=f.unicode;f.lastIndex=0}var x=[];while(1){var y=l(f,p);if(null===y)break;if(x.push(y),!h)break;var w=String(y[0]);""===w&&(f.lastIndex=c(p,a(f.lastIndex),g))}for(var O="",S=0,j=0;j<x.length;j++){y=x[j];for(var $=String(y[0]),E=u(s(i(y.index),p.length),0),k=[],P=1;P<y.length;P++)k.push(m(y[P]));var R=y.groups;if(d){var A=[$].concat(k,E,p);void 0!==R&&A.push(R);var D=String(e.apply(void 0,A))}else D=v($,p,E,k,R,e);E>=S&&(O+=p.slice(S,E)+D,S=E+$.length)}return O+p.slice(S)}];function v(t,e,n,a,i,c){var l=n+t.length,u=a.length,s=d;return void 0!==i&&(i=o(i),s=p),r.call(c,s,(function(r,o){var c;switch(o.charAt(0)){case"$":return"$";case"&":return t;case"`":return e.slice(0,n);case"'":return e.slice(l);case"<":c=i[o.slice(1,-1)];break;default:var s=+o;if(0===s)return r;if(s>u){var p=f(s/10);return 0===p?r:p<=u?void 0===a[p-1]?o.charAt(1):a[p-1]+o.charAt(1):r}c=a[s-1]}return void 0===c?"":c}))}}))},b0c5:function(t,e,r){"use strict";var n=r("520a");r("5ca1")({target:"RegExp",proto:!0,forced:n!==/./.exec},{exec:n})},d9c5:function(t,e,r){"use strict";r.r(e);var n=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("el-form",{staticClass:"form",attrs:{inline:!0,model:t.form,"label-width":"100px"},nativeOn:{submit:function(e){return e.preventDefault(),t.onSubmit(e)}}},[r("el-breadcrumb",{staticStyle:{"margin-bottom":"30px"},attrs:{separator:"/"}},[r("el-breadcrumb-item",{attrs:{to:"/"}},[t._v("工作台")]),r("el-breadcrumb-item",{attrs:{to:"/article/questionlist"}},[t._v("问题列表")]),r("el-breadcrumb-item",[t._v("详情")])],1),r("el-row",{attrs:{gutter:24}},[r("el-col",[r("el-form-item",{attrs:{label:"问题标题"}},[r("el-input",{attrs:{placeholder:"请输入商品标题"},model:{value:t.form.problem,callback:function(e){t.$set(t.form,"problem",e)},expression:"form.problem"}})],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"问题排序"}},[r("el-input",{attrs:{type:"number",placeholder:"请输入问题排序"},model:{value:t.form.sort,callback:function(e){t.$set(t.form,"sort",e)},expression:"form.sort"}})],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"问题分类"}},[r("el-select",{attrs:{placeholder:"请选择"},model:{value:t.form.pid,callback:function(e){t.$set(t.form,"pid",e)},expression:"form.pid"}},t._l(t.tagList,(function(t){return r("el-option",{key:t.id,attrs:{label:t.title,value:t.id}})})),1)],1)],1),r("el-col",[r("el-form-item",{staticStyle:{display:"flex"},attrs:{label:"答案"}},[r("el-input",{attrs:{size:"small",type:"textarea",rows:12,cols:40,placeholder:"请输入内容"},model:{value:t.form.content,callback:function(e){t.$set(t.form,"content",e)},expression:"form.content"}})],1)],1),r("el-col",[r("el-form-item",[r("el-button",{attrs:{type:"primary","native-type":"submit"}},[t._v("保存")])],1)],1)],1)],1)},o=[],a=(r("8e6e"),r("ac6a"),r("456d"),r("a481"),r("bd86")),i=(r("7f7f"),r("1c1e")),c=r("5c96");function l(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function u(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?l(r,!0).forEach((function(e){Object(a["a"])(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):l(r).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}var s={components:{},data:function(){return{config:[],file:[],form:{content:"",sort:"",pid:"",problem:""},tagList:[]}},computed:{ssid:function(){return localStorage.getItem("ssid")}},mounted:function(){var t=this,e=this.$router.history.current.params.id;e>0&&Object(i["a"])("article/problemanswer/view",{id:e}).then((function(e){t.form=e.data.view,t.config=e.data.config})),this.getTag()},methods:{getTag:function(){var t=this;Object(i["a"])("/article/problem/search").then((function(e){t.tagList=e.data.list,console.log(t.tagList)})).catch((function(t){c["Message"].error(t.msg)}))},fileSuccess1:function(t,e){this.file=[e],this.form.thumb=t.data.file},onDelct1:function(t,e){this.file1=e,this.form.thumb=e.map((function(t){return t.name}))},handleImageAdded:function(t,e,r,n){var o=new FormData;console.log(o),o.append("file",t),Object(i["a"])("/api/api/upload",o).then((function(t){var o=t.data.file;e.insertEmbed(r,"image",o),n()}))},onSubmit:function(){var t=this,e=this.$router.history.current.params.id;Object(i["a"])("/article/problemanswer/"+(e?"update":"create"),u({id:this.$router.history.current.params.id},this.form)).then((function(){c["Message"].success("操作成功"),t.$router.replace("/article/questionlist")}))}}},f=s,p=(r("ea59"),r("2877")),d=Object(p["a"])(f,n,o,!1,null,"07dd7ebe",null);e["default"]=d.exports},ea59:function(t,e,r){"use strict";var n=r("5e1c"),o=r.n(n);o.a}}]);
//# sourceMappingURL=chunk-50565122.a46f6890.js.map