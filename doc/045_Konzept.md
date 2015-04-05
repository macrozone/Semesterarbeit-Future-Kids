\pagebreak

# Recherche ?

\pagebreak

# Konzept


Um die Anforderungen zu erfüllen kommen zwei prinzipielle Varianten in Frage:

## Variante 1: Automatisierte Zuweisung




## Variante 2: Bestehende Lösung (manuelle Zuweisung) optimieren

Die \ref{problemswithcurrentsolution}



## Entscheidung

Beide Varianten erfüllen alle Stories und können alle Probleme von Abschnitt \ref{problemswithcurrentsolution} erfüllen. Nach Rücksprache mit dem Auftraggeber wurde Variante 2 gewählt.

Häufig spielen bei der Wahl eines Mentors für einen bestimmen Schüler weitere Umstände 
eine Rolle, die die Administratoren von AOZ berücksichtigen müssen. Diese Kriterien können persönliche Einschätzungen sein oder andere Kriterien, welche nicht auf der Plattform abgebildet werden. Manchmal werden auch Rückfragen mit Mentoren getätigt, wenn beispielsweise Zeitfenster nicht genau passen oder ein Ersatz gesucht werden muss. Daher wird vom Auftraggeber eine manuelle Zuweisung bevorzugt. 

Die bestehende Lösung erfüllt teilweise bereits manche Anforderungen und soll daher gemäss Variante 2 optimiert werden. Die bestehende Lösung kann weiterhin immer noch um einen (teil-)automatiersten Prozess ergänzt werden.


## Feinkonzept: Bestehende Lösung (manuelle Zuweisung) optimieren



### Zeitfenster managment:

- evtl. gleich lassen wie bisher
- allenfalls balken ziehen per "drag"
- optisch anpassen, schüler und mentoren gleich
- Erst per klick bearbeitbar machen bei schüler

### Initiale Filter:

- [x] Verfügbare Mentoren (kein oder nur ein kind)
- [x] beide Geschlechter
- [x] alle Einsatzorte (oder nur einsatzort des schülers?)
- [x] alle Namen
- [x] ECTS und nicht ECTS
- [x] nur genaue überschneidung

### Optionen

- [ ] Nur m / w
- [ ] nur schule xy (a la select2)
- [ ] nur Mentor xy (a la select2)
- [ ] nur etcs ja / nein
- [ ] nur knappe / oder keine Überschneidung
- [ ] Mentoren mit bereits zwei kinder (evtl.)

### Namensfilter:

- ähnlich wie select2 oder rect-select, optionen sind bereits gefilterte Mentoren (?)
- Liste der verfügbaren mentoren sind irgendwo sichtbar evtl. oder anzahl wird angezeigt 
- damit soll man erkennen können, wiviele überhaupt in frage kommen

### Einsatzortfilter:

- ebenfalls wie namensfilter

### checkbox filter:

- hat immer *Alle* option welche alle anderen optionen anwählt?
- Alle = kein? --> macht bei geschlecht sinn

### Zeitfenster überschneidungs filter

Zeigt nur mentoren mit:

1. genaue überschneidung (gemäss \ref{sc-008}, 2h)
2. knappe überscneidung (gem$ss \ref{sc-009}, 1.5h)
3. alle (egal ob überschneidung oder nicht)

### Mögliche Darstellungen:

Kalender-Style mit jedem Mentor als Balken in einer farbe

*Problem*: funktioniert nicht gut bei vielen Mentoren

*Lösung*: limitieren? zeige beste 5 mentoren?

Kalender-Style mit jedem Mentor mit Namen (wie bisher)

*Problem*: bläht ansicht auf bei vielen mentoren

*Lösung*: ebenfalls limitieren?


### Layout

Filter Links / oben / unten / rechts?

-> Stundenplan soll genug platz haben, evtl. floating filters oder collapsable

--> Optisch klar hervorheben, was zeitfenster des schülers und was zeitfenster des mentors ist







