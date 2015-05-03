# Design

## Mocks

### Vergleich der Zeitfenster als Kalenderansicht

Damit die Darstellung auch bei mehreren Mentoren übersichtlich zu machen, bietet sich eine Kalenderartige Darstellung der Zeitfenster an.

Abbildung \ref{mock_timetable_mentors} zeigt eine mögliche Darstellung des Stundenplan eines Schülers, wobei die Zeitfenster des Schülers grün hinterlegt sind. Es wurden drei Mentoren zum Vergleich ausgewählt und mit jeweils unterschiedlichen Farben dargestellt. Werden noch mehr Mentoren ausgewählt, so werden die Balken entsprechend kleiner. Es ist dabei auch möglich, dass die Beschriftungen auf den Balken nicht mehr lesbar sind. Daher wird unterhalb eine Legende eingeblendet. Die Farben können aus einer Palette oder mittels Farb-Rotation ausgewählt werden. 

Die maximale Anzahl anzeigbarer Mentoren sollte allenfalls eingeschränkt werden, damit sich die Farben nicht wiederholen und die Balken eine vernünftige Breite beibehalten.

![Bearbeitung eines Mentors (Mock)\label{mock_timetable_mentors}](img/mock_timetable_mentors.png)

In der Abbildung sind Zeitfenster von Mentoren, die sich nur knapp oder gar nicht mit dem des Schülers überschneiden, nicht speziell berücksichtigt (z.b. Müller Sabine am Donnerstag und Freitag). Es wäre denkbar, diese ein- und ausblendbar zu machen oder anders zu kennzeichnen (schmaler, andere Farbgebung, Transparenz).



### Auswahl des Zeitpunkt des Treffens

Möchte ein Administrator den Zeitpunkt des Treffens auswählen, so kann auf eine Zelle des Stundenplans gelickt werden, wie in Abbildung \ref{\ref{mock_timetable_mentors_select} gezeigt.


![Auswahl eines Zeitpunkt des Treffens von Schüler und Mentor (Mock)\label{mock_timetable_mentors_select}](img/mock_timetable_mentors_select.png)
