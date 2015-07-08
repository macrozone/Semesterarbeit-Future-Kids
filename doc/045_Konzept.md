
\pagebreak

# Konzept


Um die grundlegenden Anforderungen zu erfüllen kommen zwei prinzipielle Varianten in Frage:

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

Ebenfalls erfüllt sie wichtige Stories aus \ref{userstories}, macht Stories 9-14 allerdings überflüssig, da diese der Auswahl eines Mentors helfen.

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

### Diskussion

Die bestehende Lösung erfüllt teilweise bereits die Anforderungen, Probleme liegen bei der Bedienbarkeit, der Übersicht und 
der Informationsdarstellung. Werden diese Probleme gezielt angegangen, kann die bestehende Lösung schrittweise verbessert werden.

**Vorteile**:

- Konzept der bestehenden Lösung wird beibehalten
- Genaue Anpassung an Kundenwunsch möglich
- Kein Fremdsystem notwenig
- Automatisierung zusätzlich immer noch möglich

**Nachteile**:

- Aufwendige Anpassungen der Bedienelemente notwendig



## Entscheidung

Beide Varianten erfüllen alle Stories und können alle Probleme von Abschnitt \ref{problemswithcurrentsolution} erfüllen. Nach Rücksprache mit dem Auftraggeber wurde Variante 2 gewählt.

Häufig spielen bei der Wahl eines Mentors für einen bestimmen Schüler weitere Umstände 
eine Rolle, die die Administratoren von AOZ berücksichtigen müssen. Diese Kriterien können persönliche Einschätzungen sein oder andere Kriterien, welche nicht auf der Plattform abgebildet werden. Manchmal werden auch Rückfragen mit Mentoren getätigt, wenn beispielsweise Zeitfenster nicht genau passen oder ein Ersatz gesucht werden muss. Daher wird vom Auftraggeber eine manuelle Zuweisung bevorzugt. 

Die bestehende Lösung erfüllt teilweise bereits manche Anforderungen und soll daher gemäss Variante 2 optimiert werden. Die bestehende Lösung kann zukünftig immer noch um einen (teil-)automatiersten Prozess ergänzt werden.


## Feinkonzept: Bestehende Lösung (manuelle Zuweisung) optimieren

### Erfüllung der Anforderungen



\ref{sc-001} - \ref{sc-004} 

Diese Stories umfassen das Erfassen und Anzeigen der Zeitfenster von Mentoren und Schüler. 
Sie werden bereits in der aktuellen Lösung erfüllt, allerdings existiert die erwähnte Doppel-Nutzung des Stundenplans wie in \ref{nfr-01}: *Doppelnutzung von Bedienelementen* geschildert:



**Massnahmen**:

\ref{nfr-01}: *Doppelnutzung von Bedienelementen*,

Bearbeitung der Zeitfenster eines Schülers soll von der Einsatzplanung des Mentors getrennt werden (visuell und funktional). Eine Möglichkeit wäre, das Bearbeiten der Zeitfenster des Schülers erst nach Aktivieren einer Schaltfläche (*Schüler-Zeitfenster bearbeiten*) zu ermöglichen. Damit ist klarer, welche Aktion gerade ausgeführt wird.

\ref{nfr-02}: *Irritierende Bedienelemente*

- Doppelte und inaktive Schaltflächen entfernen
- Bedienelemente klar beschriften.

\ref{sc-005}, \ref{sc-006}, \ref{sc-007}, \ref{sc-015}

Die bisherige Lösung sieht für die Zuweisung eines Mentors ein Feld in der Editier-Maske eines Schülers vor, ebenso kann dort vermerkt werden, ob wer als Ersatzmentor vermerkt ist und ob dieser aktiv ist. Weiterhin kann ein Wochentag und Zeitpunkt des Treffens erfasst werden gemäss Anforderung \ref{sc-015}.

**Massnahmen**:

Diese Bedienelemente können weitgehend beibehalten werden.

