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
2. Grundlagen: Variablen, Datentypen, Verzweigungen
3. Funktionen
4. Schleifen
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


## Grundlagen: Variablen, Datentypen, Verzweigungen

1. Variablen
2. Einfache Datentypen (`int`, `bool`, `float`, `str`)
3. Stringmanipulation
4. Verzweigungen

### Variablen

Variablen speichern Werte:

```python
x = 42
y = x
x = 100
print(y)
```

```python
print(x)
```

### Variablennamen: Fallstricke

```python
# class = "Mathematik"  # SyntaxError!
klass = "Mathematik"
print(klass)
```

```python
# Schlecht lesbar:
l = 1
I = 1  
O = 0
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
riesig = 2 ** 1000
print(len(str(riesig)))
```


```python
print(riesig % 1000)
```


### Division & Integers

```python
print(10 / 3)
```


```python
print(type(10 / 3))
```


```python
print(10 // 3)
```


```python
print(-10 // 3)
```



### Wahrheitswerte (bool)

Booleans sind eigentlich Integers:

```python
print(True + True)
```


```python
print(True * 42)
```


```python
print(False - True)
```

### Vergleichsoperatoren
```python
print(5 == 5)
```

```python
print(5 != 3)
```

```python
print(10 > 5)
```

```python
print(5 >= 5)
```

```python
print("Python" > "Java")  # Lexikografischer Vergleich
```


### Truthiness: Was ist wahr?

```python
print(bool(0))
```


```python
print(bool(42))
```


```python
print(bool(""))
```


```python
print(bool("0"))
```


```python
print(bool([]))
```


```python
print(bool([0]))
```


### Vergleichsoperatoren: Chaining

```python
x = 5
print(1 < x < 10)
```


```python
print(10 < x < 20)
```


```python
print(1 < x > 3)
```


### Identität vs. Gleichheit

```python
a = [1, 2, 3]
b = [1, 2, 3]
print(a == b)
```


```python
print(a is b)
```


```python
x = 256
y = 256
print(x is y)
```


```python
x = 257
y = 257
print(x is y)
```


### Kurzschlussauswertung

```python
print(False and 1/0)
```


```python
print(True or 1/0)
```


```python
print(0 and print("Hallo"))
```


### Gleitkommazahlen (float)

IEEE 754 Double Precision Fallstricke:

```python
print(0.1 + 0.1 + 0.1)
```


```python
print(0.1 + 0.1 + 0.1 == 0.3)
```


```python
x = 0.1
print(f"{x:.20f}")
```

### Vergleich von Gleitkommazahlen

```python
a = 0.1 + 0.1 + 0.1
b = 0.3
tolerance = 1e-10
print(abs(a - b) < tolerance)
```


### Extreme Werte

```python
print(1e308)
```


```python
print(1e309)
```


```python
print(1e-324)
```


```python
print(1e-325)
```


### NaN und Infinity

```python
print(float('inf') + 1)
```


```python
print(float('inf') == float('inf'))
```


```python
nan = float('nan')
print(nan == nan)
```


```python
print(nan != nan)
```


### Strings (str)

Strings sind immutable – aber was bedeutet das?

```python
s = "Hallo"
s[0] = "h"
```


```python
s = "Python"
original_id = id(s)
s += " ist toll"
print(id(s) == original_id)
```


### Escape Sequences

```python
print("C:\new_folder\test.txt")
```


```python
print(r"C:\new_folder\test.txt")
```


```python
print("Zeile 1\nZeile 2\tTab")
```

### String-Formatierung mit f-Strings

```python
name = "Alice"
age = 25
print(f"Hallo, ich bin {name} und {age} Jahre alt")
```

Vorteile gegenüber älteren Methoden:
- Lesbar und intuitiv
- Direkte Variableneinbettung
- Schneller als `.format()` oder `%`-Formatierung
- Unterstützt Ausdrücke: `f"Das Ergebnis ist {x + y}"`



### f-String Formatierung

```python
number = 1234567.89
print(f"{number:,.2f}")
```


```python
print(f"{number:>15,.2f}")
```


```python
percent = 0.1234
print(f"{percent:.1%}")
```


### f-String Besonderheiten

```python
name = "World"
greeting = "Hello"
print(f"{greeting} {name}")
```


```python
name = "Python"
print(f"{{{name}}}")
```

### Aufgabe: Persönlicher Datenrechner

Schreibe ein Python-Skript, das persönliche Daten verarbeitet:

**Gegeben:**
- Name, Geburtsjahr, Größe (cm), Gewicht (kg)

**Berechne und gib aus:**
- Alter (aktuelles Jahr: 2025)
- BMI (Gewicht / (Größe in m)²)
- Personendaten als formatierte f-Strings
- Wahrheitswerte für: ist volljährig, ist normalgewichtig (BMI 18,5-24,9)


### Kontrollstrukturen: Übersicht

**Was sind Kontrollstrukturen?**
- Mechanismen zur Steuerung des Programmflusses
- Bestimmen die Reihenfolge der Befehlsausführung
- Ermöglichen komplexe Programmlogik

**Grundtypen:**
1. **Sequenz** – Befehle nacheinander (Standard)
2. **Verzweigung** – Bedingte Ausführung (`if`, `elif`, `else`)
3. **Wiederholung** – Schleifen (`for`, `while`)


### Verzweigungen: Das Herzstück der Entscheidung

**Konzept:**
- Programme müssen Entscheidungen treffen
- Verschiedene Pfade basierend auf Bedingungen
- Ermöglicht adaptive und intelligente Programme

**Syntax-Muster:**
```python
if bedingung1:
    # Code wenn bedingung1 wahr
elif bedingung2:
    # Code wenn bedingung2 wahr  
else:
    # Code wenn keine Bedingung wahr
```

### Verzweigungen: Wichtige Konzepte

- Einrückung (Indentation) definiert Codeblöcke
- Bedingungen werden von oben nach unten geprüft
- Nur der erste wahre Zweig wird ausgeführt


### Verzweigungen: Truthiness in der Praxis

```python
name = ""
if name:
    print("Name ist vorhanden")
else:
    print("Kein Name angegeben")
```


```python
name = "Alice"
if name:
    print("Name ist vorhanden")
else:
    print("Kein Name angegeben")
```



### Komplexe Bedingungen

```python
age = 17
has_id = True
if age >= 18 and has_id:
    print("Einlass gewährt")
elif age >= 16:
    print("Einlass mit Begleitung")
else:
    print("Kein Einlass")
```


```python
age = 20
has_id = False
if age >= 18 and has_id:
    print("Einlass gewährt")
elif age >= 16:
    print("Einlass mit Begleitung") 
else:
    print("Kein Einlass")
```

### Aufgabe

Schreibe ein Python-Programm um zu entscheiden, ob eine Rakete starten darf.

**Eingaben:**
- Treibstoff (%), Temperatur (°C), Crew (ja/nein), Wetter

**Startbedingungen:**
- Treibstoff ≥ 70%, Temperatur < 100°C, Crew bereit, Wetter ≠ "storm"

**Ausgabe:**
- ✅ "🚀 Startfreigabe erteilt!" oder ❌ "Start abgebrochen!" + Grund

![bg right:30%](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/SpaceX_Starship_ignition_during_IFT-5.jpg/960px-SpaceX_Starship_ignition_during_IFT-5.jpg)