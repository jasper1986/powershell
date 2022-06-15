# Functie voor weergeven van menu keuzes
function DisplayMenu { 
    
    # Set parameters
    param (     
      [string]$Title = "Menu"   
    )   

    # Schrijf output naar het scherm
    Write-Host "================ $Title ================"   
    Write-Host "1: Functie 1"   
    Write-Host "2: Functie 2"   
    Write-Host "3: Functie 3"   
    Write-Host "Q: Typ 'Q' om te stoppen."   
    Write-Host "========================================`n" 
}

# Maak het scherm leeg
Clear-Host 

# Menu weergeven
DisplayMenu

# Input keuze
$keuze = Read-Host "Maak een keuze"

# Verwerk gemaakte keuze
switch ($keuze) {
  '1' { Optie1 } 
  '2' { Optie2 } 
  '3' { Optie3 } 
  'q' { return }
}

# Functie voor keuze optie: 1
function Optie1 {
    Clear-Host
    Write-Host "Functie: 1"
}

# Functie voor keuze optie: 2
function Optie2 {
    Clear-Host
    Write-Host "Functie: 2"
}

# Functie voor keuze optie: 3
function Optie3 {
    Clear-Host
    Write-Host "Functie: 3"
}