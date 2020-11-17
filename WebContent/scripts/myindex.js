

eval(function(p,a,c,k,e,d){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};
if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};
while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('e v=6(1){3.1=1;3.u()};v.E={u:6(){3.n=D;3.$(3.1.5).a.9="";3.$(3.1.5).d=3.1.j},s:6(){o 3.1.5=3.1.4[C(t.B(t.n()*3.1.4.f))]},A:6(r){e 2=3;8(3.n){3.s()}h(e i=0;i<3.1.4.f;i++){8(3.1.4[i]==3.1.5){3.1.7=3.1.b[i];k}}h(e i=0;i<2.1.4.f;i++){8(2.1.4[i]!=2.1.5){2.$(2.1.b[i]).a.9="m";2.$(2.1.4[i]).d=2.1.l}q{2.$(2.1.b[i]).a.9=""}8(r=="点击"){2.$(2.1.4[i]).z=6(){2.$(2.1.7).a.9="m";2.$(2.1.5).d=2.1.l;2.1.5=3.c;h(e i=0;i<2.1.4.f;i++){8(2.1.4[i]==3.c)k}8(p(2.1.g)=="6"){2.1.g(2.1.4[i],2.1.7,2.1.b[i])}2.1.7=2.1.b[i];2.$(2.1.7).a.9="";2.$(2.1.5).d=2.1.j}}q{2.$(2.1.4[i]).y=6(){2.$(2.1.7).a.9="m";2.$(2.1.5).d=2.1.l;2.1.5=3.c;h(e i=0;i<2.1.4.f;i++){8(2.1.4[i]==3.c)k}8(p(2.1.g)=="6"){2.1.g(2.1.4[i],2.1.7,2.1.b[i])}2.1.7=2.1.b[i];2.$(2.1.7).a.9="";2.$(2.1.5).d=2.1.j}}}},$:6(c){o x.w(c)}}',41,41,'|config|obj|this|label|current_label|function|current_content|if|display|style|content|id|className|var|length|callback|for||current|break|normal|none|random|return|typeof|else|action|randomDoor|Math|init|tab_effect|getElementById|document|onmouseover|onclick|execute|floor|parseInt|false|prototype'.split('|'),0,{}))

var VideoPlay={videoTime:15,adjustTime:60,cookieName:"videoplayed",callParam:"",appendJs:false,setCookie:function(value,second)
	{var nextTime=new Date();nextTime.setTime(nextTime.getTime()+1000*second);
	var domain_split=document.domain.split(".");var domain_split_length=domain_split.length;
	var domain=document.domain.substring(domain_split_length+1);document.cookie=this.cookieName+"="+escape(value)+"; expires="+nextTime.toGMTString()+"; path=/; domain="+domain},getCookie:function(Name){
		var search=Name+"=";
		if(document.cookie.length>0){
			offset=document.cookie.indexOf(search);if(offset!=-1){
				offset+=search.length;end=document.cookie.indexOf(";",offset);
				if(end==-1)end=document.cookie.length;return unescape(document.cookie.substring(offset,end))}
		}
	},watch:function(callMethod){
		if("enter"==callMethod){this.enterCall(this.callParam)}
	},enterCall:function(videoEnterCall){
		if(this.getCookie(this.cookieName)=="playing"){
			this.callParam=videoEnterCall;setTimeout("VideoPlay.watch(\"enter\")",2000)
		}else{this.setCookie("playing",this.videoTime+this.adjustTime);videoEnterCall()}},playDone:function(){this.setCookie("playdone",0)}
}
VideoPlay.adjustTime = 8;
if(typeof sas=="undefined")
	var sas=new Object();
