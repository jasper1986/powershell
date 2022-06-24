# Parameters
$adminURL = 'https://jportalnl-admin.sharepoint.com/'
$siteURL = 'https://jportalnl.sharepoint.com/sites/Test'
$groepNaam = 'G_SPS_Test_Members_Lezen'
$groepNaamNieuw = 'G_SPS_Test_Members_Bewerken'
$permissieLezen = 'Lezen'
$permissieBewerken = 'Bewerken'

# Installeer SharePoint Online module
Install-Module -Name Microsoft.Online.SharePoint.PowerShell

# Update SharePoint Online module
Update-Module -Name Microsoft.Online.SharePoint.PowerShell

# Connectie naar SharePoint Online
Connect-SPOService -url $adminURL

# Overzicht huidige SharePoint sites
Get-SPOSite | Select-Object Title, StorageQuota, Url

# Vraag informatie op van SharePoint site
Get-SPOSite -Identity $siteURL -Detailed | FL

# Maak nieuwe groep aan voor de SharePoint groep
New-SPOSiteGroup -Site $siteURL -Group $groepNaam -PermissionLevels $permissieLezen

# Bekijk alle SharePoint groepen
Get-SPOSiteGroup -Site $siteURL

# Bekijk SharePoint groep
Get-SPOSiteGroup -Site $siteURL -Group $groepNaam

# Groep naam wijzigen
Set-SPOSiteGroup -Site $siteURL -Identity $groepNaam -Name $groepNaamNieuw

# Groep naam permissies wijzigen
Set-SPOSiteGroup -Site $siteURL -Identity $groepNaam -PermissionLevelsToAdd $permissieBewerken -PermissionLevelsToRemove $permissieLezen

# Verwijder SharePoint groep
Remove-SPOSiteGroup -Site $siteURL -Identity $groepNaam

# Voeg gebruiker toe aan SharePoint groep
Add-SPOUser -Site $siteUrl -Group $groepNaam -LoginName test@jportal.nl 

# Verwijder gebruiker uit SharePoint groep
Remove-SPOUser -Site $siteUrl -Group $groepNaam -LoginName test@jportal.nl 

# Overzicht van alle groepen en gebruikers voor een SharePoint site
$groepen = Get-SPOSiteGroup -Site $siteURL
foreach ($groep in $groepen) {
    Write-Host $groep.Title -ForegroundColor "Yellow"
    Get-SPOSiteGroup -Site $siteURL -Group $groep.Title | Select-Object -ExpandProperty Users
    Write-Host
}