
\pagebreak

# Konzept


Um die Anforderungen zu erfüllen kommen zwei prinzipielle Varianten in Frage:

## Variante 1: Automatisierte Zuweisung

Ausgehend von den verfügbaren Zeitfenster von Mentoren und Schüler liesse sich die Zuweisung von Mentoren zu Schülern automatisieren. In dieser Variante soll ein geeignetes Verfahren zur Stundenplanautomatisierung gewählt werden, welches sich in die bestehende Lösung integrieren lässt. Dabei sollen sowohl fertige Lösungen (komerziell oder nicht-komerziell), als auch geeignete Frameworks, Bibliotheken oder Ansätze betrachtet werden.

### Das Stundenplanproblem

Prinzipiell handelt es sich beim Problem der Stundenplanerstellumg um ein NP-Vollständiges Problem [^fnTimetableNPComplete], lässt sich also bei grossen Eingabegrössen (z.b. viele Schüler und Lehrer) nicht effizient lösen. Da alle NP-Vollständigen Probleme "gleich schwer" im Sinne der Komplexitätstheorie sind, ist es also gleich schwer wie das "Problem des Handlungsreisenden" oder das "Rucksackproblem". Entsprechend kommen zur Lösung (oder vielfach auch nur Optimierung) des Problems ähnliche Verfahren zur Anwendung. 

Unter anderem können genetische Algorithmen für die Stundenplanerstellung verwendet werden [^fnGeneticAlgorithm]. Bei der im Jahre 2007 durchgeführten "International Timetabling Competition 2007" gewannen jedoch Verfahren in der Art der "Lokalen Suche" [^timetablestackoverflowitc2007].

In der Praxis müssen bei der Stundenplanerstellung viele Parameter und Randbedingungen beachtet werden, welche das Problem komplex machen können. Im vorliegenden Fall sind beispielsweise neben den Zeitfenstern von Schüler und Mentor auch die Einsatzorte der Mentoren zu berücksichtigen.


[^timetablestackoverflowitc2007]: Vgl. [@timetablestackoverflowitc2007]

[^fnTimetableNPComplete]: Vgl. [@timetablegenetics, Abschnitt 3.2.2]. Je nach Rahmenbedingungen können Stundenplanprobleme auch in P liegen,  vgl. [@timetablenpsidney, Abschnitt 3]

[^fnGeneticAlgorithm]: Siehe [@timetablegenetics, Abschnitt 4] 

### Verfügbare Lösungen zur Stundenplanerfestellung

**OptoPlanner** ist ein Werkzeug für Constraint-Satisfaction-Probleme (CSP, Bedingungserfüllungsproblememe) (Siehe [@optoplanner]) und kann prinzipiell auch für die Erstellung von Stundenplänen genutzt werden.

**UniTime** ist ein Quelloffenes System für die Erstellung von Stundenplänen insbesondere für Universitäten und war unter den Finalisten des "International Timetabling Competition 2007" [^fnunitime].

**FET - Free Timetabling Software** ist ein weiterer Quelloffenes Programm zur Stundenplanerstellung von Schulen und Universitäten [^fnFet]

[^fnFet]: Vgl. [@fet].

[^fnunitime]: Vgl. [@unitimeconstraintsolver] und [@timetablestackoverflowitc2007]

Es existieren zahlreiche weitere Verfahren und Lösungen (sowohl komerziell als auch nicht-komerziell). 


### Diskussion

Diese Variante löst die Bedienprobleme aus \ref{problemswithcurrentsolution}, indem keine oder nur wenige Bedienelemente notwendig gemacht werden, um Mentoren den Schülern zuzuweisen.

Ebenfalls erfüllt sie wichtige Stories aus \ref{userstories}, macht Stories 9-14 allerdings überflüssig, da diese der Auswahl eines mentors helfen.

**Vorteile**:

- Kein oder nur minimales User-interface benötigt
- Dadurch gute Bedienbarkeit

**Nachteile**:

- Der Algorithmus muss sämtliche Randbedingungen berücksichtigen, da manuelle Anpassungen nur umständlich gemacht werden können
- Algorithmus muss entsprechend angepasst werden
- Integration eines Fremdsystem ist aufwendig (insb. falls fertige Lösung) und kann das das Setup der Lösung erschweren.


## Variante 2: Bestehende Lösung (manuelle Zuweisung) optimieren

Die bestehende Lösung erfüllt bereits die Stories 1-8 aus Abschnitt \ref{userstories}, jedoch ist die Bedienbarkeit durch die erwähnten Probleme in Kapitel \ref{problemswithcurrentsolution} eingeschränkt. Diese können jedoch mit geeigneten Massnahmen gelöst werden. Insbesondere dienen Stories 9-14 als wichtige Hilfestellungen bei der Wahl eines Mentores, welche im Moment noch Fehlen.

