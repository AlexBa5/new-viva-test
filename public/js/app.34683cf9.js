(function(e){function t(t){for(var r,o,c=t[0],i=t[1],s=t[2],l=0,f=[];l<c.length;l++)o=c[l],Object.prototype.hasOwnProperty.call(a,o)&&a[o]&&f.push(a[o][0]),a[o]=0;for(r in i)Object.prototype.hasOwnProperty.call(i,r)&&(e[r]=i[r]);h&&h(t);while(f.length)f.shift()();return u.push.apply(u,s||[]),n()}function n(){for(var e,t=0;t<u.length;t++){for(var n=u[t],r=!0,o=1;o<n.length;o++){var c=n[o];0!==a[c]&&(r=!1)}r&&(u.splice(t--,1),e=i(i.s=n[0]))}return e}var r={},o={app:0},a={app:0},u=[];function c(e){return i.p+"js/"+({}[e]||e)+"."+{"chunk-3ebc578a":"582be08a","chunk-6e7dc585":"2c3bd165","chunk-9933053a":"070ffef5","chunk-ba5f3f42":"59cc0e9a","chunk-c110d3b4":"d4af4642","chunk-ccdea0e2":"6dee7bd9","chunk-f2abd43e":"1fe1991a","chunk-f5598bb8":"7ec47521"}[e]+".js"}function i(t){if(r[t])return r[t].exports;var n=r[t]={i:t,l:!1,exports:{}};return e[t].call(n.exports,n,n.exports,i),n.l=!0,n.exports}i.e=function(e){var t=[],n={"chunk-3ebc578a":1,"chunk-6e7dc585":1,"chunk-9933053a":1,"chunk-ba5f3f42":1,"chunk-c110d3b4":1,"chunk-ccdea0e2":1,"chunk-f2abd43e":1,"chunk-f5598bb8":1};o[e]?t.push(o[e]):0!==o[e]&&n[e]&&t.push(o[e]=new Promise((function(t,n){for(var r="css/"+({}[e]||e)+"."+{"chunk-3ebc578a":"812c440f","chunk-6e7dc585":"ad8a3be9","chunk-9933053a":"b753a9d9","chunk-ba5f3f42":"859d2f1a","chunk-c110d3b4":"ad8a3be9","chunk-ccdea0e2":"ad8a3be9","chunk-f2abd43e":"3bf57a51","chunk-f5598bb8":"ad8a3be9"}[e]+".css",a=i.p+r,u=document.getElementsByTagName("link"),c=0;c<u.length;c++){var s=u[c],l=s.getAttribute("data-href")||s.getAttribute("href");if("stylesheet"===s.rel&&(l===r||l===a))return t()}var f=document.getElementsByTagName("style");for(c=0;c<f.length;c++){s=f[c],l=s.getAttribute("data-href");if(l===r||l===a)return t()}var h=document.createElement("link");h.rel="stylesheet",h.type="text/css",h.onload=t,h.onerror=function(t){var r=t&&t.target&&t.target.src||a,u=new Error("Loading CSS chunk "+e+" failed.\n("+r+")");u.code="CSS_CHUNK_LOAD_FAILED",u.request=r,delete o[e],h.parentNode.removeChild(h),n(u)},h.href=a;var d=document.getElementsByTagName("head")[0];d.appendChild(h)})).then((function(){o[e]=0})));var r=a[e];if(0!==r)if(r)t.push(r[2]);else{var u=new Promise((function(t,n){r=a[e]=[t,n]}));t.push(r[2]=u);var s,l=document.createElement("script");l.charset="utf-8",l.timeout=120,i.nc&&l.setAttribute("nonce",i.nc),l.src=c(e);var f=new Error;s=function(t){l.onerror=l.onload=null,clearTimeout(h);var n=a[e];if(0!==n){if(n){var r=t&&("load"===t.type?"missing":t.type),o=t&&t.target&&t.target.src;f.message="Loading chunk "+e+" failed.\n("+r+": "+o+")",f.name="ChunkLoadError",f.type=r,f.request=o,n[1](f)}a[e]=void 0}};var h=setTimeout((function(){s({type:"timeout",target:l})}),12e4);l.onerror=l.onload=s,document.head.appendChild(l)}return Promise.all(t)},i.m=e,i.c=r,i.d=function(e,t,n){i.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},i.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},i.t=function(e,t){if(1&t&&(e=i(e)),8&t)return e;if(4&t&&"object"===typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(i.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var r in e)i.d(n,r,function(t){return e[t]}.bind(null,r));return n},i.n=function(e){var t=e&&e.__esModule?function(){return e["default"]}:function(){return e};return i.d(t,"a",t),t},i.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},i.p="/",i.oe=function(e){throw console.error(e),e};var s=window["webpackJsonp"]=window["webpackJsonp"]||[],l=s.push.bind(s);s.push=t,s=s.slice();for(var f=0;f<s.length;f++)t(s[f]);var h=l;u.push([0,"chunk-vendors"]),n()})({0:function(e,t,n){e.exports=n("56d7")},"034f":function(e,t,n){"use strict";var r=n("85ec"),o=n.n(r);o.a},"56d7":function(e,t,n){"use strict";n.r(t);n("d3b7"),n("e260"),n("e6cf"),n("cca6"),n("a79d");var r=n("2b0e"),o=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{attrs:{id:"app"}},[r("div",{staticClass:"page-header"},[r("router-link",{attrs:{to:"/"}},[r("img",{staticClass:"page-logo",attrs:{alt:"logo",src:n("cf05")}})]),r("span",[e._v("New Viva | Тестовое задание")]),r("router-link",{staticClass:"admin-link",attrs:{to:"/admin"}},[e._v("🔐")])],1),this.$store.getters.auth.isAuthenticated?r("div",{staticClass:"submenu"},[r("router-link",{attrs:{to:"/"}},[e._v("Главная")]),r("router-link",{attrs:{to:"/users"}},[e._v("Пользователи")]),r("router-link",{attrs:{to:"/posts"}},[e._v("Посты")]),r("a",{attrs:{href:"javascript:;"},on:{click:function(t){return e.logout()}}},[e._v("Выйти")])],1):e._e(),r("router-view")],1)},a=[],u={name:"App",components:{},data:function(){return{}},methods:{logout:function(){this.$auth.destroyToken(),this.$router.push("/")}}},c=u,i=(n("034f"),n("2877")),s=Object(i["a"])(c,o,a,!1,null,null,null),l=s.exports,f=n("62c3"),h=n.n(f),d=n("8549"),p=n.n(d),b=n("951b"),m=n("ca2f");r["a"].use(m["a"]);var g=new m["a"].Store({state:{auth:{token:null,isAuthenticated:!1}},getters:{auth:function(e){return e.auth}},mutations:{mutateAuth:function(e,t){e.auth=t}},actions:{setAuth:function(e,t){e.commit("mutateAuth",t)}}}),k=g,v={install:function(e){e.prototype.$auth={getToken:function(){var t=k.getters.auth.token,n=k.getters.auth.expiration;if(null===t||null===n){if(null===localStorage.getItem("token")&&null===localStorage.getItem("expiration"))return null;k.dispatch("setAuth",{token:localStorage.getItem("token"),isAuthenticated:!0,expiration:localStorage.getItem("expiration")})}return t&&n?Date.now()>parseInt(n)?(e.prototype.$auth.destroyToken(),null):t:null},setToken:function(e,t){localStorage.setItem("token",e),localStorage.setItem("expiration",t),k.dispatch("setAuth",{token:localStorage.getItem("token"),isAuthenticated:!0,expiration:localStorage.getItem("expiration")})},destroyToken:function(){localStorage.removeItem("token"),localStorage.removeItem("expiration"),k.dispatch("setAuth",{token:null,isAuthenticated:!1,expiration:null})},isAuthenticated:function(){return!!e.prototype.$auth.getToken()}}}},y=v;r["a"].use(b["a"]),r["a"].use(p.a,h.a),r["a"].use(y);var w=[{path:"/",component:function(){return n.e("chunk-3ebc578a").then(n.bind(null,"807b"))}},{path:"/admin",component:function(){return n.e("chunk-ba5f3f42").then(n.bind(null,"f529"))}},{path:"/users",component:function(){return n.e("chunk-9933053a").then(n.bind(null,"dbef"))}},{path:"/users/create",component:function(){return n.e("chunk-c110d3b4").then(n.bind(null,"798c"))}},{path:"/users/:id",component:function(){return n.e("chunk-f5598bb8").then(n.bind(null,"6fe9"))}},{path:"/posts/create",component:function(){return n.e("chunk-ccdea0e2").then(n.bind(null,"3891"))}},{path:"/posts/:id",component:function(){return n.e("chunk-6e7dc585").then(n.bind(null,"9c93"))}},{path:"/posts",component:function(){return n.e("chunk-f2abd43e").then(n.bind(null,"7c2a"))}}],S=new b["a"]({routes:w});r["a"].config.productionTip=!1,new r["a"]({router:S,store:k,render:function(e){return e(l)}}).$mount("#app")},"85ec":function(e,t,n){},cf05:function(e,t,n){e.exports=n.p+"img/logo.82b9c7a5.png"}});
//# sourceMappingURL=app.34683cf9.js.map