if(typeof sas.ued=="undefined")sas.ued=new Object();
if(typeof sas.ued.util=="undefined")sas.ued.util=new Object();
if(typeof sas.ued.FlashObjectUtil=="undefined")sas.ued.FlashObjectUtil=new Object();sas.ued.FlashObject=function(swf,id,w,h,ver,c,useExpressInstall,quality,xiRedirectUrl,redirectUrl,detectKey){
	if(!document.createElement||!document.getElementById)return;
	this.DETECT_KEY=detectKey?detectKey:'detectflash';
	this.skipDetect=sas.ued.util.getRequestParameter(this.DETECT_KEY);
	this.params=new Object();this.variables=new Object();this.attributes=new Array();
	this.useExpressInstall=useExpressInstall;
	if(swf)this.setAttribute('swf',swf);
	if(id)this.setAttribute('id',id);
	if(w)this.setAttribute('width',w);
	if(h)this.setAttribute('height',h);
	if(ver)this.setAttribute('version',new sas.ued.PlayerVersion(ver.toString().split(".")));
	this.installedVer=sas.ued.FlashObjectUtil.getPlayerVersion(this.getAttribute('version'),useExpressInstall);
	if(c)this.addParam('bgcolor',c);
	var q=quality?quality:'high';this.addParam('quality',q);
	var xir=(xiRedirectUrl)?xiRedirectUrl:window.location;this.setAttribute('xiRedirectUrl',xir);
	this.setAttribute('redirectUrl','');
	if(redirectUrl)this.setAttribute('redirectUrl',redirectUrl)};sas.ued.FlashObject.prototype={
			setAttribute:function(name,value){
		this.attributes[name]=value
	},getAttribute:function(name){return this.attributes[name]},
	addParam:function(name,value){this.params[name]=value},
	getParams:function(){return this.params},
	addVariable:function(name,value){this.variables[name]=value},
	getVariable:function(name){return this.variables[name]},
	getVariables:function(){return this.variables},
	createParamTag:function(n,v){
		var p=document.createElement('param');
		p.setAttribute('name',n);
		p.setAttribute('value',v);return p},getVariablePairs:function(){
			var variablePairs=new Array();
			var key;
			var variables=this.getVariables();
			for(key in variables){
				variablePairs.push(key+"="+variables[key])
			}
			return variablePairs
		},getFlashHTML:function(){
			var flashNode="";
			if(navigator.plugins&&navigator.mimeTypes&&navigator.mimeTypes.length){
				if(this.getAttribute("doExpressInstall"))this.addVariable("MMplayerType","PlugIn");
				flashNode='<embed type="application/x-shockwave-flash" src="'+this.getAttribute('swf')+'" width="'+this.getAttribute('width')+'" height="'+this.getAttribute('height')+'"';flashNode+=' id="'+this.getAttribute('id')+'" name="'+this.getAttribute('id')+'" ';
				var params=this.getParams();
				for(var key in params){
					flashNode+=[key]+'="'+params[key]+'" '
				}
				var pairs=this.getVariablePairs().join("&");
				if(pairs.length>0){flashNode+='flashvars="'+pairs+'"'}
				flashNode+='/>'
			}else{
				if(this.getAttribute("doExpressInstall"))this.addVariable("MMplayerType","ActiveX");
				flashNode='<object id="'+this.getAttribute('id')+'" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="'+this.getAttribute('width')+'" height="'+this.getAttribute('height')+'">';
				flashNode+='<param name="movie" value="'+this.getAttribute('swf')+'" />';
				var params=this.getParams();
				for(var key in params){
					flashNode+='<param name="'+key+'" value="'+params[key]+'" />'
				}var pairs=this.getVariablePairs().join("&");
				if(pairs.length>0){flashNode+='<param name="flashvars" value="'+pairs+'" />'}
				flashNode+="</object>"
			}
			return flashNode
		},write:function(elementId){
			if(this.useExpressInstall){
				var expressInstallReqVer=new sas.ued.PlayerVersion([6,0,65]);
				if(this.installedVer.versionIsValid(expressInstallReqVer)&&!this.installedVer.versionIsValid(this.getAttribute('version'))){
					this.setAttribute('doExpressInstall',true);
					this.addVariable("MMredirectURL",escape(this.getAttribute('xiRedirectUrl')));
					document.title=document.title.slice(0,47)+" - Flash Player Installation";
					this.addVariable("MMdoctitle",document.title)
				}
			}else{
				this.setAttribute('doExpressInstall',false)
			}
			if(this.skipDetect||this.getAttribute('doExpressInstall')||this.installedVer.versionIsValid(this.getAttribute('version'))){
				var n=(typeof elementId=='string')?document.getElementById(elementId):elementId;n.innerHTML=this.getFlashHTML()
			}else{
				if(this.getAttribute('redirectUrl')!=""){document.location.replace(this.getAttribute('redirectUrl'))}
			}
		}
	};sas.ued.FlashObjectUtil.getPlayerVersion=function(reqVer,xiInstall){
		var PlayerVersion=new sas.ued.PlayerVersion(0,0,0);
		if(navigator.plugins&&navigator.mimeTypes.length){
			var x=navigator.plugins["Shockwave Flash"];
			if(x&&x.description){
				PlayerVersion=new sas.ued.PlayerVersion(x.description.replace(/([a-z]|[A-Z]|\s)+/,"").replace(/(\s+r|\s+b[0-9]+)/,".").split("."))
			}
		}else{
			try{
				var axo=new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
				for(var i=3;axo!=null;i++){
					axo=new ActiveXObject("ShockwaveFlash.ShockwaveFlash."+i);
					PlayerVersion=new sas.ued.PlayerVersion([i,0,0])
				}
			}catch(e){}
			if(reqVer&&PlayerVersion.major>reqVer.major)return PlayerVersion;
			if(!reqVer||((reqVer.minor!=0||reqVer.rev!=0)&&PlayerVersion.major==reqVer.major)||PlayerVersion.major!=6||xiInstall){
				try{
					PlayerVersion=new sas.ued.PlayerVersion(axo.GetVariable("$version").split(" ")[1].split(","))
				}catch(e){}
			}
		}return PlayerVersion};sas.ued.PlayerVersion=function(arrVersion){
			this.major=parseInt(arrVersion[0])||0;
			this.minor=parseInt(arrVersion[1])||0;
			this.rev=parseInt(arrVersion[2])||0
		};sas.ued.PlayerVersion.prototype.versionIsValid=function(fv){
			if(this.major<fv.major)return false;if(this.major>fv.major)return true;
			if(this.minor<fv.minor)return false;if(this.minor>fv.minor)return true;
			if(this.rev<fv.rev)return false;return true
		};
		sas.ued.util={getRequestParameter:function(param){
			var q=document.location.search||document.location.href.hash;
			if(q){var startIndex=q.indexOf(param+"=");
			var endIndex=(q.indexOf("&",startIndex)>-1)?q.indexOf("&",startIndex):q.length;
			if(q.length>1&&startIndex>-1){return q.substring(q.indexOf("=",startIndex)+1,endIndex)}
			}
			return""
		}};
		if(Array.prototype.push==null){Array.prototype.push=function(item){
			this[this.length]=item;return this.length}
		}
		var getQueryParamValue=sas.ued.util.getRequestParameter;
		var sohuFlash=sas.ued.FlashObject;


		function Cookie(document,name,hours,path,domain,secure){
			this.$document=document;this.$name=name;
			this.$expiration=hours?new Date((new Date()).getTime()+hours*3600000):null;
			this.$path=path?path:null;this.$domain=domain?domain:null;
			this.$secure=secure;
		};
		Cookie.prototype.store=function (){
			var cookieval="";
			for(var prop in this){
				if((prop.charAt(0)=='$')||((typeof this[prop])=='function'))continue;
				if(cookieval!="") cookieval+='&';cookieval+=prop+':'+escape(this[prop]);
			}
			var cookie=this.$name+'='+cookieval;
			if(this.$expiration)cookie+='; expires='+this.$expiration.toGMTString();
			if(this.$path) cookie+='; path='+this.$path;
			if(this.$domain) cookie+='; domain='+this.$domain;
			if(this.$secure) cookie+='; secure';this.$document.cookie=cookie;
		};
		Cookie.prototype.load=function(){
			var allcookies=this.$document.cookie;if(allcookies=="") return false;
			var start=allcookies.indexOf(this.$name+'=');if(start==-1) return false;
			start+=this.$name.length+1;var end=allcookies.indexOf(';',start);if(end==-1) end=allcookies.length;
			var cookieval=allcookies.substring(start,end);
			var a=cookieval.split('&');
			for(var i=0; i<a.length; i++) a[i]=a[i].split(':');
			for(var i=0; i<a.length; i++) this[a[i][0]]=unescape(a[i][1]);return true;
		};
		Cookie.prototype.remove = function(){
			var cookie;cookie = this.$name + '=';
			if (this.$path) cookie += '; path=' + this.$path;
			if (this.$domain) cookie += '; domain=' + this.$domain;cookie += '; expires=Fri, 02-Jan-1970 00:00:00 GMT';
			this.$document.cookie = cookie;
		};


		function createIEXmlDom(){
			var arr=["MSXML2.DOMDocument.5.0","MSXML2.DOMDocument.4.0","MSXML2.DOMDocument.3.0","MSXML2.DOMDocument","Microsoft.XMLDOM"];
			for(var i=0;i<arr.length;i++){
				try{
					var iexmldom=new ActiveXObject(arr[i]); //创建xmldom对象，根据msxml的版本的不同创建
					return iexmldom;           
				}catch(ex){}
			}
			throw new Error("MSXML没有安装");
		}

		function getXmlDoc(){
			var xmldom;
			//浏览器检测  IE浏览器创建xml dom对象采用ActiveXObject对象
			if(window.ActiveXObject){//IE 360 生成xml DOM解析器
				//给IE设置一个根据msxml的版本来生成DOM的方法
				xmldom=createIEXmlDom(); 
			}else if(document.implementation&&document.implementation.createDocument){ //mozilla浏览器(王景、火狐)
				//mozzila生成xml DOM模型
				xmldom=document.implementation.createDocument("","",null);
			}else{
				throw new Error("您的浏览器不支持xml DOM模型，请更换浏览器！");
			}     
			return xmldom;
		}

		
		function $ABC(id){
			return document.getElementById(id);
		}

		function showimage() {
			//通过方法获取对象
			var xmlDoc = getXmlDoc();
			xmlDoc.async=false;
			xmlDoc.load("flightcity.xml");

			//获取xml文件的根节点
			var root = xmlDoc.documentElement;
			//获得所有的省节点
			var provinces = root.childNodes;
			//获取页面中要显示的省的控件dom对象
			var sheng = document.getElementById("sheng");
			var shi = document.getElementById("shi");
			//遍历所有的省
			for(var i=0;i<provinces.length;i++) {
				//查看该节点是否是元素节点 也是为了实现不同浏览器之间的兼容性问题
				if(provinces[i].nodeType == 1) {
					//创建option节点对象
					var shengopt = document.createElement("option");
					//创建option节点对象
					shengopt.appendChild(document.createTextNode(provinces[i].getAttribute("name")));
					//为省节点添加属性
					shengopt.setAttribute("value",provinces[i].getAttribute("name"));
					//添加省道页面dom对象中
					sheng.appendChild(shengopt);
				}
			}	
			//当省节点发生改变时触发事件
			sheng.onchange = function() {
				var shengs = sheng.options;     //获取省节点所有的option对象的集合
				var num = shengs.selectedIndex;   //获取选中option对象的selectedIndex(下标值)
				var index=1;
				//清空市区
				shi.length =1;
				var ppostocode = shengs[num].getAttribute("value"); //取出选定的省的属性值
				//遍历所有的省，如果属性值等于ppostcode则读取下面的市
				for(var i=0;i<provinces.length;i++) {
					if(provinces[i].nodeType == 1) {
						var postcode = provinces[i].getAttribute("name");//取出该省的postcode值

						if(postcode==ppostocode) {//如果属性值等于ppostcode则读取下面的市
							var cities = provinces[i].childNodes;  
							shi.length =1;         
							for(var i=0;i<cities.length;i++) {
								if(cities[i].nodeType == 1) {  //如果是子元素，则创建option
									var shiopt = document.createElement("option");
									shiopt.appendChild(document.createTextNode(cities[i].getAttribute("name")));
									//为该市（子节点）设置一个属性值，即为该市的postcode值，方便后面查询该市的所有地区
									shiopt.setAttribute("value",cities[i].getAttribute("name"));
									shi.appendChild(shiopt);
									if(index==1){
										if(cityindex==1){
											document.getElementById('startcity').value=cities[i].getAttribute("name");
										}else{
											document.getElementById('endcity').value=cities[i].getAttribute("name");
										}
										index++;
									}
								}
							}
							shi.selectedIndex=1; //市的下拉列表中，默认显示第一个
							break;
						}
					}
				}
			}

			shi.onchange = function() {
				var shis = shi.options; //获取市节点所有的option对象的集合
				var num = shis.selectedIndex; //获取选择的市的下标
				var spostcode = shis[num].getAttribute("value"); //获取选中的市的属性值
				if(cityindex==1){
					document.getElementById('startcity').value=spostcode;
				}else{
					document.getElementById('endcity').value=spostcode;
				}	
				workclose('worksearch');
			}
			$ABC("dome2").innerHTML=$ABC("dome1").innerHTML;
		}


		function checksearch(){
			var startcity=document.myform1.startcity.value; 
			var endcity=document.myform1.endcity.value;
			var starttime=document.myform1.starttime.value;

			if(startcity==null||startcity==""){
				alert("请选择您的出发城市！");
				return false;
			}
			if(endcity==null||endcity==""){
				alert("请选择您要到达的城市！");
				return false;
			}
			if(starttime==null||starttime==""){
				alert("请选择您的出发时间！");
				return false;
			}
			return true;
		}

		function hiddenmyname(obj){
			obj.select();
		}


		//获取城市
		function showshi(val,divid){
			if(val.value=="--请选择城市--"||val.value==""||val.value==null){
				$(divid).style.display="block";
				$(divid).innerHTML="<span class='err'><img src='http://localhost:8080/airplane/back/images/onError.gif'>请选择您所在的城市</span>";
				return false;
			}else{
				$(divid).style.display="block";
				$(divid).innerHTML="<span class='ok'><img src='http://localhost:8080/airplane/back/images/onCorrect.gif'>您选择的是城市是："+val.value+"</span>";
				return true;
			}  
		}

		function showHide(showid,val){
			document.getElementById(showid).style.display="block";
			cityindex=val;
		}

		//关闭工作地点层
		function workclose(hideid){
			document.getElementById(hideid).style.display="none";
		}

		//选择并显示地点
		function showadd(val){
			$("searchadd").value=val;
			workclose('worksearch');
			checktype($('searchadd'),'mydivtype');
		}


		var speed=50;  //向上滚动的速度    
		function moveTop(){ //右边的文字
			if($ABC("dome2").offsetTop-$ABC("flighttime").scrollTop<=0){  //当滚动至dome1与dome2的交界时
				$ABC("flighttime").scrollTop-=$ABC("dome1").offsetHeight;  //dome跳到最顶端
			}else{	
				$ABC("flighttime").scrollTop++;
			}
		}

		var MyMar=setInterval("moveTop()",speed);  //设置定时器
		function stopd(){
			clearInterval(MyMar);
		}
		function moved(){
			MyMar=setInterval("moveTop()",speed);
		}

		//用户登录
		function dologin(){
			var uname=$("#uname").val();
			var pwd=$("#pwd").val();
			$.post("user.do",{op:'dologin',uname:uname,pwd:pwd},
					function(date){
				if(date==1){
					$("#loginStatus").html("<span class='logintype'>尊敬的会员:&nbsp;"+uname+"&nbsp;欢迎使用舒航订票网！&nbsp;&nbsp;&nbsp;" +
					"<a href='javascript:dologout()'>[退出]</a></span>").fadeIn(0);
					$("#uname").val("");
					$("#pwd").val("");
				}
				if(date==2){
					alert("用户名或密码错误！");
				}
				if(date==0){
					alert("您已经成功登录，不能重复登录！");
				}
			});
		}

		//退出登录
		function dologout(){
			$.post("user.do",{op:'dologoutuser'},
					function(date){
				if(date==1){//退出成功
					$("#myStatus2").hide(10);
					$("#loginStatus").html("当前状态：[未登录]").fadeIn(0);
				}else if(date==-1){
					alert("您还没登录！");
				}else{
					alert("您已经成功退出！");
				}
			});
		}
		
		function mylogin(){
		      if (document.myform.uname.value=="" || document.myform.pwd.value==""){
		 		     document.myform.b1.disabled=true;
		 	  }else{
		 		     document.myform.b1.disabled=false;
			  }
		}