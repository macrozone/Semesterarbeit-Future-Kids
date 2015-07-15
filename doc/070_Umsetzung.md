
\pagebreak


# Umsetzung Prototyp

## Verwendete Werkzeuge

### Source-Code-Kontrolle

Als Werkzeug für die Source-Code-Kontrolle wurde *Git* verwendet, wobei das Projekt bereits 
auf *Github* gehostet wird. 

Es wurde ein Branch *feature/schedules* erstellt, ausgehend vom aktuellsten Entwicklungsstand. 
Die Arbeit wurde regelmässig in die Versionskontrolle übertragen und nach Github hochgeladen




### IDE

Als Entwicklungsumgebung wurde RubyMine 7.1.2 verwendet, welche es erlaubt *Ruby on Rails*-Applikationen
direkt auszuführen und zu debuggen. RubyMine vereinfacht auch das Ausführen von *Specs* oder *Tests*.

Zusätzlich wurde *Sublime Text 3* verwendet, da dieser aktuell für das verwendete *cjsx*-Format eine bessere
Syntax-Unterstüztung bietet.


### React

React ist in *FutureKid* über das *gem*[^fn_gems] *'react-rails'* bereits integriert, welches die die *react*-Laufzeitumgebung enthält, jsx-Dateien kompiliert und in die Asset-Pipeline[^fn_assetpipeline] von Ruby on Rails integriert, sowie eine Integration der Komponenten in die Rails-View-Schicht [^fn_react_rails]. Ferner können damit React-Komponenten serverseitig gerendert werden. [^fn_ssr]. Ergänzt wurde das *gem 'sprockets-coffee-react'*, welches den CJSX-Syntax unterstützt. Zu JSX und CJSX siehe nachfolgender Abschnitt.


[^fn_gems]: Gems ("Edelsteine") sind Pakete oder Module für Ruby, welche jeweils eine bestimmte Aufgabe erfüllen. Ein gem kann andere gems als Abhängigkeiten benötigen.

[^fn_ssr]: Serverseitiges Rendering (SSR) soll es unter anderem Suchmaschinen leichter machen, Web-Anwendung zu indizieren und zu durchsuchen, zudem kann die initiale Ladezeit von Webseiten reduziert werden. Für *FutureKids* ist dies nicht von Bedeutung.


[^fn_assetpipeline]: Zusatzdatein zu HTML-Seiten, wie Scripts und Stylesheets können in Ruby on Rails vorkompliliert und optimiert werden. Diesen Ablauf erledigt die *Asset Pipeline*

[^fn_react_rails]: Siehe Quelle [@react_rails]

### JSX und CJSX

*JSX* Erweitert Javascript um eine XML-artige Syntax, in welcher React-Komponenten ähnlich wie HTML erstellt werden können:

~~~~~~~
var dropdown =
  <Dropdown>
    A dropdown list
    <Menu>
      <MenuItem>Do Something</MenuItem>
      <MenuItem>Do Something Fun!</MenuItem>
      <MenuItem>Do Something Else</MenuItem>
    </Menu>
  </Dropdown>;

render(dropdown);

~~~~~~~
[^fn_jsx_sample]

[^fn_jsx_sample]: Beispiel angelehnt an: https://facebook.github.io/jsx/

CJSX ist eine Variante von *JSX*, welcher *CoffeeScript*, statt Javascript zugrunde liegt.

*CoffeeScript* ist ein *Dialekt* von JavaScript, wobei Klammern häufig weggelassen und statdessen Blöcke mittels Einrücken codiert werden. Weiterhin bietet *CoffeeScript* eine Reihe an *Syntactic Sugar*, d.h. Syntaktische Erweiterungen, welche häufig benötigte Konstrukte vereinfachen. [^fn_coffeescript]

[^fn_coffeescript]: Nähers zu CoffeeScript auf http://coffeescript.org/

*CJXS* vereint nun CoffeeScript mit der XML-Erweiterungen von JSX:

