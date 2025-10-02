---
marp: true
theme: hm
paginate: true
language: de
footer: Programmieren/Praktikum – D. Straub
headingDivider: 3
math: katex
---
# Programmieren – Praktikum

**Ingenieurinformatik Teil 1, Wintersemester 2025/26**

David Straub

### Sicherheitsunterweisung für Benutzer der des Verbundlabors KCA

 

- **Fluchtwege** von jedem Raum links und rechts auf den Flur in das Treppenhaus
- an der Flurdecke sind **grüne beleuchtete Hinweisschilder** als Fluchtwegmarkierung angebracht
- die **Feuerlöscher** befinden sich im Flur und sind mit **roten Hinweisschildern** an den Seitenwänden gekennzeichnet
- die **Feuermelder** befinden sich in beiden Treppenhäusern
- im Brandfall **keinen Aufzug benützen**; Begründung: möglicher Stromausfall
- im Brandfall die **Fenster geschlossen halten**
- wichtige Informationen sind im Raum **ausgehängt**: Raumnutzungsordnung, …
- **Not-Aus-Schalter** sind in allen Räumen vorhanden

![bg 80% opacity:0.15](https://upload.wikimedia.org/wikipedia/commons/2/2f/ISO_Exit_-_Right.svg)

### Aufgabe: imperiale Einheiten

Schreiben Sie ein Programm, mit dem die in der Luftfahrt verbreiteten imperialen Einheiten Fuß, Seemeilen und Knoten in das metrische System (Meter, m/s) umgerechnet werden können.

Das Programm soll zunächst Fragen, welche der drei Einheiten umgerechnet werden soll. Anschließend soll der Wert der Einheit abgefragt werden, der umgerechnet werden soll. Das Programm soll dann den umgerechneten Wert ausgeben.

**Umrechnungswerte**

- 1 f = 0.3048 m
- 1 NM = 1852 m
- 1 kn = 1 NM/h

### Aufgabe: Schwebedauer

Ein Multicopter benötigt im Schwebeflug eine Leistung von

$$P = \kappa\frac{T^{3/2}}{\sqrt{2 \rho A}}$$


$\kappa$: dimensionlose Effizienz < 1, $T=mg$: Schubkraft, $\rho$:  Luftdichte, $A=n \pi r^2$: Rotorfläche

$g=9{,}81 \frac{\text{m}}{\text{s}^2}$, $\rho_\text{München}\approx1{,}2 \frac{\text{kg}}{\text{m}^3}$

Der Multicopter hat einen Akku mit der Kapazität 3 Ah und einer durchschnittlichen Spannung von 11.1 V.

Schreiben Sie ein Programm, das die Schwebedauer des Multicopters in Abhängigkeit von der Masse $m$, der Anzahl $n$ und dem Durchmesser $2r$ der Rotoren berechnet. Nehmen sie $\kappa=0{,}5$ an.

![bg right:30%](https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Quadcopter_Drone_in_flight.jpg/1024px-Quadcopter_Drone_in_flight.jpg)

