---
marp: true
theme: hm
paginate: true
language: de
footer: Programmieren – D. Straub
headingDivider: 3
---
# Programmieren

**Ingenieurinformatik Teil 1, Wintersemester 2025/26**

David Straub

## Gliederung

1. Einführung
2. Grundlagen: Variablen, Datentypen, Verzweigungen
3. Schleifen
4. Funktionen
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
- ~~FK07 DataHub (JupyterHub):~~ https://datahub.cs.hm.edu/
- Github Codespaces: https://github.com/DavidMStraub/python-codespace


### One-Minute-Paper

Moodle: https://link.hm.edu/y4vj

- Schreiben Sie 3 Dinge auf, die Sie heute gelernt haben
- Was war am unklarsten?
- Gibt es etwas spezielles, das Sie in diesem Kurs lernen möchten?