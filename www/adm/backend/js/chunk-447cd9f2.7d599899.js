(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-447cd9f2"],{"54f6":function(e,t,r){"use strict";r.r(t);var n=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("el-form",{staticClass:"form",attrs:{inline:!0,model:e.form,"label-width":"100px"},nativeOn:{submit:function(t){return t.preventDefault(),e.onSubmit(t)}}},[r("el-breadcrumb",{staticStyle:{"margin-bottom":"30px"},attrs:{separator:"/"}},[r("el-breadcrumb-item",{attrs:{to:"/"}},[e._v("工作台")]),r("el-breadcrumb-item",{attrs:{to:"/notice"}},[e._v("消息列表")]),r("el-breadcrumb-item",[e._v("详情")])],1),r("el-row",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{gutter:24}},[r("el-col",[r("el-form-item",{attrs:{label:"名称"}},[r("el-input",{attrs:{placeholder:"请输入名称"},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1)],1),r("el-col",[r("el-form-item",{attrs:{label:"用户手机号"}},[r("el-input",{attrs:{placeholder:"请输入内容"},model:{value:e.form.mobile,callback:function(t){e.$set(e.form,"mobile",t)},expression:"form.mobile"}})],1)],1),r("el-col",[r("el-form-item",{staticStyle:{display:"flex"},attrs:{label:"内容"}},[r("vue-editor",{staticStyle:{flex:"1"},attrs:{useCustomImageHandler:""},on:{imageAdded:e.handleImageAdded},model:{value:e.form.content,callback:function(t){e.$set(e.form,"content",t)},expression:"form.content"}})],1)],1),r("el-col",[r("el-form-item",[r("el-button",{attrs:{type:"primary","native-type":"submit"}},[e._v("保存")])],1)],1)],1)],1)},o=[],a=(r("8e6e"),r("ac6a"),r("456d"),r("bd86")),i=r("1c1e"),l=r("5c96"),c=r("5873");function s(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function u(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?s(r,!0).forEach((function(t){Object(a["a"])(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):s(r).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}var m={components:{VueEditor:c["a"]},data:function(){return{loading:!1,form:{title:"",content:"",type:"user"}}},computed:{ssid:function(){return localStorage.getItem("ssid")}},mounted:function(){},methods:{handleImageAdded:function(e,t,r,n){var o=new FormData;o.append("file",e),Object(i["a"])("/api/api/upload",o).then((function(e){var o=e.data.file;t.insertEmbed(r,"image",o),n()}))},onSubmit:function(){var e=this;this.loading=!0;var t=this.$router.history.current.params.id;Object(i["a"])("/user/notice/"+(t?"update":"create"),u({id:this.$router.history.current.params.id},this.form)).then((function(){e.loading=!1,l["Message"].success("操作成功"),e.$router.go(-1)})).catch((function(){e.loading=!1}))}}},d=m,f=(r("9275"),r("2877")),p=Object(f["a"])(d,n,o,!1,null,"0753382a",null);t["default"]=p.exports},"7a71":function(e,t,r){},9275:function(e,t,r){"use strict";var n=r("7a71"),o=r.n(n);o.a}}]);
//# sourceMappingURL=chunk-447cd9f2.7d599899.js.map