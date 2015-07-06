
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


### CJSX

CJSX ist eine Variante von *JSX* und *CoffeeScript*. *JSX* Erweitert Javascript um eine XML-artige Syntax, in welcher Komponenten ähnlich wie HTML erstellt werden können:

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

[^fn_jsx_sample] Beispiel angelehnt an: https://facebook.github.io/jsx/

*CoffeeScript* ist ein *Dialekt* von JavaScript, wobei Klammern häufig weggelassen und statdessen Blöcke mittels Einrücken codiert werden. Weiterhin bietet *CoffeeScript* eine Reihe an *Syntactic Sugar*, d.h. Syntaktische Erweiterungen, welche häufig benötigte Konstrukte vereinfachen. [^fn_coffeescript]

[^fn_coffeescript]: Nähers zu CoffeeScript auf http://coffeescript.org/

*CJXS* vereint nun CoffeeScript mit der XML-Erweiterungen von JSX:

~~~~~~~
var dropdown =
  <Dropdown>
    A dropdown list
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

