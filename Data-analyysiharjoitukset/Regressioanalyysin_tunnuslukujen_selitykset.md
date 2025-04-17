# Regressioanalyysin tunnuslukujen selitykset

Kuvassa näkyy Excelin regressioanalyysin tulostus ("YHTEENVETOTULOSTUS"), joka sisältää useita tilastollisia tunnuslukuja. Tässä selitykset niistä:

## 1. Regressiotilastot (Regression Statistics)

Nämä luvut kuvaavat mallin yleistä sopivuutta dataan.

* **`Kerroin R` (Multiple R):** `0,934...`
    * Tämä on korrelaatiokerroin. Se kertoo, kuinka vahva *lineaarinen* yhteys selittävän muuttujan (tässä `Mainoskulut`) ja selitettävän muuttujan (`Myynti`) välillä on. Arvo on lähellä 1:tä, mikä tarkoittaa erittäin vahvaa positiivista lineaarista yhteyttä: kun mainoskulut kasvavat, myös myynti kasvaa.
* **`Kerroin R^2` (R Square):** `0,873...` (eli 87,3 %)
    * Tämä on selitysaste. Se kertoo, kuinka suuri osa selitettävän muuttujan (`Myynti`) vaihtelusta voidaan selittää mallin avulla (eli `Mainoskulut`-muuttujan vaihtelulla). Tässä tapauksessa noin 87,3 % myynnin vaihtelusta selittyy mainoskulujen vaihtelulla. Mitä lähempänä 100 %:a, sitä paremmin malli sopii dataan.
* **`Korjattu kerroin R^2` (Adjusted R Square):** `0,855...` (eli 85,5 %)
    * Tämä on selitysaste, joka on korjattu selittävien muuttujien määrän suhteen. Se on usein `R^2`:ta luotettavampi mittari, kun verrataan malleja, joissa on eri määrä selittäviä muuttujia. Tässä tapauksessa se on hieman alempi kuin `R^2`, mikä on normaalia.
* **`Keskivirhe` (Standard Error):** `110,92...`
    * Tämä kuvaa keskimääräistä virhettä mallin ennusteissa eli sitä, kuinka paljon havaitut arvot keskimäärin poikkeavat regressiosuoran ennustamista arvoista. Pienempi keskivirhe tarkoittaa parempaa mallin sopivuutta.
* **`Havainnot` (Observations):** `12`
    * Analyysissä käytettyjen havaintoparien (`mainoskulu`-`myynti`) lukumäärä.

## 2. ANOVA (Varianssianalyysi)

Tämä taulukko testaa mallin kokonaistilastollista merkitsevyyttä.

* **`Merkittävyys F` (Significance F):** `1,80065E-05` (eli noin 0,000018)
    * Tämä on F-testin p-arvo. Se testaa nollahypoteesia, jonka mukaan *mikään* mallin selittävistä muuttujista ei selitä selitettävän muuttujan vaihtelua (eli kaikki regressiokertoimet ovat nollia, paitsi vakiotermi). Koska p-arvo on erittäin pieni (paljon pienempi kuin yleisesti käytetty merkitsevyystaso `0,05`), nollahypoteesi hylätään. Tämä tarkoittaa, että malli on kokonaisuudessaan tilastollisesti merkitsevä – ainakin yksi selittävä muuttuja (tässä `Mainoskulut`) vaikuttaa `Myyntiin`.
* **`F`:** `391,39...`
    * Tämä on F-testisuure, josta `Merkittävyys F` lasketaan. Suuri F-arvo viittaa siihen, että malli selittää merkittävän osan vaihtelusta.

## 3. Kertoimet (Coefficients), Keskivirheet, t-tilastot ja P-arvot

Tämä osuus kertoo yksittäisten muuttujien vaikutuksesta ja merkitsevyydestä.

* **`Vakiotermi` (Intercept):** Kerroin (Coefficient) = `486,48...`
    * Tämä on regressiosuoran leikkauspiste y-akselin kanssa. Se on mallin ennustama myynnin arvo, kun `Mainoskulut` ovat `0 €`.
* **`Mainoskulut (€)`:** Kerroin (Coefficient) = `16,12...`
    * Tämä on `Mainoskulut`-muuttujan regressiokerroin (kulmakerroin). Se kertoo, kuinka paljon myynnin ennustetaan muuttuvan, kun mainoskuluihin käytetään yksi euro lisää. Tässä tapauksessa yhden euron lisäys mainoskuluihin kasvattaa ennustettua myyntiä noin 16,12 eurolla.
* **`P-arvo` (P-value) `Mainoskulut (€)`-rivillä:** `1,8E-05` (eli noin 0,000018)
    * Tämä on t-testin p-arvo `Mainoskulut`-kertoimelle. Se testaa nollahypoteesia, jonka mukaan juuri tämän muuttujan kerroin on nolla (eli muuttujalla ei ole vaikutusta). Koska p-arvo on erittäin pieni, nollahypoteesi hylätään. Tämä tarkoittaa, että `Mainoskulut` on tilastollisesti merkitsevä myynnin selittäjä tässä mallissa.
* **`Alempi 95%` ja `Ylempi 95%`:** Nämä määrittelevät 95 %:n luottamusvälin kertoimille.
    * `Mainoskulut`-kertoimen luottamusväli on noin [`14,35` , `17,90`]. Koska tämä väli ei sisällä nollaa, se vahvistaa johtopäätöksen, että mainoskuluilla on tilastollisesti merkitsevä (positiivinen) vaikutus myyntiin.

### Yhteenveto

Analyysin perusteella mainoskuluilla on vahva, positiivinen ja tilastollisesti erittäin merkitsevä vaikutus myyntiin, ja malli selittää suuren osan (noin `87 %`) myynnin vaihtelusta.