~~~~~~~
var dropdown =
  <Dropdown>
    { <h1>A dropdown list.</h1> if @state.showTitle }
    <Menu>
    {
    	for menu in menuItems
    		<MenuItem
    			id=menu.id
    			isActive=@state.activeMenu is menu.id
    		>{menu.label}</MenuItem>
	  }  
    </Menu>
  </Dropdown>;

render(dropdown);

~~~~~~~

Da in *FutureKids* weitgehend *CoffeeScript* verwendet wird, ist deren Verwendung auch für React-Komponenten naheliegend. Als Alternative gibt es die vereinfachte JSX-CoffeeScript-Syntax, wobei die JSX-Subsyntax mittels `-Zeichen "escaped" wird. Allerdings entsteht dadurch eine Mischsyntax aus Javascript und CoffeeScript. Der Author dieser Arbeit vertritt die Meinung dass die CJSX-Syntax expressiver ist, als die Mischform und reines JSX, da Schleifen und Kontrollstrukturen sehr einfach in den XML-Strukturen verwendet werden können (Siehe obiges Beispiel).


## Erste Iteration

In einer ersten Iteration wurden die Anforderungen \ref{sc-001} - \ref{sc-015} gemäss Planung umgesetzt, dabei wurden \ref{sc-008} und \ref{sc-009} nur graphisch gelöst (wie im Abschnitt \ref{feinkonzept} beschrieben). 

TODO: screenshots

### Verifizierung

Die einzelnen Anforderungen wurden durch Akzeptanztests mittels *Capybara-Specs* getrieben erstellt.

TODO: testprotokol
TODO: Akzeptanzkriterien Id vergeben und erfüllt / nicht erfüllt




Die Anwendung wurde daraufhin auf die Test-Instanz (*Staging-Server*) geladen und durch den Kunden verifiziert. 


## Zweite Iteration

Die erste Rückmeldung fiel sehr positiv aus. In einem weiteren Treffen wurden Anpassungen besprochen. Grösstes Problem war der Filter für die Anzahl der betreuten Kinden, gemäss \ref{sc-13}. In der Praxis ist es wichtiger zu unterscheiden, ob ein Mentor als Haupt- oder primärer Mentor ein Kind betreut oder nur Ersatzmentor ist.

Zudem wurden gewisse Beschriftungen bemängelt.

### Neue Anforderungen:

<% include 'story.macro.ect',
  number: "013"
  version: 2
  title: "Als Administrator möchte ich für einen Schüler nach Mentoren suchen können, welche als primärer Mentor oder Ersatzmentor im Einsatz sind"
  priority: "MAY"
  accCriteria: [
    "Es können Mentoren gefunden werden, welche nicht als primärer Mentor aktiv sind (aber möglicherweise als Ersatzmentor)"
    "Es können Mentoren gefunden werden, welche als primäre Mentoren aktiv sind"
    "Es können Mentoren gefunden werden, welche nur als Ersatzmentoren aktiv sind"
    "Es können Mentoren gefunden werden, sowohl als primärer Mentor als auch als Ersatzmentor aktiv sind"
  ]
%>

<% include 'story.macro.ect',
  number: "010"
  version: 2
  title: "Als Administrator möchte ich für einen Schüler nach Mentoren mit passendem Geschlecht suchen können."
  priority: "MAY"
  accCriteria: [
    "Neu: Die Optionen sind mit 'männlich' und 'weiblich' beschriftet
  ]
%>

<% include 'story.macro.ect',
  number: "011"
  version: 2
  title: "Als Administrator möchte ich für einen Schüler nach Mentoren suchen können, welche mittels ECTS-Punkten vergütet werden."
  priority: "MAY"
  accCriteria: [
    "Neu: Die Optionen sind mit 'ECTS' und 'Kein ECTS' beschriftet"
  ]
%>


### Verifizierung

TODO

TODO: feedback










