// JavaScript Document
//��֤����
 function showemail(obj,divid){        
        var reg=/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
		if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>������֤�ɹ�</span>"; 
            return true;
        }else{
            //obj.select();
            //obj.focus();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>�����ʽ����ȷ������д��ȷ������</span>";
            return false;
        }  
    }
    
    //��֤��Ա���Ƿ����
    function showname(obj,divid){     
        var reg=/^[\u4e00-\u9fa5\a-zA-Z][\u4e00-\u9fa5\a-zA-Z_0-9]{2,18}$/;
       
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>��Ա����֤�ɹ�</span>";
            return true;
        }else{
            //obj.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>��Ա����������ĸ���ֿ�ͷ����3-18λ�����֡���ĸ���»��ߡ��������</span>";
            return false;
        }  
    }
    
    //��֤��ʵ����
    function checkmyname(obj,divid){     
        var reg=/^[\u4e00-\u9fa5\a-zA-Z][\u4e00-\u9fa5\a-zA-Z]{2,18}$/;
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>������֤�ɹ�</span>";
            return true;
        }else{
            //obj.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>������������ʵ����</span>";
            return false;
        }  
    }
    
    //��ȡ�Ա�
    function showsex(val,divid){
    	if(val.value==null||val.value==""){
    		$(divid).style.display="block";
    	    $(divid).innerHTML="<span class='er'>��ʹ�õ�Ĭ���Ա�"+val.value+"</span>";
    	    return true;
    	}else{
    		$(divid).style.display="block";
    		$(divid).innerHTML="<span class='ok'>��ѡ����Ա��ǣ�"+val.value+"</span>";
    		return true;
       }
	}
    
    //��֤��ϵ����
    function checktel(obj,divid){     
        var reg=/^((\d{3,4})|(\d{3,4})-?)\d{7,8}$/;
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>��ϵ��ʽ��֤�ɹ�</span>";
            return true;
        }else{
            //obj.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>��������ȷ���ֻ������绰����</span>";
            return false;
        }  
    }
	
	 //��֤�����Ƿ����
    function showpwd(obj,divid){
        
        var reg=/^\w{6,16}$/;
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>������֤�ɹ�</span>";
            return true;
        }else{
            //obj.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>���������6-16λ�����֡���ĸ���»������</span>";
            return false;
        }  
    }
    
  //��֤֤������
    function checktype(obj,divid){
        if(obj.value!=null&&obj.value!=""){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>֤��������֤�ɹ�</span>";
            return true;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>��ѡ��֤������</span>";
            return false;
        }  
    }
    
    //֤������֤
    function checktypeid(type,obj,divid){
        var reg= /^\d{17}[\d|x]$|^\d{15}$/;
        if(reg.test(obj.value)){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>"+type.value+"��֤�ɹ�</span>";
            return true;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>��������ȷ��Ч��֤������</span>";
            return false;
        }  
    }
    
    
	//�ظ�������֤
	function checkrpwd(psw,repeatpsw,divid){
		if(repeatpsw.value!=""&&psw.value==repeatpsw.value){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>��֤����ɹ�</span>";
            return true;
        }else{
            //repeatpsw.select();
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>�����������벻һ�£�����������</span>";
            return false;
        }  
	}
	
	//��ȡʡ��
	function showsheng(val,divid){
		if(val.value=="--��ѡ��ʡ��--"){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>��ѡ�������ڵ�ʡ��</span>";
            return false;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>��ѡ�����ʡ���ǣ�"+val.value+"</span>";
            return true;
        }  
	}
	
	//��ȡ����
	function showshi(val,divid){
		if(val.value=="--��ѡ�����--"||val.value==""||val.value==null){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>��ѡ�������ڵĳ���</span>";
            return false;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>��ѡ����ǳ����ǣ�"+val.value+"</span>";
            return true;
        }  
	}
	
	//��ȡ����
	function showqu(val,divid){
		if(val.value=="--��ѡ�����--"||val.value==""||val.value==null){
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='err'>��ѡ�������ڵĵ���</span>";
            return false;
        }else{
            $(divid).style.display="block";
            $(divid).innerHTML="<span class='ok'>��ѡ����ǵ����ǣ�"+val.value+"</span>";
            return true;
        }  
	}
	
	
	//ע����֤
	function checkregister(){   
		var email=showemail($('email'),'check1'); //����
		var uname=showname($('username'),'check2'); //�û���		
	    var pwd=showpwd($('psw'),'fpwd'); //����
		var pwds=checkrpwd($('psw'),$('repeatpsw'),'frepeatpwd');//�ظ����� 
		var tel= checktel($('mytelphone'),'mydivtel') //��ϵ��ʽ
		var type=checktype($('searchadd'),'mydivtype');  //֤������
		var typeid=checktypeid($('searchadd'),$('mytypeid'),'mydivtypeid'); //֤����
		var myname=checkmyname($('myname'),'mydivname');//��ʵ����
		var mysex=showsex($('sex'),'mydivsex');//�Ա�
		var mysheng=showsheng($('sheng'),'mydivsheng');//ʡ
		var myshi=showshi($('shi'),'mydivshi');//��
		var myqu=showqu($('xian'),'mydivqu');//��
		
	   	if(email==true&&uname==true&&pwd==true&&pwds==true&&tel==true&&type==true&&typeid==true&&myname==true&&mysheng==true&&mshi==true&&myqu==true){
	       alert("ע��ɹ�");
           return true;
	   	}else{
	       alert("���������Ϣ������ȷ�Ϻ������ύ");
	       return false;
	   	}
	}
	
	
	function showHide(showid){
		$(showid).style.display="block";
	}

	//�رչ����ص��
	function workclose(hideid){
		$(hideid).style.display="none";
	}
	
	//ѡ����ʾ�ص�
	function showadd(val){
		$("searchadd").value=val;
		workclose('worksearch');
		checktype($('searchadd'),'mydivtype');
	}
	
	 //�ʼ�����
    function sendEmail()
    {
        //--�ʼ�����ģ��---------start-
        var name = name;
        name ="���ã���ӭע��<br />"
        var str="������ע�����֤��Ϊ��123445<br />";
        str=str+"������������ʱ��������ϵ��лл����֧��!";
        Web = "��˾��ַ:http://1923.168.14.80:8080/airplane/index.jsp<br />";
        var jMail = new ActiveXObject("Jmail.message");
        jMail.Silent = true;
        jMail.Charset = "utf-8";   
        jMail.FromName = "navy" //������
        jMail.From = "qfxsxhfy@126.com"; //�����˵��ʼ���ַ
        jMail.AddRecipient(email); //�ռ��˵��ʼ���ַ
        jMail.Subject = "������ע����֤��"; //�ʼ�����
        jMail.HTMLBody = content
        //jMail.Body = content;   
        jMail.MailServerUserName="qfxsxhfy";
        jMail.MailServerPassWord="zhouhaijun121314";   
        var ret = jMail.Send("qfxsxhfy@163.com");   
        if(ret == false)
        {
            alert("ϵͳ����,��������д��");
        }else{
            alert("������Ϣ�ѷ������ҹ�˾�����ǽ����������ϵ��лл��");
        }
        jMail.Close();
    }
    
	function createIEXmlDom(){
	    var arr=["MSXML2.DOMDocument.5.0","MSXML2.DOMDocument.4.0","MSXML2.DOMDocument.3.0","MSXML2.DOMDocument","Microsoft.XMLDOM"];
	    for(var i=0;i<arr.length;i++){
	    try{
	        var iexmldom=new ActiveXObject(arr[i]); //����xmldom���󣬸���msxml�İ汾�Ĳ�ͬ����
	        return iexmldom;           
	        }catch(ex){}
	    }
	    throw new Error("MSXMLû�а�װ");
	}

	function getXmlDoc(){
	 var xmldom;
	        //��������  IE���������xml dom�������ActiveXObject����
	        if(window.ActiveXObject){//IE 360 ����xml DOM������
	            //��IE����һ������msxml�İ汾������DOM�ķ���
	            xmldom=createIEXmlDom(); 
	        }else if(document.implementation&&document.implementation.createDocument){ //mozilla�����(���������)
	            //mozzila����xml DOMģ��
	            xmldom=document.implementation.createDocument("","",null);
	        }else{
	            throw new Error("�����������֧��xml DOMģ�ͣ�������������");
	        }     
	        return xmldom;
	}

	
	function init(){
	     //ͨ��������ȡ����
	    var xmlDoc = getXmlDoc();
	    xmlDoc.async=false;
	    xmlDoc.load("city.xml");

	    //��ȡxml�ļ��ĸ��ڵ�
	    var root = xmlDoc.documentElement;
	    //������е�ʡ�ڵ�
	    var provinces = root.childNodes;
	    //��ȡҳ����Ҫ��ʾ��ʡ�Ŀؼ�dom����
	    var sheng = document.getElementById("sheng");
	    var shi = document.getElementById("shi");
	    var xian = document.getElementById("xian");
	    //�������е�ʡ
	    for(var i=0;i<provinces.length;i++) {
	        //�鿴�ýڵ��Ƿ���Ԫ�ؽڵ� Ҳ��Ϊ��ʵ�ֲ�ͬ�����֮��ļ���������
	        if(provinces[i].nodeType == 1) {
	             //����option�ڵ����
	            var shengopt = document.createElement("option");
	            //����option�ڵ����
	            shengopt.appendChild(document.createTextNode(provinces[i].getAttribute("name")));
	            //Ϊʡ�ڵ��������
	            shengopt.setAttribute("value",provinces[i].getAttribute("name"));
	           //���ʡ��ҳ��dom������
	            sheng.appendChild(shengopt);
	        }
	    }	
	    //��ʡ�ڵ㷢���ı�ʱ�����¼�
	    sheng.onchange = function() {
	        var shengs = sheng.options;     //��ȡʡ�ڵ����е�option����ļ���
	        var num = shengs.selectedIndex;   //��ȡѡ��option�����selectedIndex(�±�ֵ)
	         //�������
	        shi.length =1;
	        xian.length =1;
	        var indexfirst=0; //����һ�������������ж��ԡ�
	        var ppostocode = shengs[num].getAttribute("value"); //ȡ��ѡ����ʡ������ֵ
	        //�������е�ʡ���������ֵ����ppostcode���ȡ�������
	        for(var i=0;i<provinces.length;i++) {
	            if(provinces[i].nodeType == 1) {
	                var postcode = provinces[i].getAttribute("name");//ȡ����ʡ��postcodeֵ
	                
	                if(postcode==ppostocode) {//�������ֵ����ppostcode���ȡ�������
	                    var cities = provinces[i].childNodes;  
	                    shi.length =1;         
	                    for(var i=0;i<cities.length;i++) {
	                        if(cities[i].nodeType == 1) {  //�������Ԫ�أ��򴴽�option
	                            var shiopt = document.createElement("option");
	                            shiopt.appendChild(document.createTextNode(cities[i].getAttribute("name")));
								//Ϊ���У��ӽڵ㣩����һ������ֵ����Ϊ���е�postcodeֵ����������ѯ���е����е���
	                            shiopt.setAttribute("value",cities[i].getAttribute("name"));
	                            shi.appendChild(shiopt);
	                            if(indexfirst==0){//˵��cities[i]���������ĵ�һ���У����ڵ��������˵��У���ʾ������������е���
	                                xian.length=1; //��յ��������˵�
	                                var areas = cities[i].childNodes; //��ȡ�����µ������ӽڵ㣬������
	                                for(var k=0;k<areas.length;k++) {//ѭ�����������ڵ�
	                                    if(areas[k].nodeType == 1) {
	                                        var xianopt = document.createElement("option");
	                                        xianopt.appendChild(document.createTextNode(areas[k].getAttribute("name")));
	                                        xianopt.setAttribute("value",areas[k].getAttribute("name"));
	                                        xian.appendChild(xianopt);
	                                    }
	                                }
	                                xian.selectedIndex=1;//�ص������б��У�Ĭ����ʾ��һ������
	                                indexfirst++;  
	                            }
	                        }
	                    }
	                    shi.selectedIndex=1; //�е������б��У�Ĭ����ʾ��һ��
	                    break;
	                }
	            }
	        }
	    }
		 
		 //���нڵ㷢���ı�ʱ �����¼�
	    shi.onchange = function() {
	        var shis = shi.options; //��ȡ�нڵ����е�option����ļ���
	        var num = shis.selectedIndex; //��ȡѡ����е��±�
	        var spostcode = shis[num].getAttribute("value"); //��ȡѡ�е��е�����ֵ
		
			if(spostcode==""||spostcode==null){//���û��ѡ������У�����յ�����������Ϣ��IE��360�е�ֵΪ"",mozilla�е�ֵΪnull
			   xian.length=1;
			   xian.selectedIndex=0;  //Ĭ��ѡ��0��Ϊ��--��ѡ�����--
			}
		
	        for(var i=0;i<provinces.length;i++) {//ѭ�����е�ʡ
	            if(provinces[i].nodeType == 1) {
	                var cities = provinces[i].childNodes;//��ȡ���е�ʡ���ӽڵ㼴���е���
	                for(var j=0;j<cities.length;j++) {  //ѭ�����е���
	                    if(cities[j].nodeType == 1) {  
	                        var postcode = cities[j].getAttribute("name"); //�ж��е�postcodeֵ�Ƿ���ѡ�е��е�����ֵ���
	                        if(postcode == spostcode) { //���postcodeֵ��ѡ�е��е�����ֵ��ȣ���������ĵ���
	                            xian.length =1;
	                            var areas = cities[j].childNodes; //ѭ�����������ڵ�
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