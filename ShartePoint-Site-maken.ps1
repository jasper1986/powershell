# Parameters
$module = 'Microsoft.Online.SharePoint.PowerShell'
$adminURL = 'https://jportalnl-admin.sharepoint.com/'
$siteURL = 'https://jportalnl.sharepoint.com/sites/Test'
$siteTitle = 'Test site'
$siteOwner = 'info@jportal.nl'
$template = 'SITEPAGEPUBLISHING#0'
$quota = 2048

# Installeer SharePoint Online module
Install-Module -Name Microsoft.Online.SharePoint.PowerShell

# Update SharePoint Online module
Update-Module -Name Microsoft.Online.SharePoint.PowerShell

# Connectie naar SharePoint Online
Connect-SPOService -Url $adminURL
 
# Maak een nieuwe communication site
New-SPOSite -Url $siteURL -Owner $siteOwner -Template $template -StorageQuota $quota -Title $siteTitle