Bei der Zusweisung von Mentor und Termin muss dieser aber bereits bekannt sein, d.h. ein Administrator 
muss bereits einen passenden Mentor und Termin gefunden haben, doch der Prozes des Findens eines Mentores
ist in der bisherigen Lösung noch getrennt von der Zuweisung des Mentors; der Bildschirm, welcher
die Mentorensuche ermöglicht, erlaubt es nicht, einen Mentor auch zuzuweisen. 
Dies widerspiegelt sich in den folgenden Anforderungen:

\ref{nfr-04}: *Ausführen einer Aktion soll wenige Klicks benötigen*, sowie
\ref{nfr-05}: *Ein Benutzer hat in einer Komponente alle Informationen für eine Entscheidung oder Aktion zur Verfügung*

Es soll direkt aus der Komponente, welche das Finden eines Mentors erlaubt, heraus ein Mentor, sowie Termin ausgewählt und dem Schüler zugewiesen werden können. Dadurch muss sich ein Administrator nicht Mentor und Treffpunkt merken.

\ref{sc-008}, \ref{sc-009}

Diese Stories sollen einem Administrator ermöglichen, Mentoren zu finden, welche mit dem Schüler überschneidende Zeitfenster haben. Gemäss Gespräch mit dem dem Auftraggeber kann es aber auch sein, dass bei knappen Überschneidungen Rücksprache mit dem Mentor genommen werden kann. 



**Massnahmen**

Diese Funktion ist in der aktuellen Lösung implementiert, allerdings leidet die Übersicht wenn viele Mentoren für den Vergleich ausgewählt werden, wie in Abbildung \ref{screenshot_kid_compare_mentors} zu sehen. Dazu wurde die folgende Anforderung erstellt: 

\ref{nfr-03}: *Bedienung bleibt übersichtlich unabhängig von der Anzahl Mentoren*

- Mentorennamen kürzen und kleiner darstellen
- Mit Farben oder Symbolen arbeiten pro Mentor
- Mentoren oder Zeitfenster, welche nicht in Frage kommen, ausblenden oder anders darstellen.

Weiterhin stehen neben den Zeitfenstern des Kindes und des Mentors keine weiteren Informationen zur Verfügung, 
es können lediglich Mentoren danach vorselektiert werden, ob sie bereits ein Kind betreuen oder nicht. Dazu ist aber ein Wechsel des Bildschirms nötig.

\ref{nfr-05}: *Ein Benutzer hat in einer Komponente alle Informationen für eine Entscheidung oder Aktion zur Verfügung*

Gemäss den Stories \ref{sc-010}, \ref{sc-011}, \ref{sc-012}, \ref{sc-013} sollen Mentoren nach bestimmten Kriterien, wie Geschlecht, Name und Einsatzort ausgewählt werden können. Diese Kriterien können als Filter implementiert werden, welche passende Mentoren einblendet oder unpassende ausblendet.

Diese Filter sollen ohne Wechsel des Bildschirms benutzbar sein und jederzeit klar ersichtlich machen, welche Mentoren sichtbar sind.

Weiterhin kann es Sinn machen, Mentoren mit nicht passenden Zeitfenstern nicht gänzlich herauszufiltern, sondern auf grafische Weise zu visualisieren, ob und wie lange sich die Zeitfenster überschneiden. Es kann auch möglichsein, dass bei einem Mentoren noch keine Zeitfenster erfasst wurden. Eine Grafische Lösung macht hier daher Sinn und erfüllt weitgehend \ref{nfr-05}, dass ein Administrator jederzeit alle nötigen Informationen zur Hand hat.


\ref{sc-010}

Das Geschlecht eines Mentors kann in der aktuellen Lösung nicht erfasst werden, das Geschlecht eines Schülers hingegen schon. D.h. die grundsätzlichen Mechanismen dazu existieren bereits.

**Massnahmen**:

- Es soll eine Datenmigration durchgeführt werdne, welche allen Mentoren ein Feld "Geschlecht" hinzufügen.
- Es sollen Eingabemasken von Mentoren ergänzt werden, damit diese Information abgelegt werden kann
- Die Profilseite eines Mentors soll diese Information anzeigen
- Bei der Mentorensuche für einen Schüler sollen Mentoren nach dem Geschlecht gesucht oder gefiltert werden können
- Das Verhalten bei nicht zugewiesenem Geschlecht muss definiert werden.


