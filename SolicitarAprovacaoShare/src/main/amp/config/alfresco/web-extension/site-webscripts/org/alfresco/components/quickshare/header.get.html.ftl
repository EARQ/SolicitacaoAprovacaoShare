<@standalone>
   <@markup id="css" >
      <#-- CSS Dependencies -->
      <@link rel="stylesheet" type="text/css" href="${url.context}/res/components/quickshare/header.css" />
   </@>

   <@markup id="js"/>

   <@markup id="widgets"/>

   <@markup id="html">
      <@uniqueIdDiv>
         <div class="quickshare-header">

            <div class="quickshare-header-brand-colors">
               <div class="brand-bgcolor-6"></div>
               <div class="brand-bgcolor-5"></div>
               <div class="brand-bgcolor-4"></div>
               <div class="brand-bgcolor-3"></div>
               <div class="brand-bgcolor-2"></div>
               <div class="brand-bgcolor-1"></div>
               <div class="clear"></div>
            </div>

            <div class="quickshare-header-left">
               <img src="${url.context}/res/themes/${theme}/images/logo.png">
            </div>
            
            <script>
            	function custom(url, action ){
            		if(navigator.appName.indexOf("Internet Explorer")!=-1){
            			//target _black gera err no download de word
            			//a.target = "_blank";
            			window.location.href = url;
            		}else{
            			if(action=='DOWNLOAD'){
            				window.location.href = url+"?a=true";
            			}
            			else{
            				window.location.href = url;
            			}
            		}
            	}
            </script>
            <div class="quickshare-header-right">
               <@markup id="linkButtons">
                  <#list linkButtons as linkButton>
                     <a href="#" onclick="javascript:custom('${linkButton.href}', '${linkButton.label}');" class="brand-button ${linkButton.cssClass!""}" tabindex="0">${linkButton.label?html}</a>
                  </#list>
               </@markup>
            </div>

            <div class="clear"></div>

         </div>
      </@>
   </@>
</@>
