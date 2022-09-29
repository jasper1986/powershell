# Functie: Menu optie weergeven
function MenuOption {

    # Functie parameters
    param (     
        [ValidateNotNullOrEmpty()]    
        [Parameter(Mandatory=$true)]
        [string]$option,
        [ValidateNotNullOrEmpty()]    
        [Parameter(Mandatory=$true)]
        [string]$name
    )

    # Schrijf output naar het scherm
    Write-Host "  [" -NoNewline
    Write-Host $option -NoNewline -ForegroundColor Cyan
    Write-Host "] " -NoNewline
    Write-Host $name
}

do {
    # Scherm leegmaken
    Clear-Host

    # Schrijf output naar het scherm
    Write-Host "================ " -NoNewline
    Write-Host "Hoofdmenu" -NoNewline -ForegroundColor Yellow
    Write-Host " ================`n"   

    MenuOption -option "1" -name "Submenu 1"
    MenuOption -option "2" -name "Submenu 2"
    MenuOption -option "3" -name "Submenu 3"
    MenuOption -option "Q" -name "Typ 'Q' om te stoppen."
    
    Write-Host "`n===========================================`n" 

    # Selecteer een optie
    $mainMenu = Read-Host -Prompt 'Maak een keuze'

    # Verwerk keuze
    switch ($mainMenu) {
        
        1 {
            do {

                # Scherm leegmaken
                Clear-Host

                # Schrijf output naar het scherm
                Write-Host "================ " -NoNewline
                Write-Host "Submenu 1" -NoNewline -ForegroundColor Yellow
                Write-Host " ================`n"   

                MenuOption -option "1" -name "Keuze 1"
                MenuOption -option "B" -name "Hoofdmenu."
                MenuOption -option "Q" -name "Typ 'Q' om te stoppen."
                
                Write-Host "`n===========================================`n" 

                # Selecteer een optie
                $subMenu1 = Read-Host -Prompt 'Maak een keuze'

                # Verwerk keuze
                switch ($subMenu1) {
                    1 { 
                        do {
                            # Scherm leegmaken
                            Clear-Host

                            # Schrijf output naar het scherm
                            Write-Host "================ " -NoNewline
                            Write-Host "Script 1" -NoNewline -ForegroundColor Yellow
                            Write-Host " ================`n"   
                            Write-Host "  Plaats hier de code voor Submenu1: script 1`n"

                            MenuOption -option "B" -name "Terug naar Submenu1."
                
                            Write-Host "`n==========================================`n" 

                            # Selecteer een optie
                            $script1 = Read-Host -Prompt 'Maak een keuze'

                        }
                        until ($script1 -eq "b")
                      }
                    q { Exit 0 }
                }
            }
            until ($subMenu1 -eq "b")
        }
        2 {
            do {

                # Scherm leegmaken
                Clear-Host

                # Schrijf output naar het scherm
                Write-Host "================ " -NoNewline
                Write-Host "Submenu 2" -NoNewline -ForegroundColor Yellow
                Write-Host " ================`n"   

                MenuOption -option "1" -name "Keuze 1"
                MenuOption -option "B" -name "Hoofdmenu."
                MenuOption -option "Q" -name "Typ 'Q' om te stoppen."
                
                Write-Host "`n===========================================`n" 

                # Selecteer een optie
                $subMenu2 = Read-Host -Prompt 'Maak een keuze'

                # Verwerk keuze
                switch ($subMenu2) {
                    1 { 
                        do {
                            # Scherm leegmaken
                            Clear-Host

                            # Schrijf output naar het scherm
                            Write-Host "=============== " -NoNewline
                            Write-Host "Script 2" -NoNewline -ForegroundColor Yellow
                            Write-Host " ================`n"   
                            Write-Host "  Plaats hier de code voor Submenu2: script 2`n"

                            MenuOption -option "B" -name "Terug naar Submenu2."
                
                            Write-Host "`n==========================================`n" 

                            # Selecteer een optie
                            $script2 = Read-Host -Prompt 'Maak een keuze'

                        }
                        until ($script2 -eq "b")
                      }
                    q { Exit 0 }
                }
            }
            until ($subMenu2 -eq "b")
        }
        3 {
            do {

                # Scherm leegmaken
                Clear-Host

                # Schrijf output naar het scherm
                Write-Host "================ " -NoNewline
                Write-Host "Submenu 3" -NoNewline -ForegroundColor Yellow
                Write-Host " ================`n"   

                MenuOption -option "1" -name "Keuze 1"
                MenuOption -option "B" -name "Hoofdmenu."
                MenuOption -option "Q" -name "Typ 'Q' om te stoppen."
                
                Write-Host "`n===========================================`n" 

                # Selecteer een optie
                $subMenu3 = Read-Host -Prompt 'Maak een keuze'

                # Verwerk keuze
                switch ($subMenu3) {
                    1 { 
                        do {
                            # Scherm leegmaken
                            Clear-Host

                            # Schrijf output naar het scherm
                            Write-Host "================ " -NoNewline
                            Write-Host "Script 3" -NoNewline -ForegroundColor Yellow
                            Write-Host " ================`n"   
                            Write-Host "  Plaats hier de code voor Submenu3: script 3`n"

                            MenuOption -option "B" -name "Terug naar Submenu3."
                
                            Write-Host "`n==========================================`n" 

                            # Selecteer een optie
                            $script3 = Read-Host -Prompt 'Maak een keuze'

                        }
                        until ($script3 -eq "b")
                      }
                    q { Exit 0 }
                }
            }
            until ($subMenu1 -eq "b")
        }
    }
}
until ($mainMenu -eq "Q")