\ref{sc-011}

Das Feld, ob ein Mentor mit ECTS-Punkten vergütet wird oder nicht, ist bereits vorhanden

**Massnahmen**:

- Bei der Mentorensuche für einen Schüler sollen Mentoren nach diesem Kriterium gesucht oder gefiltert werden können.

\ref{sc-012}

Der Einsatzort (d.h. eine Schule) eines Mentors nach Betrachtung des Datenmodells nicht direkt einem Mentor zugeweisen, sondern entspricht der Schule des Kindes, dem der Mentor zugewiesen ist. 

Dadurch ist diese Information nur für Mentoren verfügbar, die aktuell ein Kind betreuen.

**Massnahmen**:

- Bei der Mentorensuche für einen Schüler sollen Mentoren nach diesem Einsatzort gesucht oder gefiltert werden können.


\ref{sc-013}

Diese Funktion ist, wie oben erwähnt in der aktuellen Version bereits implementiert. (Siehe Abbildung \ref{screenshot_kid_timetable_mentors}). Allerdings muss dazu die Ansicht gewechselt werden.

**Massnahmen**:

Diese Funktionalität soll gleichartig wie die Suche nach passendem Geschlecht, Einsatzort oder anderen Kriterien umgesetzt werden.

\ref{sc-014}

Die Suche nach Mentoren per Name für die Auswahl kann ebenfalls als Filter implementiert werden.




### Zeitfenster-Management von Schülern und Mentoren

Die bestehende Lösung verfügt bereits über Bedienelemente zum Erfassen von Zeitfenster von Schülern und Mentoren. Diese kann weiterhin genutzt werden. Um Problem \ref{nfr-01} zu lösen, muss die Funktion bei den Schülern aber getrennt werden von der Zuweisung eines Mentores

- Bedienelement mit Checkboxen beibehalten
- Optional Zeitfenster auswählbar mit "Drag" analog Kalender-Applikationen
- Optisch anpassen, sodass das Bedienelement bei Schüler und Mentoren gleich funktioniert
- Bei Schülern erst durch Klick auf eine Schaltfläche bearbeitbar machen (löst Problem \ref{nfr-01})
- Schaltfläche *Stundenplandaten speichern* entfernen, sofern nicht gebraucht. *Auswahl bestätigen* ebenfalls entfernen 

### Mentoren Auswahl

TODO: layout mock



### Filter

Die Filter reduzieren die Mentoren für die Suche nach Kriterien, die jeweils mit UND verknüpft werden,
d.h. Geschlecht=m und ECTS=true wird alle männlichen Mentoren anzeigen, welche ECTS Punkte bekommen.

#### Geschlecht

Hat drei Zustände: nichts ausgewählt, m oder f.

Ist nichts ausgewählt, so wird nicht nach Geschlecht gefiltert

#### ECTS

Hat drei Zustände: nichts ausgewählt, true oder false:

- ECTS=true: alle Mentoren, die ECTS-Punkte bkeommen
- ECTS=false: alle Mentoren, die nicht ECTS-Punkte bekommen
- nichts ausgewählt: es wird nicht nach dem Kriterium gefiltert.

#### Einsatzort

Zeigt alle Schulen an. Wird eine Schule ausgewählt, werden nur Mentoren angezeigt, die an dieser Schule aktiv sind.

#### Anzahl betreute Kinde

Hat folgende Werte:

- 0-1: Zeigt alle Mentoren, die kein oder ein Kind betreuen
- 0: Zeigt alle Mentoren, die kein Kind betreuen.
- 1: Zeigt Mentoren, die genau ein Kind betreuen
- 2: Zeigt Mentoren, die bereits zwei Kinder betreuen
- unselektiert: Das Kriterium ist nicht aktiv.




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

*Lösung*: ebenfalls limitieren? TODO


### Layout

Filter Links / oben / unten / rechts?

-> Stundenplan soll genug platz haben, evtl. floating filters oder collapsable

--> Optisch klar hervorheben, was zeitfenster des schülers und was zeitfenster des mentors ist







