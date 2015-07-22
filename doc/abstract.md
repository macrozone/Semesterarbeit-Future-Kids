
Die Asyl Organisation Zürich (AOZ) betreibt mit \emph{Future Kids} ein gemeinnütziges Projekt, welches Primarschüler und -schülerinnen fördert, die bei der Bearbeitung ihrer schulischen Aufgaben zu Hause nur wenig Unterstützung erhalten. Jedem Schüler wird dabei von \emph{Future Kids} ein Mentor oder eine Mentorin zur Seite gestellt, welche(r) den Schüler wöchentlich einmal bei den Lernaufgaben unterstützt. Der Administration der AOZ steht für die Einsatzplanung der Mentoren und weitere administrative Aufgaben eine gleichnamige Webanwendung \emph{FutureKids} zur Verfügung, welche durch Freiwillige weiterentwickelt wird und auf dem Framework \emph{Ruby on Rails} basiert.

Diese Anwendung erlaubt es den Adminstratoren unter anderem jedem Schüler einen Haupt- und einen Ersatzmentor zuzuweisen. Um einen passenden Mentoren zu finden muss die Administration allerdings Zeitfenster von Schüler und Mentoren, Geschlecht, Einsatzort und weitere Kriterien berücksichtigen. Diese Aufgabe deckte die Anwendung allerdings nur unzureichend und rudimentär ab, was zu erheblichen administrativen Mehraufwänden führte.

Das Ziel dieser Arbeit war es, die Mängel der bisherigen Lösung in diesem Bereich aufzudecken und das Modul für das Finden und Zuweisen eines Mentors neu zu konzipieren und zu implementieren. Dabei wurde zusammen mit dem Kunden die Anforderungen als User-Stories erarbeitet und insbesondere mit Anforderungen an die Bedienbarkeit, Komfort und Übersicht ergänzt.

Schrittweise wurde aus den Anforderungen Lösungskonzepte für die bestehenden Probleme erarbeitet, implementiert und mit den Anforderungen gegengeprüft (automatisiert und manuell), sowie durch den Kunden verifiziert. Dabei fand ein iteratives, an SCRUM-angelegtes Vorgehen statt, wobei Implementierung und Abnahme durch den Kunden mehrmals stattfanden.

Die bisherige, auf einfachen HTML-Formularen basierende Lösung wurde so durch eine im Javascript-Framework \emph{React} entwickelte moderne und responsive Client-Komponente ersetzt und in die Anwendung integriert. 


