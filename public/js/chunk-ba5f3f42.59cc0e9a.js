(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-ba5f3f42"],{"505d":function(t,e,a){},"578a":function(t,e,a){"use strict";var s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"forms"},[a("div",[t._v(" "+t._s(t.message)+" ")]),a("div",{staticClass:"login br-l"},[a("h2",[t._v("Вход")]),a("div",{staticClass:"mb-2"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.lemail,expression:"lemail"}],attrs:{type:"text",placeholder:"Email"},domProps:{value:t.lemail},on:{input:function(e){e.target.composing||(t.lemail=e.target.value)}}})]),a("div",{staticClass:"mb-2"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.lpassword,expression:"lpassword"}],attrs:{type:"password",placeholder:"Пароль"},domProps:{value:t.lpassword},on:{input:function(e){e.target.composing||(t.lpassword=e.target.value)}}})]),a("button",{attrs:{type:"submit"},on:{click:function(e){return t.login()}}},[t._v("Вход")])]),a("div",{staticClass:"login"},[a("h2",[t._v("Регистрация")]),a("div",{staticClass:"mb-2"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.name,expression:"name"}],attrs:{type:"text",placeholder:"Имя"},domProps:{value:t.name},on:{input:function(e){e.target.composing||(t.name=e.target.value)}}})]),a("div",{staticClass:"mb-2"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.email,expression:"email"}],attrs:{type:"text",placeholder:"Email"},domProps:{value:t.email},on:{input:function(e){e.target.composing||(t.email=e.target.value)}}})]),a("div",{staticClass:"mb-2"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.password,expression:"password"}],attrs:{type:"password",placeholder:"Пароль"},domProps:{value:t.password},on:{input:function(e){e.target.composing||(t.password=e.target.value)}}})]),a("div",{staticClass:"mb-2"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.spassword,expression:"spassword"}],attrs:{type:"password",placeholder:"Повторите пароль"},domProps:{value:t.spassword},on:{input:function(e){e.target.composing||(t.spassword=e.target.value)}}})]),a("button",{attrs:{type:"submit"},on:{click:function(e){return t.register()}}},[t._v("Регистрация")])])])},n=[],i=(a("b0c0"),{name:"Login",data:function(){return{message:"",name:"",spassword:"",email:"",password:"",lemail:"",lpassword:""}},methods:{login:function(){var t=this;if(!(this.lemail.length<1&&this.lpassword.length<1)){var e={email:this.lemail,password:this.lpassword};this.axios.post("http://new-viva-test/api/login",JSON.stringify(e),{headers:{"Content-Type":"application/json"}}).then((function(e){t.message=e.data.message,t.lemail="",t.lpassword="",t.$auth.setToken(e.data.data.token,new Date(Date.now()+864e5))})).catch((function(e){t.message=e}))}},register:function(){var t=this;if(!(this.email.length<1&&this.password.length<1&&this.spassword.length<1&&this.name.length<1)){var e={email:this.email,name:this.name,password:this.password,spassword:this.spassword};this.axios.post("http://new-viva-test/api/register",JSON.stringify(e),{headers:{"Content-Type":"application/json"}}).then((function(e){t.message=e.data.message,t.email="",t.name="",t.password="",t.spassword="",t.$auth.setToken(e.data.data.token,new Date(Date.now()+864e5))})).catch((function(e){t.message=e}))}}}}),o=i,r=(a("bca0"),a("2877")),l=Object(r["a"])(o,s,n,!1,null,"5641620d",null);e["a"]=l.exports},"652f":function(t,e,a){},"78b7":function(t,e,a){"use strict";var s=a("505d"),n=a.n(s);n.a},b0c0:function(t,e,a){var s=a("83ab"),n=a("9bf2").f,i=Function.prototype,o=i.toString,r=/^\s*function ([^ (]*)/,l="name";s&&!(l in i)&&n(i,l,{configurable:!0,get:function(){try{return o.call(this).match(r)[1]}catch(t){return""}}})},bca0:function(t,e,a){"use strict";var s=a("652f"),n=a.n(s);n.a},f529:function(t,e,a){"use strict";a.r(e);var s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"guarded"},[this.$store.getters.auth.isAuthenticated?a("div",[a("table",{staticClass:"users"},[t._m(0),a("tbody",t._l(t.users,(function(e,s){return a("tr",{key:s},[a("td",[t._v("#"+t._s(e.id))]),a("td",[t._v(t._s(e.name))]),a("td",[t._v(t._s(e.email))]),a("td",[t._v(t._s(e.created_at))]),a("td",[a("router-link",{attrs:{to:"/users/"+e.id+"/edit"}},[t._v("✎")]),a("router-link",{attrs:{to:"/users/"+e.id}},[t._v("🗑")])],1)])})),0)])]):a("div",[a("Login")],1)])},n=[function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("thead",[a("tr",[a("th",[t._v("ID")]),a("th",[t._v("Имя")]),a("th",[t._v("Email")]),a("th",[t._v("Создан")]),a("th",[t._v("Действия")])])])}],i=a("578a"),o={name:"Admin",components:{Login:i["a"]},data:function(){return{users:[],posts:[]}},methods:{getUsers:function(){var t=this;this.axios.get("http://new-viva-test/api/users",{headers:{"Content-Type":"application/json",Authorization:"Bearer ".concat(localStorage.getItem("accessToken"))}}).then((function(e){t.users=e.data.data}))},getPosts:function(){var t=this;this.axios.get("http://new-viva-test/api/posts",{headers:{"Content-Type":"application/json",Authorization:"Bearer ".concat(localStorage.getItem("accessToken"))}}).then((function(e){t.posts=e.data.data}))},createRender:function(){this.getUsers(),this.getPosts()}},computed:{applicationAuth:function(){return this.$store.getters.auth.isAuthenticated}},watch:{applicationAuth:function(t){!0===t&&this.createRender()}},mounted:function(){this.$auth.isAuthenticated()&&this.createRender()}},r=o,l=(a("78b7"),a("2877")),c=Object(l["a"])(r,s,n,!1,null,"31df32ab",null);e["default"]=c.exports}}]);
//# sourceMappingURL=chunk-ba5f3f42.59cc0e9a.js.map