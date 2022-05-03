Dobrý den, Mé jméno je Vladimír Skoumal a V tomto videu vám zjednodušeně popíšu problematiku projektu do předmětu Digitální elektronika 1.
Společně s kolegy máme za úkol naprogramovat a implementovat na desku - měření rychlosti objektu, který projde, proletí,
proběhne přes 4 IR sensory. Takto vypadá TOP modul tohoto projektu. Vše začíná u sensorů, používáme, jak už jsem říkal, 4 sensory, konkrétně sensory HW-201,
 Tento sensor je schopný detekovat objekty pomocí infračervených vln,
je složen ze 2 základních částí a to z IR vysílače a IR přijímače. Má jediný výstup, který nabývá stavu HIGH pokud senzor nic nedetekuje, a stavu
LOW, pokud detekuje objekt.

Senzory jsou přivedeny na 4 moduly speed_measure přes Pmody JA1, JA2, JB1 a JB2.
Protože pohyb objektu zaznamenáváme pomocí 4 senzorů, rozdělujeme rychlost do 3 sekcí (mezi sensory) a 
jednu průměrnou rychlost přes všechny sensory. Proto používáme 4 speed_measure moduly.

Tyto moduly jsou aktivovány a i naopak deaktivovány jednotlivými sensory. Například pokud sensor 1 zachytí pohyb - aktivuje modul č.1
a jakmile zachytí pohyb 2. sensor, aktivuje 2. modul a zároveň deaktivuje 1. modul a tak dále.
Moduly Speed_measure mají 3 důležité generické proměnné, se kterými pracují, -g_dist- která znazornuje vzdalenost 
mezi sensory, -g_active- která pouze říká v jakém stavu je sensor aktivní a -g_clk- jakožto frekvenci clocku signalu. Samotný algoritmus pak vypočítá rychlost v metrech za sekundu kterou potom předá dál jako reálné číslo.

Všechny 4 rychlosti jsou potom předány modulu real_switch

Tento modul funguje jako multiplexor, switchuje (přepíná) 
mezi 4 rychlostmi, které jsou přivedeny na vstup. Výstup z modulu real_switch je tedy jedna z těchto 4 rychlostí.

Tento signál pokračuje do modulu real_to_hex, 
který slouží pro převedení reálného čísla na hexadecimální formát, jelikož poslední modul driver_display potřebuje na vstupu hexadecimální hodnotu a informaci o desetinné čárce. 
Algoritmus je založen na zaokrouhlování reálného čísla funkcí 
floor() a podle zaokrouhlené hodnoty určitého řádu nastavení jednotlivých 4bitových výstupů na hexadecimální hodnoty odpovídající 
zaokrouhleným veličinám.

Jako poslední modul je driver_7digit_display, který jsme v podstatě využívali na cvičení.

Bohužel jsme nezvládli finální implementaci, protože deska Nexys A7 nezvládne pracovat s reálnými čísly.
Tento problém jsme se snažili obejít shiftováním, jak je uvedeno v Unused VHDL modules, ale bohužel jsme ho nedokázali obejít, a tak jsme skončili u simulace.
Přesto jsme alespoň vyzkoušeli implementovat jednoduchý kód na desku s připojeným sensorem a tím si ověřili, jak sensor funguje.