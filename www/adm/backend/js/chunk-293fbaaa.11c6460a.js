(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-293fbaaa"],{"0384":function(e,t,a){},7029:function(e,t,a){"use strict";var r=a("0384"),i=a.n(r);i.a},db00:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("el-form",{staticClass:"form",attrs:{inline:!0,model:e.form,"label-width":"100px"},nativeOn:{submit:function(t){return t.preventDefault(),e.onSubmit(t)}}},[a("el-breadcrumb",{staticStyle:{"margin-bottom":"30px"},attrs:{separator:"/"}},[a("el-breadcrumb-item",{attrs:{to:"/"}},[e._v("工作台")]),a("el-breadcrumb-item",[a("a",{on:{click:e.back}},[e._v("分享列表")])]),a("el-breadcrumb-item",[e._v("详情")])],1),a("el-row",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{gutter:24}},[a("el-col",[a("el-form-item",{attrs:{label:"名称"}},[a("el-input",{attrs:{placeholder:"请输入名称"},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1)],1),a("el-col",[a("el-form-item",{attrs:{label:"排序"}},[a("el-input",{attrs:{placeholder:"请输入内容"},model:{value:e.form.sort,callback:function(t){e.$set(e.form,"sort",t)},expression:"form.sort"}})],1)],1),a("el-col",[a("el-form-item",{attrs:{label:"奖励"}},[a("el-input",{attrs:{type:"number",step:"1",placeholder:"请输入肥料数量"},model:{value:e.form.money,callback:function(t){e.$set(e.form,"money",t)},expression:"form.money"}})],1)],1),a("el-col",[a("el-form-item",{attrs:{label:"是否开启"}},[a("el-select",{attrs:{size:"small",clearable:"",placeholder:"请选择"},model:{value:e.form.status,callback:function(t){e.$set(e.form,"status",t)},expression:"form.status"}},[a("el-option",{attrs:{value:"Y",label:"是"}}),a("el-option",{attrs:{value:"N",label:"否"}})],1)],1)],1),a("el-col",[a("el-form-item",{attrs:{label:"图片"}},[a("el-upload",{attrs:{limit:1,action:"/api/api/upload?ssid="+e.ssid,"on-success":e.fileSuccess,"file-list":e.file,"list-type":"picture"}},[a("el-button",{attrs:{size:"small",type:"infor"}},[e._v("点击上传")]),a("div",{staticClass:"el-upload__tip",staticStyle:{color:"red"},attrs:{slot:"tip"},slot:"tip"},[e._v("\n            "+e._s(e.imageRemark)+"\n          ")])],1)],1)],1),a("el-col",[a("el-form-item",{attrs:{label:"截图示例"}},[a("el-upload",{attrs:{limit:1,action:"/api/api/upload?ssid="+e.ssid,"on-success":e.imageSuccess,"file-list":e.image,"list-type":"picture"}},[a("el-button",{attrs:{size:"small",type:"infor"}},[e._v("点击上传")]),a("div",{staticClass:"el-upload__tip",staticStyle:{color:"red"},attrs:{slot:"tip"},slot:"tip"},[e._v("\n            尺寸:宽720px 高:1280px 格式:png、jpg、jpeg、gif\n          ")])],1)],1)],1),a("el-col",[a("el-form-item",[a("el-button",{attrs:{type:"primary","native-type":"submit"}},[e._v("保存")])],1)],1)],1)],1)},i=[],l=(a("8e6e"),a("ac6a"),a("456d"),a("bd86")),o=a("1c1e"),s=a("5c96");function n(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function c(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?n(a,!0).forEach((function(t){Object(l["a"])(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):n(a).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}var u={data:function(){return{loading:!1,form:{status:"Y",sort:0,url:"/",thumb:""},image:[],file:[],type:"banner",imageRemark:"尺寸:宽750px 高:300px 格式:png、jpg、jpeg、gif"}},computed:{ssid:function(){return localStorage.getItem("ssid")}},mounted:function(){var e=this,t=this.$router.history.current.params.id;t&&(this.loading=!0,Object(o["a"])("/user/jz/view",{id:t}).then((function(t){e.form=t.data.view,t.data.view.thumb&&(e.file=[{name:t.data.view.thumb,url:t.data.view.thumb}]),t.data.view.image&&(e.image=[{name:t.data.view.image,url:t.data.view.image}]),e.loading=!1})))},methods:{back:function(){this.$router.back()},imageSuccess:function(e){this.form.image=e.data.file},fileSuccess:function(e){this.form.thumb=e.data.file},onSubmit:function(){var e=this;this.loading=!0;var t=this.$router.history.current.params.id;Object(o["a"])("/user/jz/"+(t?"update":"create"),c({id:this.$router.history.current.params.id},this.form)).then((function(){e.loading=!1,s["Message"].success("操作成功"),e.$router.go(-1)})).catch((function(){s["Message"].error("操作失败"),e.loading=!1}))}}},m=u,p=(a("7029"),a("2877")),f=Object(p["a"])(m,r,i,!1,null,"07eacb0e",null);t["default"]=f.exports}}]);
//# sourceMappingURL=chunk-293fbaaa.11c6460a.js.map