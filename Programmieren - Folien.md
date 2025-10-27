---
marp: true
theme: hm
paginate: true
language: de
footer: Programmieren – D. Straub
headingDivider: 3
jupyter:
  jupytext:
    cell_metadata_filter: -all
    formats: ipynb,md
    main_language: python
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.17.3
---
# Programmieren

**Ingenieurinformatik Teil 1, Wintersemester 2025/26**

David Straub

## Gliederung

1. Einführung
2. [Grundlagen: Variablen, Datentypen, Verzweigungen](#grundlagen)
3. [Funktionen](#funktionen)
4. [Schleifen](#schleifen)
5. Datenstrukturen
6. Module & Bibliotheken
7. Klassen
8. Dateien
9. Visualisierung
10. Numerik

## Einführung

1. ~~Warum Programmieren?~~
2. ~~Organisatorisches~~
3. Warum Python?
4. Python installieren


### Warum Python? Einfachheit


Python:

```python
# Einfache Textausgabe auf der Konsole
print("Hallo Welt!")
```

Java:

```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hallo Welt!");
    }
}
```

### Einfachheit: Liste der Quadrate der Zahlen von 0 bis 9

Python:

```python
# List comprehension: erstellt Liste mit Quadratzahlen von 0² bis 9²
quadrate = [x**2 for x in range(10)]
```

Fortran:

```fortran
program quadrate
implicit none
integer :: i
integer, dimension(10) :: quadrate
do i = 0, 9
    quadrate(i+1) = i**2
end do
end program quadrate
```

### Beliebtheit

![](https://i.postimg.cc/c4gkzN1w/image.png)

Quelle: [TIOBE](https://www.tiobe.com/tiobe-index/)

### Warum Beliebtheit wichtig ist

- Mehr Bibliotheken
- Mehr Dokumentation
- Mehr Jobs
- Bessere KI-Unterstützung

### Mythen über Python

Früher verbreitete Mythen über Python:

- Nur für Skripting
- Nur für Anfänger
- Langsam


Heute:

- Industriestandard für ML/AI
- Standard für wissenschaftliches Rechnen
- Weit verbreitet in Webentwicklung, Automatisierung, uvm.


### Zusammenfassung: Warum Python?

- Sehr einfach
- Extrem beliebt
- Weit verbreitet in Industrie und Wissenschaft
- Quelloffen & kostenlos

![bg right:40% 80%](https://www.python.org/static/community_logos/python-logo-generic.svg)

### Python installieren

- Anders als z.B. C++ ist Python eine *interpretierte* Programmiersprache, d.h. der Code wird zur Laufzeit Zeile für Zeile ausgeführt. 
- Das ausführende Programm heißt *Interpreter* und ist für alle gängigen Betriebssysteme verfügbar.

Anleitung:

- Windows: https://www.python.org/downloads/windows/ – herunterladen & installieren
    - oder einfach [WSL](https://learn.microsoft.com/de-de/windows/wsl/install)
- Ubuntu: `sudo apt install python3 python3-pip`
- MacOS: `brew install python`

Bitte *kein* Anaconda …

### Versionsgeschichte

| Version | Veröffentlichung    | EOL |
|---------|---------------------|-----|
| 3.9     | 2020-10             | **2025-10** |
| 3.10    | 2021-10             | 2026-10 |
| 3.11    | 2022-10             | 2027-10 |
| 3.12    | 2023-10             | 2028-10 |
| 3.13    | 2024-10             | 2029-10 |
| 3.14    | **2025-10**         | 2030-10 |

- Details: [Status of Python Versions](https://devguide.python.org/versions/)
- Diese Veranstaltung: Python 3.10 oder höher (3.12 oder 3.13 empfohlen)

### Konsole, Skript, Notebook

- Konsole: interaktive Eingabe von Python-Befehlen
    - nützlich als schneller Taschenrechner
- Skript: Python-Code in einer Datei mit der Endung `.py`
    - nützlich für längere Programme
- Jupyter Notebook: interaktive Umgebung für Datenanalyse und Visualisierung
    - nützlich für explorative Programmierung


### Python ausprobieren, ohne es zu installieren

- Python Online: https://pythononline.net/
- JupyterLite: https://jupyter.org/try
- FK07 DataHub (JupyterHub): https://datahub.cs.hm.edu/
- Github Codespaces: https://github.com/DavidMStraub/python-codespace


### One-Minute-Paper

Moodle: https://link.hm.edu/y4vj

- Schreiben Sie 3 Dinge auf, die Sie heute gelernt haben
- Was war am unklarsten?
- Gibt es etwas spezielles, das Sie in diesem Kurs lernen möchten?


## Grundlagen

1. Variablen
2. Einfache Datentypen (`int`, `bool`, `float`, `str`)
3. [Verzweigungen](#verzweigungen)

### Variablen

Variablen speichern Werte:

```python
# Zuweisung von Werten zu Variablen
x = 42
y = x  # y erhält den Wert von x (42)
x = 100  # x wird überschrieben
print(y)  # gibt 42 aus (y ist unverändert)
```

```python
# Ausgabe des aktuellen Wertes von x
print(x)  # gibt 100 aus
```

### Variablennamen: Fallstricke

```python
# class = "Mathematik"  # SyntaxError! 'class' ist ein reserviertes Schlüsselwort
klass = "Mathematik"  # Alternative Schreibweise verwenden
print(klass)
```

```python
# Schlecht lesbar: Vermeide l, I, O als Variablennamen (Verwechslungsgefahr mit 1, 0)
l = 1  # Sieht aus wie 1
I = 1  # Sieht aus wie l
O = 0  # Sieht aus wie 0
print(l, I, O)
```

### Namen: Konventionen

```python
# Variablen & Funktionen: snake_case 🐍
first_name = "Alice"
calculate_average()

# Konstanten: UPPER_SNAKE_CASE 📢
MAX_SIZE = 100
API_KEY = "secret"

# Klassen: PascalCase 🏛️
class UserAccount:
    pass

# Privat: führender Unterstrich 🔒
_internal_value = 42
__very_private = "secret"
```

### Ganze Zahlen (int)

Integers haben unbegrenzte Präzision:

```python
# Python kann beliebig große Zahlen darstellen
riesig = 2 ** 1000  # 2 hoch 1000
print(len(str(riesig)))  # Anzahl der Ziffern
```


```python
# Modulo-Operation: Rest bei Division durch 1000
print(riesig % 1000)
```


### Division & Integers

```python
# Normale Division erzeugt immer float
print(10 / 3)  # 3.333...
```


```python
# Überprüfung des Datentyps
print(type(10 / 3))  # <class 'float'>
```


```python
# Ganzzahlige Division (abgerundet)
print(10 // 3)  # 3
```


```python
# Ganzzahlige Division rundet bei negativen Zahlen nach unten
print(-10 // 3)  # -4 (nicht -3!)
```



### Wahrheitswerte (bool)

Booleans sind eigentlich Integers:

```python
# True entspricht 1, False entspricht 0
print(True + True)  # 2
```


```python
# True verhält sich wie 1 in Berechnungen
print(True * 42)  # 42
```


```python
# False (0) minus True (1) ergibt -1
print(False - True)  # -1
```

### Vergleichsoperatoren
```python
# Gleichheit prüfen
print(5 == 5)  # True
```

```python
# Ungleichheit prüfen
print(5 != 3)  # True
```

```python
# Größer-als Vergleich
print(10 > 5)  # True
```

```python
# Größer-gleich Vergleich
print(5 >= 5)  # True
```

```python
# Lexikografischer Vergleich: Zeichenweise nach Unicode-Werten
print("Python" > "Java")  # True (P > J im Alphabet)
```


### Truthiness: Was ist wahr?

```python
# 0 ist falsy (wird als False interpretiert)
print(bool(0))  # False
```


```python
# Alle Zahlen außer 0 sind truthy
print(bool(42))  # True
```


```python
# Leere Strings sind falsy
print(bool(""))  # False
```


```python
# Nicht-leere Strings sind truthy (auch "0"!)
print(bool("0"))  # True
```



### Vergleichsoperatoren: Chaining

```python
# Python erlaubt verkettete Vergleiche
x = 5
print(1 < x < 10)  # True (x ist zwischen 1 und 10)
```


```python
# Beide Bedingungen müssen erfüllt sein
print(10 < x < 20)  # False (x ist nicht größer als 10)
```


```python
# Verschiedene Operatoren können kombiniert werden
print(1 < x > 3)  # True (x > 1 AND x > 3)
```

### Logische Operatoren

```python
# AND: Beide Bedingungen müssen wahr sein
print(True and False)  # False
```

```python
# OR: Mindestens eine Bedingung muss wahr sein
print(True or False)  # True
```

```python
# NOT: Negiert den Wahrheitswert
print(not True)  # False
```

```python
# NOT mit False ergibt True
print(not False)  # True
```

```python
# NOT mit falsy-Wert (0) ergibt True
print(not 0)  # True
```

```python
# NOT mit falsy-Wert (leerer String) ergibt True
print(not "")  # True
```


### Fließkommazahlen (float)

```python
# Nachkommastellen werden mit Punkt getrennt
pi = 3.14159
print(pi)
```

```python
# Wissenschaftliche Notation (e = *10^)
lichtgeschwindigkeit = 3e8  # 3 × 10^8 m/s
print(lichtgeschwindigkeit)
```


### Float-Präzision

```python
# Floats haben begrenzte Präzision (Rundungsfehler!)
print(0.1 + 0.2)  # 0.30000000000000004 (nicht exakt 0.3)
```

```python
# Vergleich auf Gleichheit mit Toleranz
diff = abs((0.1 + 0.2) - 0.3)
print(diff < 1e-10)  # True (nahe genug an 0.3)
```

### String-Basics

```python
# Strings mit einfachen Anführungszeichen
name = 'Alice'
print(name)
```

```python
# Strings mit doppelten Anführungszeichen
greeting = "Hallo"
print(greeting)
```

```python
# Strings können mit + verkettet werden
message = greeting + " " + name
print(message)  # "Hallo Alice"
```

### String-Operationen

```python
# Länge eines Strings ermitteln
text = "Python"
print(len(text))  # 6
```

```python
# Wiederholung mit *
print("Ha" * 3)  # "HaHaHa"
```

```python
# Auf Zeichen zugreifen (Index beginnt bei 0)
print(text[0])  # "P" (erstes Zeichen)
print(text[-1])  # "n" (letztes Zeichen)
```

### String-Slicing

```python
# Teilstring extrahieren: [start:end] (end ist exklusiv)
word = "Programming"
print(word[0:4])  # "Prog"
```

```python
# Vom Anfang bis Position
print(word[:4])  # "Prog"
```

```python
# Von Position bis Ende
print(word[3:])  # "gramming"
```

```python
# Mit Schrittweite
print(word[::2])  # "Pormmn" (jedes zweite Zeichen)
```

### String-Methoden

```python
# Groß- und Kleinschreibung
text = "Python Programming"
print(text.upper())  # "PYTHON PROGRAMMING"
print(text.lower())  # "python programming"
```

```python
# Suchen und Ersetzen
print(text.replace("Python", "Java"))  # "Java Programming"
```

```python
# Aufteilen in Liste
words = text.split()  # Teilt bei Leerzeichen
print(words)  # ['Python', 'Programming']
```

### F-Strings (Formatierte Strings)

```python
# Variablen direkt in Strings einbetten
name = "Alice"
age = 25
print(f"Hallo {name}, du bist {age} Jahre alt.")
```

```python
# Berechnungen in F-Strings
x = 10
y = 3
print(f"{x} + {y} = {x + y}")
```

```python
# Formatierung von Zahlen
pi = 3.14159
print(f"Pi auf 2 Stellen: {pi:.2f}")  # 3.14
```

## Verzweigungen

### Warum Verzweigungen?

- Programme müssen unterschiedlich reagieren je nach Situation
- Entscheidungen basierend auf Bedingungen treffen
- Code nur unter bestimmten Voraussetzungen ausführen

**Beispiele:**
- Ist die Temperatur zu hoch? → Warnung ausgeben
- Ist die Zahl gerade? → Anders behandeln als ungerade
- Hat der Benutzer gültige Eingaben gemacht? → Weiterverarbeiten oder Fehler

### `if`-Anweisung

```python
# Einfache if-Verzweigung
temperatur = 25
if temperatur > 20:
    print("Es ist warm.")  # Wird nur ausgeführt wenn Bedingung wahr
```

```python
# Ohne if-Bedingung würde immer ausgegeben werden
temperatur = 15
if temperatur > 20:
    print("Es ist warm.")  # Wird nicht ausgeführt (keine Ausgabe)
```

### `if-else`

```python
# Alternative bei nicht erfüllter Bedingung
alter = 16
if alter >= 18:
    print("Volljährig")
else:
    print("Minderjährig")  # Wird ausgeführt, da alter < 18
```

### `if-elif-else`

```python
# Mehrere Bedingungen nacheinander prüfen
note = 85
if note >= 90:
    print("Sehr gut")
elif note >= 80:
    print("Gut")  # Wird ausgeführt
elif note >= 70:
    print("Befriedigend")
else:
    print("Nicht bestanden")
```

### Verschachtelte Verzweigungen

```python
# if-Anweisungen können ineinander verschachtelt werden
regen = True
temperatur = 22

if temperatur > 20:
    if regen:
        print("Warm aber regnerisch - Regenjacke mitnehmen")
    else:
        print("Schönes Wetter!")
else:
    print("Zu kalt")
```

### Kurzform: Ternärer Operator

```python
# Kompakte Schreibweise für einfache if-else
alter = 20
status = "Volljährig" if alter >= 18 else "Minderjährig"
print(status)
```

```python
# Äquivalent zur ausführlichen Form:
# if alter >= 18:
#     status = "Volljährig"
# else:
#     status = "Minderjährig"
```

### Verzweigung mit logischen Operatoren

```python
# Mehrere Bedingungen kombinieren
temperatur = 28
luftfeuchtigkeit = 70

# AND: Beide Bedingungen müssen erfüllt sein
if temperatur > 25 and luftfeuchtigkeit > 60:
    print("Schwül!")
```

```python
# OR: Mindestens eine Bedingung muss erfüllt sein
if temperatur > 35 or temperatur < 0:
    print("Extremtemperatur!")
```

### Aufgabe: Schaltjahr

Ein Jahr ist ein Schaltjahr, wenn:
- Es durch 4 teilbar ist UND
- Nicht durch 100 teilbar ist ODER durch 400 teilbar ist

Schreibe Code, der für ein gegebenes Jahr ausgibt, ob es ein Schaltjahr ist.

```python
# Beispiel
jahr = 2024
# Deine Lösung hier
```

## Funktionen

### Warum Funktionen?

- **Code-Wiederverwendung**: Einmal schreiben, mehrmals nutzen
- **Struktur**: Komplexe Programme in kleine Teile zerlegen
- **Wartbarkeit**: Änderungen nur an einer Stelle nötig
- **Lesbarkeit**: Aussagekräftige Namen statt komplizierter Code-Blöcke

```python
# Ohne Funktion: Code-Wiederholung
print("Hallo Alice!")
print("Hallo Bob!")
print("Hallo Charlie!")
```

```python
# Mit Funktion: Wiederverwendbar und übersichtlich
def begruessung(name):
    print(f"Hallo {name}!")

begruessung("Alice")
begruessung("Bob")
begruessung("Charlie")
```

### Funktion definieren und aufrufen

```python
# Definition: Mit 'def' und Funktionsnamen
def sage_hallo():
    print("Hallo!")
    print("Schön dich zu sehen.")

# Aufruf: Funktionsnamen mit Klammern
sage_hallo()
```

### Funktionen mit Parametern

```python
# Parameter ermöglichen flexible Funktionen
def addiere(a, b):
    summe = a + b
    print(f"{a} + {b} = {summe}")

# Aufruf mit verschiedenen Argumenten
addiere(5, 3)
addiere(10, 20)
```

### Rückgabewerte

```python
# 'return' gibt einen Wert zurück
def multipliziere(x, y):
    ergebnis = x * y
    return ergebnis  # Wert wird zurückgegeben

# Rückgabewert in Variable speichern
resultat = multipliziere(4, 7)
print(resultat)  # 28
```

```python
# Ohne return wird None zurückgegeben
def ohne_return():
    x = 5

ergebnis = ohne_return()
print(ergebnis)  # None
```

### Docstrings: Funktionen dokumentieren

```python
# Docstring: Erste Zeile nach def beschreibt die Funktion
def berechne_flaeche(breite, hoehe):
    """
    Berechnet die Fläche eines Rechtecks.
    
    Parameter:
        breite: Breite des Rechtecks
        hoehe: Höhe des Rechtecks
    
    Rückgabe:
        Fläche als Produkt von Breite und Höhe
    """
    return breite * hoehe

# Docstring abrufen mit help()
help(berechne_flaeche)
```

### Beispiel: Orbital-Geschwindigkeit

```python
def berechne_orbital_geschwindigkeit(hoehe_km):
    """Berechnet die Orbitalgeschwindigkeit für eine gegebene Höhe."""
    # Vereinfachte Berechnung für kreisförmige Umlaufbahn
    erdradius = 6371  # km
    gravitationskonstante = 398600  # km³/s²
    r = erdradius + hoehe_km  # Gesamtdistanz vom Erdmittelpunkt
    geschwindigkeit = (gravitationskonstante / r) ** 0.5  # v = sqrt(μ/r)
    return geschwindigkeit

# ISS-Orbitalgeschwindigkeit berechnen:
iss_hoehe = 408  # km über Erdoberfläche
v_orbital = berechne_orbital_geschwindigkeit(iss_hoehe)
print(f"ISS Orbitalgeschwindigkeit: {v_orbital:.2f} km/s")
```


### Mehrere Rückgabewerte

```python
def triebwerk_analyse(schub_newton, treibstoff_verbrauch_kg_s):
    """Analysiert Triebwerk-Parameter und gibt zwei Kennwerte zurück."""
    # Spezifischer Impuls: Schub pro Massenstrom
    spezifischer_impuls = schub_newton / treibstoff_verbrauch_kg_s
    triebwerk_masse = 1000  # kg (Beispielwert)
    # Schub-Gewichts-Verhältnis
    schub_gewichts_verhaeltnis = schub_newton / (triebwerk_masse * 9.81)
    return spezifischer_impuls, schub_gewichts_verhaeltnis  # Tupel-Rückgabe

# Beide Werte gleichzeitig entpacken
isp, twr = triebwerk_analyse(2200000, 700)
print(f"Spez. Impuls: {isp:.0f} N⋅s/kg, Schub/Gewicht: {twr:.1f}")
```

Mehr zu „Tupeln" (`x, y`) in Kapitel 5 (Datenstrukturen)!


### Standardwerte für Parameter

```python
# Parameter können Standardwerte haben
def mission_planung(ziel, startdatum="TBD", crew_groesse=3, notfall_backup=True):
    """Plant eine Weltraummission mit optionalen Parametern."""
    print(f"🚀 Mission zum {ziel}")
    print(f"Start: {startdatum}")
    print(f"Crew: {crew_groesse} Astronauten")
    if notfall_backup:
        print("✅ Notfall-Backup-Systeme aktiv")
        
# Verschiedene Missionen: Parameter mit Standardwerten können weggelassen werden
mission_planung("Mond")  # Nur Pflichtwert
mission_planung("Mars", "2026-07-15")  # Mit Startdatum
mission_planung("ISS", crew_groesse=6)  # Spezifischer Parameter
mission_planung("Europa", startdatum="2030-01-01", notfall_backup=False)
```

### Lokale vs. Globale Variablen
```python
# Globale Variable (außerhalb von Funktionen definiert)
temperatur = 20  # °C

def berechne_luftdichte(hoehe_m):
    """Berechnet Luftdichte in einer bestimmten Höhe."""
    # Lokale Variable (nur in der Funktion sichtbar)
    temperatur = -50  # °C in der Stratosphäre
    # Diese lokale Variable "überdeckt" die globale
    dichte = 1.225 * (1 - 0.0065 * hoehe_m / 288.15) ** 4.256
    return dichte

print(f"Bodentemperatur: {temperatur}°C")  # 20°C (global)

luftdichte = berechne_luftdichte(10000)
print(f"Luftdichte in 10km Höhe: {luftdichte:.3f} kg/m³")

print(f"Nach Funktionsaufruf: {temperatur}°C")  # Immer noch 20°C!
```


### Funktionen mit Verzweigungen

```python
def startfreigabe_pruefen(treibstoff_prozent, wetter, crew_bereit, systeme_ok):
    """Prüft alle Startbedingungen und gibt Freigabe-Status zurück."""
    # Mehrere Bedingungen nacheinander prüfen
    if treibstoff_prozent < 95:
        return False, "Treibstoff unzureichend"
    elif wetter != "gut":
        return False, f"Wetter ungünstig: {wetter}"
    elif not crew_bereit:
        return False, "Crew nicht bereit"
    elif not systeme_ok:
        return False, "Systeme nicht nominal"
    else:
        return True, "🚀 Startfreigabe erteilt!"

# Verschiedene Szenarien testen:
freigabe, grund = startfreigabe_pruefen(98, "gut", True, True)
print(f"Freigabe: {freigabe} - {grund}")

freigabe, grund = startfreigabe_pruefen(90, "gut", True, True)
print(f"Freigabe: {freigabe} - {grund}")
```
### Kompakte Startfreigabe-Funktion

```python
def schnelle_startpruefung(treibstoff, wetter, crew, systeme):
    """Kompakte Startprüfung: Gibt True zurück wenn alle Bedingungen erfüllt."""
    # Alle Bedingungen mit AND verknüpft
    return (treibstoff >= 95 and wetter == "gut" and 
            crew and systeme)

# Verschiedene Raketen einzeln prüfen:
falcon_heavy = schnelle_startpruefung(98, "gut", True, True)
sls = schnelle_startpruefung(92, "gut", True, True)  # Treibstoff zu niedrig
starship = schnelle_startpruefung(99, "windig", True, True)  # Wetter schlecht

print(f"Falcon Heavy: {'✅ GO' if falcon_heavy else '❌ NO-GO'}")
print(f"SLS: {'✅ GO' if sls else '❌ NO-GO'}")
print(f"Starship: {'✅ GO' if starship else '❌ NO-GO'}")
```

### Reine Funktionen und Nebeneffekte

**Reine Funktionen** haben zwei wichtige Eigenschaften:
1. **Determinismus**: Gleiche Eingabe → Gleiche Ausgabe
2. **Keine Nebeneffekte**: Ändern nichts außerhalb der Funktion

```python
# Reine Funktion: Nur Berechnung, keine Nebeneffekte
def addiere(a, b):
    return a + b

# Unreine Funktion (Nebeneffekt: print)
def addiere_mit_ausgabe(a, b):
    ergebnis = a + b
    print(f"Ergebnis: {ergebnis}")  # Nebeneffekt!
    return ergebnis
```

Weitere Beispiele für Nebeneffekte: Ändern globaler Variablen, Schreiben in Dateien, etc.

### Vorteile reiner Funktionen

- **Testbarkeit**: Einfach zu testen (vorhersagbare Ausgabe)
- **Debugging**: Fehler leichter zu finden
- **Wiederverwendbarkeit**: Funktionieren in jedem Kontext
- **Parallelisierung**: Können sicher parallel ausgeführt werden

```python
# Reine Funktion - immer testbar
def celsius_zu_fahrenheit(celsius):
    """Konvertiert Celsius zu Fahrenheit."""
    return celsius * 9/5 + 32

# Test ist einfach und zuverlässig
assert celsius_zu_fahrenheit(0) == 32
assert celsius_zu_fahrenheit(100) == 212
```

**Faustregel**: Schreiben Sie so viele Funktionen wie möglich als reine Funktionen!

### Aufgabe: Mitternachtsformel

Schreibe eine Funktion `mitternachtsformel(a, b, c)`, die die Lösungen der quadratischen Gleichung

$$ax^2 + bx + c = 0$$

berechnet. Verwende die Mitternachtsformel:

$$x_{1,2} = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

Die Funktion soll drei Rückgabewerte haben:
1. Anzahl der Lösungen (0, 1 oder 2)
2. Erste Lösung (oder `None`, wenn keine Lösung)
3. Zweite Lösung (oder `None`, wenn keine Lösung)

## Schleifen

### Wozu Schleifen?

- Wiederholung von Anweisungen automatisieren
- Daten sequenziell verarbeiten (Listen, Strings, Dateien)
- Simulationen und iterative Verfahren umsetzen

Zwei Typen von Schleifen:
1. `while`-Schleifen: Wiederholung solange Bedingung wahr ist
2. `for`-Schleifen: Wiederholung über eine feste Anzahl oder Sammlung

## `while`-Schleifen


**Was ist eine `while`-Schleife?**
- Wiederholt Code solange eine Bedingung wahr ist
- Anzahl Wiederholungen ist vorher unbekannt
- Prüft Bedingung vor jedem Durchlauf

**Typische Anwendungsfälle:**
- **Benutzereingaben**: Solange bis gültige Eingabe
- **Konvergenz**: Bis gewünschte Genauigkeit erreicht
- **Suche**: Bis Element gefunden oder Ende erreicht
- **Simulation**: Bis Zielzustand oder Zeitlimit
- **Datenverarbeitung**: Bis Datei/Stream zu Ende


![bg right:40% 90%](https://i.postimg.cc/y8gTLNy6/Mermaid-Chart-Create-complex-visual-diagrams-with-text-2025-10-23-090839.png)

### while: Grundform

```python
# Einfache Zählschleife mit while
i = 0
while i < 3:  # Bedingung: solange i kleiner als 3
    print(i)  # Ausgabe: 0, 1, 2
    i += 1  # Zähler erhöhen (wichtig!)
```

### Endlosschleife vermeiden

```python
# Schlechte Idee: i wird nie verändert → Endlosschleife
i = 0
while i < 3:
    print(i)
    # i += 1  # vergessen! → Bedingung bleibt immer True
```

### while: Zählschleife (wenn Bedingungen flexibler sein sollen)

```python
# Schleife mit mehreren Abbruchbedingungen
schritte = 0
energie = 10
while energie > 0 and schritte < 5:  # Stopp bei energie=0 ODER 5 Schritten
    print(f"Schritt {schritte}: Energie = {energie}")
    energie -= 3  # Energie reduzieren
    schritte += 1  # Schrittzähler erhöhen
```

### Sentinel-Schleife (lesen bis Ende)

```python
# Wiederhole bis spezielle Eingabe (Sentinel-Wert)
zeile = input("Wert (leer beendet): ")
while zeile != "":  # Leere Eingabe = Abbruch
    print(f"Eingabe war: {zeile}")
    zeile = input("Wert (leer beendet): ")  # Neue Eingabe
```

### Iteration bis Toleranz (Konvergenz)

```python
# Annäherung an Zielwert mit Toleranz
temp = 20.0
ziel = 22.0
schritt = 0.3
iters = 0
# Stoppe wenn nahe genug am Ziel ODER max. Iterationen erreicht
while abs(temp - ziel) > 0.1 and iters < 200:
    temp += schritt  # Temperatur erhöhen
    iters += 1  # Zähler erhöhen
print(f"Endtemperatur {temp:.1f}°C nach {iters} Schritten")
```

### `break` und `continue` mit `while`

```python
# break: Schleife vorzeitig beenden
# continue: Rest des Durchlaufs überspringen
nummer = 0
gefunden = None
while nummer <= 20:
    nummer += 1
    if nummer % 2 == 0:
        continue  # Gerade Zahlen überspringen
    if nummer > 15:
        gefunden = nummer  # Erste ungerade Zahl > 15
        break  # Schleife abbrechen
    print(f"Prüfe: {nummer}")
print(f"Gefunden: {gefunden}")
```

### Aufgabe: Geschwindigkeitsregelung

Entwirf eine Regelung, die eine Geschwindigkeit `v` auf `v_target` bringt.

- Start: $v_0$, Ziel: $v_\text{target}$, Proportionalfaktor ($0 < k ≤ 1$)
- Aktualisierung pro Schritt: $v_{i+1} = v_i + k  (v_\text{target} - v_i)$
- Stoppe, wenn $|v - v_\text{target}| < \varepsilon$ oder `max_steps` erreicht
- Ausgabe: Anzahl Schritte und Endwert $v$


## `for`-Schleifen

- Wiederholen Code für jedes Element einer Sammlung
- Anzahl Wiederholungen ist meist vorher bekannt
- Durchlaufen sequenziell alle Elemente

**Typische Anwendungsfälle:**
- **Feste Anzahl Wiederholungen**: z.B. 10× etwas ausführen
- **Berechnung über Sequenzen**: Summen, Mittelwerte, Transformationen
- **Über Sammlungen iterieren**: Siehe Kapitel Datenstrukturen

![bg right:40% 90%](https://i.postimg.cc/mgnTGm9M/Mermaid-Chart-Create-complex-visual-diagrams-with-text-2025-10-23-091355.png)

### `for`: Wiederholungen mit `range()`

```python
# Schleife mit fester Anzahl Wiederholungen
for i in range(5):  # Iteriert über 0, 1, 2, 3, 4
    print(f"Durchlauf {i}")
```

### `range()`: Integer-Folgen erzeugen

```python
# range() erzeugt Zahlenfolge von 0 bis n-1
for i in range(5):  # 0, 1, 2, 3, 4
    print(i)
```

```python
# range ist ein spezieller Typ (kein Liste)
print(range(5))  # range(0, 5)
```

### `range(start, stop)` und `range(start, stop, step)`

```python
# range mit Start- und Endwert
for i in range(2, 7):  # Start bei 2, Ende vor 7: 2,3,4,5,6
    print(i)
```

```python
# range mit Schrittweite (auch rückwärts)
for t in range(10, -1, -2):  # Von 10 bis 0 in 2er-Schritten: 10,8,6,4,2,0
    print(t)
```

### Über Strings iterieren

```python
# Jedes Zeichen einzeln durchgehen
for ch in "ABCD":  # Iteriert über jeden Buchstaben
    print(ch)
```

```python
# String-Variable iterieren
wort = "NASA"
for buchstabe in wort:
    print(f"Buchstabe: {buchstabe}")
```

### Anwendung: Zeichen zählen

```python
# Häufigkeit eines Zeichens zählen
text = "Programmieren"
anzahl_e = 0
for zeichen in text:
    if zeichen == "e":  # Prüfe jedes Zeichen
        anzahl_e += 1  # Zähler erhöhen
print(f"Anzahl 'e': {anzahl_e}")
```

### `break` und `continue` in `for`-Schleifen

```python
# break und continue funktionieren auch in for-Schleifen
for zahl in range(1, 11):
    if zahl % 3 == 0:
        continue  # Vielfache von 3 überspringen
    if zahl > 7:
        break  # Schleife bei Zahlen > 7 beenden
    print(zahl)  # Gibt aus: 1, 2, 4, 5, 7
```

### Verschachtelte Schleifen: Multiplikationstabelle

```python
# Schleife in Schleife: Für jedes i alle j durchgehen
for i in range(1, 4):  # Äußere Schleife: 1, 2, 3
    for j in range(1, 4):  # Innere Schleife: 1, 2, 3
        print(f"{i} × {j} = {i*j}")
    print("---")  # Trenner nach jeder Zeile der äußeren Schleife
```


### Aufgabe: Quersumme berechnen

Schreibe eine Funktion, die die Quersumme einer positiven Ganzzahl berechnet.

- Wandle die Zahl in einen String um
- Iteriere über alle Zeichen
- Wandle jedes Zeichen zurück in `int` und addiere
- Teste mit verschiedenen Zahlen (z.B. 123 → 6, 9876 → 30)

### Aufgabe: Batterie-Lade-Simulation

- Batterie startet bei 3.0 V, Ziel: 4.2 V, Sicherheitslimit: 4.5 V  
- Spannung steigt pro Zyklus um 0.1 V, max. 50 Zyklen  

**Aufgaben:**  
1. Simuliere den Ladeprozess mit einer Schleife
2. Stoppe, wenn Zielspannung, Sicherheislimit oder max. Zyklen erreicht sind
3. Gib nur alle 5 Zyklen den Status aus
4. Am Ende: Endspannung und Anzahl Zyklen ausgeben  

![bg right:30% 80%](https://upload.wikimedia.org/wikipedia/commons/d/d7/Oxygen480-status-battery-charging-080.svg)
