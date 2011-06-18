	var xmlHttp;
	var id;
	var celnum = 0;
	var fname = '';
	function trim(str){
		var t = str.replace(/(^\s*)|(\s*$)/g,"");	//用正则表达式将前后空格用空字符串代替
		return t.replace(/(^ *)|( *$)/g,"");	
	}
	
	function createXMLHttpRequest(){
		if(window.ActiveXObject){
			var aVersions = ["MSXML2.XMLHttp.5.0", "MSXML2.XMLHttp.4.0", "MSXML2.XMLHttp.3.0", "MSXML2.XMLHttp", "Microsoft.XMLHttp"];
			for (var i = 0; i < aVersions.length; i++) {
				try {
					xmlHttp = new ActiveXObject(aVersions[i]);
				}
				catch (e) {
					//alert("error");
				}
			}
		}
		else if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
			if (xmlHttp.overrideMimeType) {//设置MiME 类别
				xmlHttp.overrideMimeType("text/xml");
			}
		}
	}
	
	function validate(){
		if(document.getElementById("test").value!=""){	
		  createXMLHttpRequest();
		  var name = trim(document.getElementById("test").value);
          var name = escape(escape(name));
		  var url = "../page/searchShow.jsp?name="+name;
		  xmlHttp.open("GET", url, true);
		  xmlHttp.onreadystatechange = callback;
		  xmlHttp.send(null);
		}
	}
	
	function callback(){
		if(xmlHttp.readyState == 4){
			if (xmlHttp.status == 200) {
				show();
			}
		}
	}
	
	function splitname(text){
		return text.split(":");		
	}
	
	function show(){
		var Doc = trim(xmlHttp.responseText);
		//alert(Doc);
		var ss = splitname(Doc);
		//var ta = "";
		var obj = document.getElementById("flist");
		var info = '<li style="height: 20px; color: rgb(153, 153, 153);">想用@提到谁</li>';
		for(var i=0;i<ss.length-1;i++){
			if(ss[i]!=""||ss[i]!=null){
				info+='<li onclick="sel(\''+ss[i]+'\')" onMouseOver="over(this)" onMouseOut="out(this)">'+ss[i]+'</li>';
			}
		}
		//alert(info);
		obj.innerHTML = info;
		player("any1");
		//alert("OK");
		//obj.appendChild(info);
	}
	
	//隐藏@好友选择层
	function clocer(id){
		var id=document.getElementById(id);
		id.style.display="none";
		}
	
	//显示@好友选择层
	function player(id){
		var id=document.getElementById(id);
		id.style.display="block";
		}
	
	function sel(text){
		document.getElementById("test").value = text;
		document.getElementById("any1").style.display = "none";
	}
	
	function over(alist){
		alist.style.color= "blue";
		fname = alist.value;
	}
	
	function out(alist){
		fname = '';
		alist.style.color= "gray";
	}
	
	function checknum(num){
		alert("OK");
		var reT = /\d\d\d\d/;
		var nvalue = num.value;
		if(reT.test(nvalue)){
			celnum = 1;
		}
		else{
			celnum = 0;
			alert("请输入正确的格式");
		}
	}
	
//	function closerAndcheck(input){
//		if(fname!=''){
//			input.value = fname;
//		}
//		document.getElementById("any1").style.display="none";
//	}
	
	
	function dosubmit(){
		var form = document.getElementById('form');
		//alert("ok");
//		if(celnum == 1){
//			form.submit();
//		}
//		else{
//			alert(celnum);
//		}
		form.submit();
	}
