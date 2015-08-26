
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>




	<script>
	function validate(){
		docu = document.getElementById("file");
		if(docu.value != ""){
			return true;
		} 
		else{
			alert("Favor selecione o arquivo a ser importado.");
			docu.click();
			return false;
		}
	}
	</script>
	
   <style type="text/css">
body
{
   font: 13px/1.231 arial,helvetica,clean,sans-serif;
   color: #000000;
}

body,div,p
{
   margin: 0;
   padding: 0;
}

div
{
	text-align: center;
}

ul
{
   text-align: left;
}

li
{
   padding: 0.2em;
}

div.panel
{
   display: inline-block;
}
   </style>
   <title>eBravo - Carregar Documento Validado</title>
</head>
<body>
   <div>
      <br/>
      <img src="/share/res/themes/default/images/app-logo.png">
      <br/>
      <br/>
      <p style="font-size:150%">Favor selecione o documento validado.</p>
      <br/>


		<form id="formupload" onsubmit="return validate();" action="${alfrescoURL}/alfresco/service/earq/solicitacaoaprovacaoupload" method="post" enctype="multipart/form-data" accept-charset="utf-8">
		<br/><br/><br/>
		Favor selecione o arquivo: <input type="file" id="file" name="file"><br/><br/>
		<input type="hidden" name="sharedID" value="${sharedID}"><br/><br/>
		<input type="hidden" name="nodeRef" value="${nodeRef}"><br/><br/>
	
		<input type="submit" name="submit" value="Carregar Arquivo"><br/>
		</form>


      <br/>
      <br/>
      <br/>
      <br/>
      <a href="http://www.earqconsultoria.com">eBravo</a> Inc. &copy; 2014-2015 All rights reserved.
   </div>
   <div>
   </div>
</div>
</body>
</html>


 