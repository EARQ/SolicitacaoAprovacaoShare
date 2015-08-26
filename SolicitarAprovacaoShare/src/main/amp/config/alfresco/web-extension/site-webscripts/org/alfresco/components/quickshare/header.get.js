function main() {
	var shareId = args.shareId;
	var requestAproval = url.args[1];
	var tenant = url.args[2];

	model.linkButtons = [];
	
	
	
	if (requestAproval!=shareId) {

			model.linkButtons
			.push({
				id : "document-details",
				href : "/share/proxy/alfresco-noauth/api/internal/shared/node/content/"+shareId+"",
				label : "DOWNLOAD",
				cssClass : "brand-bgcolor-6"
			});
			model.linkButtons
			.push({
				id : "document-details",
				href : "/share/page/aprovacaoupload?sharedID="
						+ args.shareId +"&ra="+requestAproval,
				label : "Carregar documento aprovado",
				cssClass : "brand-bgcolor-2"
			});
	} 
	else{
		// Login link
		if (user && user.isGuest) {
		
				model.linkButtons.push({
					id : "login",
					href : url.context,
					label : msg.get("button.login"),
					cssClass : "brand-bgcolor-2"
				});
			
	
		}
		if (args.loginLink == "document-details") {
			var result = remote.connect("alfresco").get(
					"/api/internal/shared/node/" + encodeURIComponent(shareId)
							+ "/read");
			if (result.status == 200) {
				var nodeMetadata = JSON.parse(result);
				if (nodeMetadata.canRead == true) {
					model.linkButtons.push({
						id : "document-details",
						href : url.context + "/page/quickshare-redirect?id="
								+ args.shareId,
						label : (user && user.isGuest) ? msg.get("button.login")
								: msg.get("button.document-details"),
						cssClass : "brand-bgcolor-2"
					});
				}
			}
		}
	}
}

main();
