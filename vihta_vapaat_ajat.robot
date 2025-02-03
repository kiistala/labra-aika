*** Settings ***
Library     Browser
Library     Collections

*** Variables ***


*** Tasks ***
Vihta, Vapaat ajat
    New Browser    chromium    headless=Yes
    Show Keyword Banner     True
    New Page      https://secure.vihta.com/public-ng/hus/#/reservation
    Set Viewport Size   2560  1440
    Set Browser Timeout    5 sec
    Click  button.close-bubble
    Click  //button[contains(./span, "Valitse alue")]
    Click  "Keski-Uudenmaan hyvinvointialue"
    Click  //button[contains(@aria-label, "Valitse palvelu: Ei valintaa")]
    Click  //a[contains(.//text(), "Näytteenotto")]

    # Click with Options  //li[contains(.//*/text(), "Nurmijärvi : Klaukkalan laboratorio")]/a  force=True
    Click  //button[contains(@aria-label, "Valitse toimipiste: Ei valintaa")]
    Hover  //li[contains(.//*/text(), "Nurmijärvi : Klaukkalan laboratorio")]/a
    Click With Options  //li[contains(.//*/text(), "Nurmijärvi : Klaukkalan laboratorio")]/a  force=True

    # Saavutettavuus-checkbox
    # Click  id=accessible-selector-checkbox
    # Take Screenshot  saav

    # Click   Hae vapaat ajat
    # Click  //button[contains(.//*/text(), "Hae vapaat ajat")]

    #${elements} =    Get Elements  //button[contains(.//*/text(), "Hae vapaat ajat")]
    #${elem} =    Get From List    ${elements}    0
    #Highlight Elements  ${elem}
    #Take Screenshot  hovered
    #Mouse Button  click

    Click  //button[@data-ng-click="searchDesktop()"]    

    # Click with  ${elem} 
    # Sleep  4 
    #Take Screenshot  more

    # Click  //a[contains(text(), "Lisää")]
    Set Strict Mode  False
    # Click With Options  div.freeTimeMore > a.btn  force=True
    Take Screenshot  ${OUTPUT_DIR}${/}Huslab_Nurmijarvi
    # Log  ${OUTPUT_DIR}

    # TODO: Click
    # @data-ng-controller=ReservationTimesGridDesktopCtrl
    
