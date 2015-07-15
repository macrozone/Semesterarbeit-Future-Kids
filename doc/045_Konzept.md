
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


## Feinkonzept: Bestehende Lösung (manuelle Zuweisung) optimieren \label{feinkonzept}




### Anforderungen \ref{sc-001} \ref{sc-002}, \ref{sc-003}, \ref{sc-004} 

Diese Stories umfassen das Erfassen und Anzeigen der Zeitfenster von Mentoren und Schüler. 
Sie werden bereits in der aktuellen Lösung erfüllt, allerdings existiert die erwähnte Doppel-Nutzung des Stundenplans wie in \ref{nfr-01}: *Doppelnutzung von Bedienelementen* geschildert.


**Massnahmen**:

\ref{nfr-01}: *Doppelnutzung von Bedienelementen*,

Bearbeitung der Zeitfenster eines Schülers soll von der Einsatzplanung des Mentors getrennt werden (visuell und funktional). Eine Möglichkeit wäre, das Bearbeiten der Zeitfenster des Schülers erst nach Aktivieren einer Schaltfläche (*Schüler-Zeitfenster bearbeiten*) zu ermöglichen. Damit ist klarer, welche Aktion gerade ausgeführt wird.

Das Setzen der Zeitfenster mit den Checkboxen kann beibehalten werden.

\ref{nfr-02}: *Irritierende Bedienelemente*

- Doppelte und inaktive Schaltflächen entfernen
- Bedienelemente klar beschriften.

### Anforderungen \ref{sc-005}, \ref{sc-006}, \ref{sc-007}, \ref{sc-015}

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

### Anforderungen \ref{sc-008}, \ref{sc-009}

Diese Stories sollen einem Administrator ermöglichen, Mentoren zu finden, welche mit dem Schüler überschneidende Zeitfenster haben. Gemäss Gespräch mit dem dem Auftraggeber kann es aber auch sein, dass bei knappen Überschneidungen Rücksprache mit dem Mentor genommen werden kann. 



**Massnahmen**

Diese Funktion ist in der aktuellen Lösung implementiert, allerdings leidet die Übersicht wenn viele Mentoren für den Vergleich ausgewählt werden, wie in Abbildung \ref{screenshot_kid_compare_mentors} zu sehen. Dazu wurde die folgende Anforderung erstellt: 

\ref{nfr-03}: *Bedienung bleibt übersichtlich unabhängig von der Anzahl Mentoren*

- Mentorennamen kürzen und kleiner darstellen
- Mit Farben oder Symbolen arbeiten pro Mentor
- Mentoren oder Zeitfenster, welche nicht in Frage kommen, ausblenden oder anders darstellen.
- Maximale Anzahl Mentoren limitieren

Weiterhin stehen neben den Zeitfenstern des Kindes und des Mentors keine weiteren Informationen zur Verfügung, 
es können lediglich Mentoren danach vorselektiert werden, ob sie bereits ein Kind betreuen oder nicht. Dazu ist aber ein Wechsel des Bildschirms nötig.

\ref{nfr-05}: *Ein Benutzer hat in einer Komponente alle Informationen für eine Entscheidung oder Aktion zur Verfügung*

Gemäss den Stories \ref{sc-010}, \ref{sc-011}, \ref{sc-012}, \ref{sc-013} sollen Mentoren nach bestimmten Kriterien, wie Geschlecht, Name und Einsatzort ausgewählt werden können. Diese Kriterien können als Filter implementiert werden, welche passende Mentoren einblendet oder unpassende ausblendet.

Diese Filter sollen ohne Wechsel des Bildschirms benutzbar sein und jederzeit klar ersichtlich machen, welche Mentoren sichtbar sind.

Weiterhin kann es Sinn machen, Mentoren mit nicht passenden Zeitfenstern nicht gänzlich herauszufiltern, sondern auf grafische Weise zu visualisieren, ob und wie lange sich die Zeitfenster überschneiden. Es kann auch möglichsein, dass bei einem Mentoren noch keine Zeitfenster erfasst wurden. Eine Grafische Lösung macht hier daher Sinn und erfüllt weitgehend \ref{nfr-05}, dass ein Administrator jederzeit alle nötigen Informationen zur Hand hat.

Die Kalenderartige Darstellung kann dabei beibehalten werden.


### Anforderungen \ref{sc-010}

Das Geschlecht eines Mentors kann in der aktuellen Lösung nicht erfasst werden, das Geschlecht eines Schülers hingegen schon. D.h. die grundsätzlichen Mechanismen dazu existieren bereits.

**Massnahmen**:

- Es soll eine Datenmigration durchgeführt werdne, welche allen Mentoren ein Feld "Geschlecht" hinzufügen.
- Es sollen Eingabemasken von Mentoren ergänzt werden, damit diese Information abgelegt werden kann
- Die Profilseite eines Mentors soll diese Information anzeigen
- Bei der Mentorensuche für einen Schüler sollen Mentoren nach dem Geschlecht gesucht oder gefiltert werden können
- Das Verhalten bei nicht zugewiesenem Geschlecht muss definiert werden.


### Anforderung \ref{sc-011}

Das Feld, ob ein Mentor mit ECTS-Punkten vergütet wird oder nicht, ist bereits vorhanden

**Massnahmen**:

- Bei der Mentorensuche für einen Schüler sollen Mentoren nach diesem Kriterium gesucht oder gefiltert werden können.

### Anforderung \ref{sc-012}

Der Einsatzort (d.h. eine Schule) eines Mentors nach Betrachtung des Datenmodells nicht direkt einem Mentor zugeweisen, sondern entspricht der Schule des Kindes, dem der Mentor zugewiesen ist. 

Dadurch ist diese Information nur für Mentoren verfügbar, die aktuell ein Kind betreuen.

**Massnahmen**:

- Bei der Mentorensuche für einen Schüler sollen Mentoren nach diesem Einsatzort gesucht oder gefiltert werden können.


### Anforderung \ref{sc-013}

Diese Funktion ist, wie oben erwähnt in der aktuellen Version bereits implementiert. (Siehe Abbildung \ref{screenshot_kid_timetable_mentors}). Allerdings muss dazu die Ansicht gewechselt werden.

**Massnahmen**:

Diese Funktionalität soll gleichartig wie die Suche nach passendem Geschlecht, Einsatzort oder anderen Kriterien umgesetzt werden.

### Anforderung \ref{sc-014}

Die Suche nach Mentoren per Name für die Auswahl kann ebenfalls als Filter implementiert werden.





