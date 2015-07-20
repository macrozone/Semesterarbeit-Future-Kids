

\pagebreak
# Rückblick

Mit stetiger Sicht auf die funktionalen und nicht-funktionalen Anforderungen konnte ich die bestehende Anwendung
Schritt für Schritt verbessern. Aus den Anforderungen wurden Tests, mit der Schrittweisen erfüllung der Tests entstand die 
Anwendung.

Die Arbeit mit React erwies sich dabei als sehr intuitiv, sofern man begriffen hat, welche (Unter-)Komponente einen *State* *besitzen* soll und wie *Events* durch die einzelnen Komponenten kommuniziert werden. Vorteilhaft ist dabei das sehr beschränkte und dadurch Simple Schnittstellendesign der React-Komponenten: Es gibt nicht viele Möglichkeiten etwas umzusetzen; ein falscher Aufbau der Komponenten oder falsche Platzierung des *States* macht sich sehr schnell durch fehlerhaftes Verhalten bemerkbar. Durch meine vielen Erfahrungen im Bereich Frontend-Entwicklung mit HTML und Javascript kam ich sehr schnell mit React zurecht, was auch ein Verdient der Einfachheit des Frameworks ist.

Auch die Integration von React in Ruby on Rails erwies sich als einfach; allerdings ist die Komponente in sich abgeschlossen und benötigt keine Live-Daten, d.h. Daten, die sich während der Benutzung der Komponente ändern können. Dadurch sind die Schnittstellen zwischen React und Rails sehr einfach.

## Schwierigkeiten

Anforderungen in Form von Stories müssen klar notiert und mit Akzeptanzkriterien versehen werden, 
um sie einerseits klar kommunizieren und um sie danach auch verifizieren zu können in Form von Tests. Ein grosser Teil der Arbeit bestand jedoch nicht daraus, neue Funktionalitäten hinzuzufügen, sondern die vorhanden zu verbessern. Um trotzdem die Arbeit mit sinnvoller Granularität in einzelne Stories zu unterteilen, betrachte ich die gewünschten Funktionalitäten so, als wären sie noch gar nicht umgesetzt. 

Dies ergab nun zwar gut differenzierbare Stories, die Akzeptanzkritierien für diese Stories zu erfassen, war allerdings nicht leicht, da auch die bestehende Lösung viele der Stories bereits erfüllte. Die Anforderungen an die Bedienbarkeit hatte ich daher in Form von Nicht-Funktionalen Anforderungen notiert. Dadurch waren sie allerdings schwierig zu verifizieren in Form von Tests. Rückblickend wäre es daher besser gewesen, diese als zusätzliche Akzeptanzkriterien den Stories hinzuzufügen. 

Die hohen Anforderungen an die Bedienbarkeit ergaben zudem einen verhältnismässig komplexen Aufbau der Komponente, was das Testen zusätzlich erschwerte. In einem solchen Fall muss die hohe Komplexität gegen die damit verbundenen komplexeren Tests abgewogen werden. Ich entschied mich trotzdem dazu, mein erarbeitetes Konzept wie geplant umzusetzen und nahm dafür einige etwas weniger genaue Tests in Kauf, da ich der Meinung bin, im vorliegenden Fall überwiegt der Nutzen dem möglichen Risiko für eine Fehlfunktion uder der Weiterentwicklung.

## Kundenfeedback

> **Feedback: Einführung Kalenderfunktion auf der Onlineplattform von Future Kids**

> Die Zusammenarbeit mit Marco war sehr angenehm und produktiv. Die gemeinsame Ideenentwicklung hat zur erfolgreichen Umsetzung der Kalenderfunktion geführt. Bei einem ersten Treffen konnte von Seiten Future Kids die Bedürfnisse der neuen Funktion angebracht werden. Durch gezieltes Fragen machte sich Marco ein genaues Bild der gewünschten Möglichkeiten der neuen Kalenderfunktion und bot konkrete Vorschläge zu deren Umsetzung.

> Die Umsetzung entsprach ganz der besprochenen Idee. Kleine Anpassungswünsche wurden sofort umgesetzt. Die neue Kalenderfunktion ist sehr übersichtlich und benutzerfreundlich gestaltet. Sie entspricht den Nutzungsanforderungen von Future Kids. Durch die neue Funktion wird die Arbeit im Zusammenhang mit dem bilden von Mentor/in-Schüler/in Paaren stark erleichtert, wodurch viel Zeit eingespart werden kann. Mit dem Ergebnis sind wir sehr zufrieden.



## Ausblick

Der Kunde hat weitere mögliche Erweiterungen bereits erwähnt:

- Falls ein Mentor bereis ein anderes Kind betreut, wird eine Meldung angezeigt, falls der Mentor gewählt wird.
- Es soll möglich sein, nur einen einzelnen Wochentag anzuzeigen

Diese wurden als *Issues* auf dem *Github-Repository* von FutureKids [^fn_github_futurekids] erfasst. Da dieses öffentlich ist, kann jeder einen *PullRequest* einsenden um diese Anforderungen umzusetzen. FutureKids hofft auf weitere Freiwillige für diese Arbeit.

[^fn_github_futurekids]: Siehe [@github_futurekids]