In dieser Variante soll erarbeitet werden, mit welchen Konzepten die bestehende Lösung um sämtliche Stories aus \ref{userstories} ergänzt werden kann und welche Massnahmen notwendig sind um die Probleme in \ref{problemswithcurrentsolution} zu lösen.

### Mögliche Problemlösungen

\ref{prob-01}: *Doppelnutzung von Bedienelementen*

**Lösung**:

Bearbeitung der Zeitfenster eines Schülers soll von der Einsatzplanung des Mentors getrennt werden (visuell und funktional). Eine Möglichkeit wäre, das Bearbeiten der Zeitfenster des Schülers erst nach Aktivieren einer Schaltfläche (*Schüler-Zeitfenster bearbeiten*) zu ermöglichen. Damit ist klarer, welche Aktion gerade ausgeführt wird.

\ref{prob-02}: *Irritierende Bedienelemente*

**Lösung**: 

- Doppelte und inaktive Schaltflächen entfernen
- Bedienelemente klar beschriften.

\ref{prob-03}: *Unübersichtlich bei vielen Mentoren*

**Lösung**:

- Mentorennamen kürzen und kleiner darstellen
- Mit Farben oder Symbolen arbeiten pro Mentor
- Mentoren, welche nicht in Frage kommen, ausblenden oder anders darstellen.


\ref{prob-04}: *Zu viele Klicks*


**Lösung**:

Es soll direkt aus der Stundenplanung heraus ein Mentor ausgewählt und dem Schüler zugewiesen werden können.

\ref{prob-05}: *Mentorenauswahl benötigt zusätzliches Wissen*

**Lösung**:

Gemäss Anforderung im Abschnitt \ref{userstories} sollen Mentoren nach bestimmten Kriterien, wie Geschlecht, Name und Einsatzort ausgewählt werden können. Diese Kriterien können als Filter implementiert werden, welche passende Mentoren einblendet oder unpassende ausblendet.


### Diskussion


**Vorteile**:

- Konzept der bestehenden Lösung wird beibehalten
- Genaue Anpassung an Kundenwunsch möglich
- Kein Fremdsystem notwenig

**Nachteile**:

- Aufwendige Anpassungen der Bedienelemente notwendig



## Entscheidung

Beide Varianten erfüllen alle Stories und können alle Probleme von Abschnitt \ref{problemswithcurrentsolution} erfüllen. Nach Rücksprache mit dem Auftraggeber wurde Variante 2 gewählt.

Häufig spielen bei der Wahl eines Mentors für einen bestimmen Schüler weitere Umstände 
eine Rolle, die die Administratoren von AOZ berücksichtigen müssen. Diese Kriterien können persönliche Einschätzungen sein oder andere Kriterien, welche nicht auf der Plattform abgebildet werden. Manchmal werden auch Rückfragen mit Mentoren getätigt, wenn beispielsweise Zeitfenster nicht genau passen oder ein Ersatz gesucht werden muss. Daher wird vom Auftraggeber eine manuelle Zuweisung bevorzugt. 

Die bestehende Lösung erfüllt teilweise bereits manche Anforderungen und soll daher gemäss Variante 2 optimiert werden. Die bestehende Lösung kann zukünftig immer noch um einen (teil-)automatiersten Prozess ergänzt werden.


## Feinkonzept: Bestehende Lösung (manuelle Zuweisung) optimieren



### Zeitfenster-Management von Schülern und Mentoren

Die bestehende Lösung verfügt bereits über Bedienelemente zum Erfassen von Zeitfenster von Schülern und Mentoren. Diese kann weiterhin genutzt werden. Um Problem \ref{prob-01} zu lösen, muss die Funktion bei den Schülern aber getrennt werden von der Zuweisung eines Mentores

- Bedienelement mit Checkboxen beibehalten
- Optional Zeitfenster auswählbar mit "Drag" analog Kalender-Applikationen
- Optisch anpassen, sodass das Bedienelement bei Schüler und Mentoren gleich funktioniert
- Bei Schülern erst durch Klick auf eine Schaltfläche bearbeitbar machen (löst Problem \ref{prob-01})
- Schaltfläche *Stundenplandaten speichern* entfernen, sofern nicht gebraucht. *Auswahl bestätigen* ebenfalls entfernen 

### Mentoren Auswahl

TODO: layout mock



### Filter:

- [x] Verfügbare Mentoren (kein oder nur ein Schüler zugeweisen)
- [x] Männlich / Weiblich
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







