// JavaScript Document
//验证邮箱
 function showemail(obj,divid){        
        var reg=/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
		if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>邮箱验证成功</span>"; 
            return true;
        }else{
            //obj.select();
            //obj.focus();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>邮箱格式不正确，请填写正确的邮箱</span>";
            return false;
        }  
    }
    
    //验证会员名是否可用
    function showname(obj,divid){     
        var reg=/^[\u4e00-\u9fa5\a-zA-Z][\u4e00-\u9fa5\a-zA-Z_0-9]{2,18}$/;
       
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>会员名验证成功</span>";
            return true;
        }else{
            //obj.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>会员名必须以字母或汉字开头，由3-18位的数字、字母、下划线、汉字组成</span>";
            return false;
        }  
    }
    
    //验证真实姓名
    function checkmyname(obj,divid){     
        var reg=/^[\u4e00-\u9fa5\a-zA-Z][\u4e00-\u9fa5\a-zA-Z]{2,18}$/;
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>姓名验证成功</span>";
            return true;
        }else{
            //obj.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>请输入您的真实姓名</span>";
            return false;
        }  
    }
    
    //获取性别
    function showsex(val,divid){
    	if(val.value==null||val.value==""){
    		$(divid).style.display="block";
    	    $(divid).innerHTML="<span class='er'>您使用的默认性别："+val.value+"</span>";
    	    return true;
    	}else{
    		$(divid).style.display="block";
    		$(divid).innerHTML="<span class='ok'>您选择的性别是："+val.value+"</span>";
    		return true;
       }
	}
    
    //验证联系号码
    function checktel(obj,divid){     
        var reg=/^((\d{3,4})|(\d{3,4})-?)\d{7,8}$/;
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>联系方式验证成功</span>";
            return true;
        }else{
            //obj.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>请输入正确的手机号码或电话号码</span>";
            return false;
        }  
    }
	
	 //验证密码是否可用
    function showpwd(obj,divid){
        
        var reg=/^\w{6,16}$/;
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>密码验证成功</span>";
            return true;
        }else{
            //obj.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>密码必须由6-16位的数字、字母、下划线组成</span>";
            return false;
        }  
    }
    
  //验证证件类型
    function checktype(obj,divid){
        if(obj.value!=null&&obj.value!=""){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>证件类型验证成功</span>";
            return true;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>请选择证件类型</span>";
            return false;
        }  
    }
    
    //证件号验证
    function checktypeid(type,obj,divid){
        var reg= /^\d{17}[\d|x]$|^\d{15}$/;
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>"+type.value+"验证成功</span>";
            return true;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>请输入正确有效的证件号码</span>";
            return false;
        }  
    }
    
    
	//重复密码验证
	function checkrpwd(psw,repeatpsw,divid){
		if(repeatpsw.value!=""&&psw.value==repeatpsw.value){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>验证密码成功</span>";
            return true;
        }else{
            //repeatpsw.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>两次密码输入不一致，请重新输入</span>";
            return false;
        }  
	}
	
	//获取省份
	function showsheng(val,divid){
		if(val.value=="--请选择省份--"){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>请选择您所在的省份</span>";
            return false;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>您选择的是省份是："+val.value+"</span>";
            return true;
        }  
	}
	
	//获取城市
	function showshi(val,divid){
		if(val.value=="--请选择城市--"||val.value==""||val.value==null){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>请选择您所在的城市</span>";
            return false;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>您选择的是城市是："+val.value+"</span>";
            return true;
        }  
	}
	
	//获取地区
	function showqu(val,divid){
		if(val.value=="--请选择地区--"||val.value==""||val.value==null){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>请选择您所在的地区</span>";
            return false;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>您选择的是地区是："+val.value+"</span>";
            return true;
        }  
	}
	
	
	//注册验证
	function checkregister(){   
		var email=showemail($('email'),'check1'); //邮箱
		var uname=showname($('username'),'check2'); //用户名		
	    var pwd=showpwd($('psw'),'fpwd'); //密码
		var pwds=checkrpwd($('psw'),$('repeatpsw'),'frepeatpwd');//重复密码 
		var tel= checktel($('mytelphone'),'mydivtel') //联系方式
		var type=checktype($('searchadd'),'mydivtype');  //证件类型
		var typeid=checktypeid($('searchadd'),$('mytypeid'),'mydivtypeid'); //证件号
		var myname=checkmyname($('myname'),'mydivname');//真实姓名
		var mysex=showsex($('sex'),'mydivsex');//性别
		var mysheng=showsheng($('sheng'),'mydivsheng');//省
		var myshi=showshi($('shi'),'mydivshi');//市
		var myqu=showqu($('xian'),'mydivqu');//区
		
	   	if(email==true&&uname==true&&pwd==true&&pwds==true&&tel==true&&type==true&&typeid==true&&myname==true&&mysheng==true&&mshi==true&&myqu==true){
	       alert("注册成功");
           return true;
	   	}else{
	       alert("您填入的信息有误，请确认后重新提交");
	       return false;
	   	}
	}
	
	
	function showHide(showid){
		$(showid).style.display="block";
	}

	//关闭工作地点层
	function workclose(hideid){
		$(hideid).style.display="none";
	}
	
	//选择并显示地点
	function showadd(val){
		$("searchadd").value=val;
		workclose('worksearch');
		checktype($('searchadd'),'mydivtype');
	}
	
	 //邮件发送
    function sendEmail()
    {
        //--邮件发送模块---------start-
        var name = name;
        name ="您好！欢迎注册<br />"
        var str="您本次注册的验证码为：123445<br />";
        str=str+"如有疑问请随时跟我们联系，谢谢您的支持!";
        Web = "公司网址:http://1923.168.14.80:8080/airplane/index.jsp<br />";
        var jMail = new ActiveXObject("Jmail.message");
        jMail.Silent = true;
        jMail.Charset = "utf-8";   
        jMail.FromName = "navy" //发件人
        jMail.From = "qfxsxhfy@126.com"; //发送人的邮件地址
        jMail.AddRecipient(email); //收件人的邮件地址
        jMail.Subject = "神速网注册验证码"; //邮件主题
        jMail.HTMLBody = content
        //jMail.Body = content;   
        jMail.MailServerUserName="qfxsxhfy";
        jMail.MailServerPassWord="zhouhaijun121314";   
        var ret = jMail.Send("qfxsxhfy@163.com");   
        if(ret == false)
        {
            alert("系统错误,请重新填写！");
        }else{
            alert("您的信息已发送至我公司，我们将尽快和您联系。谢谢！");
        }
        jMail.Close();
    }
    
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

	
	function init(){
	     //通过方法获取对象
	    var xmlDoc = getXmlDoc();
	    xmlDoc.async=false;
	    xmlDoc.load("city.xml");

	    //获取xml文件的根节点
	    var root = xmlDoc.documentElement;
	    //获得所有的省节点
	    var provinces = root.childNodes;
	    //获取页面中要显示的省的控件dom对象
	    var sheng = document.getElementById("sheng");
	    var shi = document.getElementById("shi");
	    var xian = document.getElementById("xian");
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
	         //清空市区
	        shi.length =1;
	        xian.length =1;
	        var indexfirst=0; //定义一个变量。用来判断显。
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
	                            if(indexfirst==0){//说明cities[i]满足条件的第一个市，则在地区下拉菜单中，显示该市下面的所有地区
	                                xian.length=1; //清空地区下来菜单
	                                var areas = cities[i].childNodes; //获取该市下的所有子节点，即地区
	                                for(var k=0;k<areas.length;k++) {//循环创建地区节点
	                                    if(areas[k].nodeType == 1) {
	                                        var xianopt = document.createElement("option");
	                                        xianopt.appendChild(document.createTextNode(areas[k].getAttribute("name")));
	                                        xianopt.setAttribute("value",areas[k].getAttribute("name"));
	                                        xian.appendChild(xianopt);
	                                    }
	                                }
	                                xian.selectedIndex=1;//县的下拉列表中，默认显示第一个地区
	                                indexfirst++;  
	                            }
	                        }
	                    }
	                    shi.selectedIndex=1; //市的下拉列表中，默认显示第一个
	                    break;
	                }
	            }
	        }
	    }
		 
		 //当市节点发生改变时 触发事件
	    shi.onchange = function() {
	        var shis = shi.options; //获取市节点所有的option对象的集合
	        var num = shis.selectedIndex; //获取选择的市的下标
	        var spostcode = shis[num].getAttribute("value"); //获取选中的市的属性值
		
			if(spostcode==""||spostcode==null){//如果没有选中如何市，则清空地区的所有信息。IE、360中的值为"",mozilla中的值为null
			   xian.length=1;
			   xian.selectedIndex=0;  //默认选择0即为：--请选择地区--
			}
		
	        for(var i=0;i<provinces.length;i++) {//循环所有的省
	            if(provinces[i].nodeType == 1) {
	                var cities = provinces[i].childNodes;//获取所有的省的子节点即所有的市
	                for(var j=0;j<cities.length;j++) {  //循环所有的市
	                    if(cities[j].nodeType == 1) {  
	                        var postcode = cities[j].getAttribute("name"); //判断市的postcode值是否与选中的市的属性值相等
	                        if(postcode == spostcode) { //如果postcode值与选中的市的属性值相等，该市下面的地区
	                            xian.length =1;
	                            var areas = cities[j].childNodes; //循环创建地区节点
	                            for(var k=0;k<areas.length;k++) {
	                                if(areas[k].nodeType == 1) {
	                                    var xianopt = document.createElement("option");
	                                    xianopt.appendChild(document.createTextNode(areas[k].getAttribute("name")));
	                                    xianopt.setAttribute("value",areas[k].getAttribute("name"));
	                                    xian.appendChild(xianopt);
	                                }
	                            }
	                            xian.selectedIndex=1;
	                            break;
	                        }
	                    }
	                }
	            }
	        }
	    }
	}