(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-6a2ada77"],{"0042":function(t,e,a){},"0a6d":function(t,e,a){"use strict";a.r(e);var n=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("el-button",{staticStyle:{"margin-left":"8px"},attrs:{type:"success"},on:{click:function(e){t.dialogFormVisible=!0}}},[t._v("添加/修改问题分类")]),a("el-button",{staticStyle:{"margin-left":"8px"},attrs:{type:"success"},on:{click:function(e){return t.$router.push("/article/questioncreate")}}},[t._v("新建问题")]),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:t.loading,expression:"loading"}],staticClass:"list",attrs:{data:t.tableData}},[a("el-table-column",{attrs:{prop:"id",label:"编号",align:"center",width:"80"}}),a("el-table-column",{attrs:{prop:"problem",label:"标题",align:"center",width:"240"}}),a("el-table-column",{attrs:{prop:"content",label:"内容",align:"center",width:"90"}}),a("el-table-column",{attrs:{prop:"category",label:"文章类型",align:"center"}}),a("el-table-column",{attrs:{prop:"sort",label:"排序",align:"center"}}),a("el-table-column",{attrs:{prop:"uptime_date",label:"更新时间",align:"center"}}),a("el-table-column",{attrs:{prop:"addtime_date",label:"添加时间",align:"center"}}),a("el-table-column",{attrs:{prop:"address",align:"center",label:"操作",width:"150"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{attrs:{type:"primary",size:"small"},on:{click:function(a){return t.editItem(e.row)}}},[t._v("编辑")])]}}])})],1),a("el-pagination",{staticClass:"pagination",attrs:{background:"",layout:"total, prev, pager, next",total:t.count,"current-page":t.page_curren,"hide-on-single-page":!1},on:{"current-change":t.currentChange}}),a("el-dialog",{attrs:{title:"问题类目详情",visible:t.dialogFormVisible,width:"70%"},on:{"update:visible":function(e){t.dialogFormVisible=e}}},[a("el-table",{attrs:{data:t.tagList}},[a("el-table-column",{attrs:{prop:"id",label:"编号",align:"center"}}),a("el-table-column",{attrs:{prop:"title",align:"center",label:"分类"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-input",{attrs:{type:"text",placeholder:"请输入标签类型"},model:{value:e.row.title,callback:function(a){t.$set(e.row,"title",a)},expression:"scope.row.title"}})]}}])}),a("el-table-column",{attrs:{prop:"sort",align:"center",label:"排序"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-input",{attrs:{type:"number",placeholder:"请输入问题排序"},model:{value:e.row.sort,callback:function(a){t.$set(e.row,"sort",a)},expression:"scope.row.sort"}})]}}])}),a("el-table-column",{attrs:{prop:"address",align:"center",label:"操作"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{attrs:{type:"primary",size:"small"},on:{click:function(a){return t.updateRow(e.row)}}},[t._v("确认")])]}}])})],1),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{type:"primary"},on:{click:t.addTag}},[t._v("增加问题类目")])],1)],1)],1)},r=[],o=(a("8e6e"),a("ac6a"),a("456d"),a("bd86")),i=a("5c96"),l=a("1c1e");function c(t,e){var a=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),a.push.apply(a,n)}return a}function s(t){for(var e=1;e<arguments.length;e++){var a=null!=arguments[e]?arguments[e]:{};e%2?c(a,!0).forEach((function(e){Object(o["a"])(t,e,a[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(a)):c(a).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(a,e))}))}return t}var u={data:function(){return{dialogFormVisible:!1,loading:!1,tableData:[],count:0,page_curren:1,addtime:[],tagList:[]}},mounted:function(){this.getTag(),this.FetchList()},methods:{updateRow:function(t){var e=this;console.log(t),Object(l["a"])("/article/problem/"+(t.id?"update":"create"),s({},t)).then((function(){e.$message({message:"标签"+(t.id?"修改":"创建")+"成功",type:"success"}),e.getTag(),e.FetchList()}))},addTag:function(){this.tagList.push({id:"",title:"",sort:""})},getTag:function(){var t=this;Object(l["a"])("/article/problem/search").then((function(e){t.tagList=e.data.list})).catch((function(t){i["Message"].error(t.msg)}))},FetchList:function(){var t=this;this.loading=!0,Object(l["a"])("/article/problemanswer/search").then((function(e){t.tableData=e.data.list,t.count=e.data.count,t.page_curren=Math.floor(e.data.page_curren)})).catch((function(t){i["Message"].error(t.msg)})),this.loading=!1},currentChange:function(t){this.page_curren=t,this.FetchList()},onSubmit:function(){this.page_curren=1,this.FetchList()},editItem:function(t){this.$router.push("/article/questionedit/"+t.id)},removeItem:function(t){var e=this;this.$confirm("是否确认删除此条数据?",void 0,{type:"warning",beforeClose:function(a,n,r){"confirm"===a?(n.confirmButtonLoading=!0,Object(l["a"])("/article/art/remove",{id:t.id}).then((function(){n.confirmButtonLoading=!1,i["Message"].success("删除成功"),r(),e.FetchList()})).catch((function(){n.confirmButtonLoading=!1,i["Message"].error("删除失败")}))):r()}})}}},p=u,d=(a("a321"),a("2877")),g=Object(d["a"])(p,n,r,!1,null,"04d0368d",null);e["default"]=g.exports},a321:function(t,e,a){"use strict";var n=a("0042"),r=a.n(n);r.a}}]);
//# sourceMappingURL=chunk-6a2ada77.72bcb2ea.js.map