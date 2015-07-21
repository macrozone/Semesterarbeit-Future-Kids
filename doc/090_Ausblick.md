

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


\pagebreak

# Ausblick

Zum Zeitpunkt des Schreibens dieser Arbeit steht der Adminstration die aufwenige Aufgabe des "Matchings", d.h. des Findens passender Mentor- und Ersatzmentor-Paare für die Schüler des kommenden Semesters bevor. Die entwickelte Komponente ist für diese Aufgabe essentiell und die Verbesserungen sollten sich gemäss Administration in einer signifikanten Zetersparnis niederschlagen. Da alle wichtigen Anforderungen umgesetzt und verifiziert wurden, steht einer Live-Schaltung auf die Produktiv-Umgebung nichts im Wege. Diese soll Anfangs August 2015 stattfinden.

Der Kunde hat zudem weitere mögliche Erweiterungen bereits erwähnt:

- Falls ein Mentor bereis ein anderes Kind betreut, wird eine Meldung angezeigt, falls der Mentor gewählt wird.
- Es soll möglich sein, nur einen einzelnen Wochentag anzuzeigen

Diese wurden als *Issues* auf dem *Github-Repository* von FutureKids [^fn_github_futurekids] erfasst. Da dieses öffentlich ist, kann jeder einen *PullRequest* einsenden um diese Anforderungen umzusetzen. FutureKids hofft auf weitere Freiwillige für diese Arbeit.

[^fn_github_futurekids]: Siehe [@github_futurekids]
