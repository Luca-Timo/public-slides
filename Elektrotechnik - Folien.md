---
marp: true
theme: hm
paginate: true
language: de
footer: Elektrotechnik – Straub
headingDivider: 3
---
# Elektrotechnik

**Luft- und Raumfahrttechnik Bachelor, 1. Semester**

David Straub

### Organisatorisches

- 🎓 Moodle-Kurs: https://link.hm.edu/hnyu
- 💬 Matrix-Raum: https://link.hm.edu/83kf
- 🕥 Sprechstunde: Do. 10:30–11:30, Raum, B 374
- 📖 Literatur
    - Pregla – [OPAC](https://link.hm.edu/2c6h)
    - Hagmann – [OPAC](https://link.hm.edu/fvqd)
    - Hering u.a. – [online](https://link.springer.com/book/10.1007/978-3-662-67538-0)
    - Fischer – [online](https://link.springer.com/book/10.1007/978-3-658-25644-9)
- 🗒️ Vorlesungsskript Prof. Palme u.a.: https://palme.userweb.mwn.de/
- ✍️ Prüfung: schriftlich, 60 Minuten, keine Hilfsmittel


### Gliederung des Kurses

1. [Einführung](#einführung) (Physikalische Größen, Einheiten)
2. [Das elektrische Feld](#das-elektrische-feld) (Ladungen, Kräfte, Felder, Potential, Spannung, Kapazität, Kondensatoren)
3. [Gleichstrom](#gleichstrom) (Stromstärke, Widerstand, Stromkreisberechnungen, Energie, Leistung)
4. [Magnetismus](#magnetismus) (Feld in Vakuum und Materie, Kräfte, Induktion)
5. [Wechselstrom](#wechselstrom) (Komplexe Wechselstromrechnung, Wirk- und Blindleistung)
6. [Drehstrom](#drehstrom) (Dreiphasensystem)



## Einführung

1. Physikalische Größen
2. Internationales Einheitensystem (SI)


### Physikalische Größen

... sind messbare Eigenschaften eines Systems.

**Skalare Größen**: werden durch einen *Zahlenwert* und eine *Einheit* beschrieben.

$$x = \underbrace{\lbrace x \rbrace}_{\text{Zahlenwert}} \cdot \underbrace{[x]}_{\text{Einheit}}$$

Beispiele:

- $t = 10 \, \text{s}$ (Zeit)
- $m = 5 \, \text{kg}$ (Masse)
- $\Delta T = -20 \, \text{K}$ (Temperaturdifferenz)

### Rechnen mit Einheiten

- Nur Größen mit gleichen Einheiten können addiert oder subtrahiert werden

$$x = 2 \, \text{m} + 3 \, \text{m} = 5 \, \text{m}$$


- Bei Multiplikation/Division von Größen werden die Einheiten multipliziert/dividiert

$$v = \frac{s}{t} = \frac{10 \, \text{m}}{5 \, \text{s}} = 2 \, \frac{\text{m}}{\text{s}} = 7{,}2 \, \text{km/h}$$

Hinweis: im Textsatz werden Einheiten immer aufrecht geschrieben, Variablen *kursiv*.

### Vektorielle physikalische Größen

... sind physikalische Größen, die durch einen *Betrag* und eine *Richtung* beschrieben werden. Der Betrag wird durch einen *Zahlenwert* und eine *Einheit* beschrieben.

$$\vec{v}\equiv \mathbf{v} = \underbrace{|\vec{v}|}_{\text{Betrag}} \cdot \underbrace{\vec{e}_v}_{\text{Richtung}}$$

$$ |\vec{v}| \equiv v = \underbrace{\lbrace v \rbrace}_{\text{Zahlenwert}} \cdot \underbrace{[v]}_{\text{Einheit}}$$

Der Zahlenwert des Betrags ist immer positiv.

Beispiele:

- $\vec{v} = 10 \, \frac{\text{m}}{\text{s}} \cdot \vec{e}_x$ (Geschwindigkeit)
- $\vec{a} = 9{,}81 \, \frac{\text{m}}{\text{s}^2} \cdot (\vec{e}_{-z})$ (Beschleunigung)


### Das Internationale Einheitensystem (SI)


| Basisgröße                    | Größensymbol      | Dimensionssymbol         | Einheit   | Einheitenzeichen |
| ----------------------------- | ----------------- | ------------------------ | --------- | ---------------- |
| Zeit                          | $t$               | $\text{T}$               | Sekunde   | s                |
| Länge                         | $l$               | $\text{L}$               | Meter     | m                |
| Masse                         | $m$               | $\text{M}$               | Kilogramm | kg               |
| Elektrische Stromstärke       | $I$               | $\text{I}$               | Ampere    | A                |
| Thermodynamische Temperatur   | $T$               | $\Theta$                 | Kelvin    | K                |
| Stoffmenge                    | $n$               | $\text{N}$               | Mol       | mol              |
| Lichtstärke                   | $I_v$             | $\text{J}$               | Candela   | cd               |


### Naturkonstanten und SI-Einheiten
| Konstante    | Beschreibung                                         | Exakter Wert         | Einheit |
|--------------|------------------------------------------------------|----------------------|---------|
| $\Delta\nu_\mathrm{Cs}$ | Strahlung des Caesium-Atoms                       | 9 192 631 770        | Hz      |
| $c$            | Lichtgeschwindigkeit                                 | 299 792 458          | m/s     |
| $h$            | Planck-Konstante                                     | 6,62607015 × 10<sup>−34</sup>   | J·s     |
| $e$            | Elementarladung                                      | 1,602176634 × 10<sup>−19</sup>  | C       |
| $k_\mathrm{B}$ | Boltzmann-Konstante                                 | 1,380649 × 10<sup>−23</sup>     | J/K     |
| $N_\mathrm{A}$ | Avogadro-Konstante                                  | 6,02214076 × 10<sup>23</sup>    | mol⁻¹   |
| $K_\mathrm{cd}$ | Photometrisches Strahlungsäquivalent               | 683                  | lm/W    |

### Abgeleitete Einheiten

Von den Basisgrößen lassen sich durch mathematische Operationen abgeleitete Einheiten bilden.
Beispiele für abgeleitete Einheiten:

- **Kraft**: $\vec{F} = m \cdot \vec{a}$
    $[F] = [m] \cdot [\vec{a}]= \text{kg} \cdot \frac{\text{m}}{\text{s}^2} = \text{N}$ (Newton)

- **Energie/Arbeit**: $W = F \cdot s$
    $[W]  = \text{N} \cdot \text{m} = \frac{\text{kg} \cdot \text{m}^2}{\text{s}^2}= \text{J}$ (Joule)

- **Leistung**: $P = \frac{\Delta W}{\Delta t}$
$[P]  = \frac{[W]}{[t]} = \frac{\text{J}}{\text{s}} = \frac{\text{kg} \cdot \text{m}^2}{\text{s}^3}= \text{W}$ (Watt)



### Dimensionsanalyse

Jede physikalische Größe hat – unabängig von Einheit oder Zahlenwert – eine **Dimension**, die beschreibt, wie die Größe aus den Grundgrößen zusammengesetzt ist. 

Beispiele:
- Geschwindigkeit: $\text{dim}[v] = \frac{\text{L}}{\text{T}}$
- Kraft: $\text{dim}[F] = \text{M} \cdot \frac{\text{L}}{\text{T}^2}$
- Winkel: $\text{dim}[\varphi] = \frac{\text{L}}{\text{L}} = 1$ (dimensionslos)

Beide Seiten einer Gleichung müssen dieselbe Dimension haben!

### SI-Präfixe (alltäglich)

|    Faktor      | Name   | Präfix | Faktor      | Name   | Präfix             |
| ----------- | -------- | ---------------- | ----------- | -------- | ---------------- |
| $10^{-1}$   | Dezi     | d                | $10^{1}$    | Deka     | da               |
| $10^{-2}$   | Zenti    | c                | $10^{2}$    | Hekto    | h                |
| $10^{-3}$   | Milli    | m                | $10^{3}$    | Kilo     | k                |
| $10^{-6}$   | Mikro    | µ                | $10^{6}$    | Mega     | M                |
| $10^{-9}$   | Nano     | n                | $10^{9}$    | Giga     | G                |
| $10^{-12}$  | Piko     | p                | $10^{12}$   | Tera     | T                |

### SI-Präfixe (nicht alltäglich)

|    Faktor      | Name   | Präfix | Faktor      | Name   | Präfix             |
| ----------- | -------- | ---------------- | ----------- | -------- | ---------------- |
| $10^{-15}$  | Femto    | f                | $10^{15}$   | Peta     | P                |
| $10^{-18}$  | Atto     | a                | $10^{18}$   | Exa      | E                |
| $10^{-21}$  | Zepto    | z                | $10^{21}$   | Zetta    | Z                |
| $10^{-24}$  | Yokto    | y                | $10^{24}$   | Yotta    | Y                |
| $10^{-27}$  | Ronto    | r                | $10^{27}$   | Ronna    | R                |
| $10^{-30}$  | Quecto   | q                | $10^{30}$   | Quetta   | Q                |


### µ & °C: praktische Tipps

- Mikro: µ (griechischer Buchstabe "My")
    - Deutsches Tastaturlayout: `AltGr` + `m`

- Grad Celsius: °C (Gradzeichen + Großbuchstabe C)
    - Deutsches Tastaturlayout: `Shift` + `^` + `C`

Nur in Systemen, die diese Schriftzeichen nicht unterstützen (ASCII) laut  DIN 66030:2002-05:

- µ -> u
- °C -> Cel


### ⚠️ Nicht-SI-Einheiten in der Luftfahrt ✈️

Immer noch weit verbreitet:

- Flughöhe in **Fuß** 🦶
    - 1 ft = 0,3048 m
- Entfernung in **Seemeilen** 🚢
    - 1 NM = 1852 m
- Geschwindigkeit in **Knoten** 🪢
    - 1 kt = 1 NM/h = 1,852 km/h

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/5/57/3-Pointer_Altimeter.svg)

### Mars Climate Orbiter

https://www.youtube.com/watch?v=MfavzjbZzl8

## Das elektrische Feld

1. Elektrische Ladung
2. Coulomb’sches Gesetz
3. Elektrisches Feld im Vakuum
4. Elektrisches Feld in Materie
5. Potential, Spannung, Arbeit
6. Homogenes Feld und Kondensatoren


### Die vier fundamentalen Wechselwirkungen

1. **Gravitation** 🪐
    - Hält das Sonnensystem zusammen – wirkt auf Masse
2. **Elektromagnetismus** ⚡
    - Hält Atome und Moleküle zusammen – wirkt auf elektrische Ladung
3. **Starke Wechselwirkung** 🎨
    - Hält Atomkerne zusammen
4. **Schwache Wechselwirkung** ☢️
    - Verantwortlich für radioaktiven Zerfall

### 

![bg](https://upload.wikimedia.org/wikipedia/commons/8/83/Lightning_in_Dallas_2015.jpg)
![bg](https://upload.wikimedia.org/wikipedia/commons/8/8b/Chalcopyrite-Magnetite-cktsr-10c.jpg)

### Elektrische Ladung (*electric charge*)

- Alle Materie besteht aus Elementarteilchen, von denen einige elektrische Ladungen tragen
- Elektrische Ladungen treten in zwei Arten auf: positive und negative Ladungen (Vorzeichen: Konvention!)
- Gleichnamige Ladungen stoßen sich ab, ungleichnamige ziehen sich an


### Aufbau der Materie

- Atome bestehen aus positiv geladenen Protonen, neutralen Neutronen und negativ geladenen Elektronen
- Protonen und Neutronen bilden den Atomkern
- Elektronen bewegen sich in der Atomhülle um den Atomkern

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Atom-schematic_de.svg/1280px-Atom-schematic_de.svg.png)

### Elementarladung

- Elektrische Ladungen sind immer ganzzahlige Vielfache der Elementarladung $e= 1{,}602176634 \cdot 10^{-19} \, \text{C}$ (Definition des Coulombs)
    - Elektron: $Q = -e$ (!)
    - Proton: $Q = +e$
    - Up-Quark: $Q = +\frac{2}{3}e$, Down-Quark: $Q = -\frac{1}{3}e$
- Man sagt, die Ladung sei *quantisiert*

![bg 80% right:25%](https://upload.wikimedia.org/wikipedia/commons/b/b7/Proton_quark_structure.svg)


### Coulomb’sches Gesetz (*Coulomb’s law*)

- Experimente haben gezeigt, dass die Kraft zwischen zwei Punktladungen $Q_1$ und $Q_2$ proportional zur Größe der Ladungen und umgekehrt proportional zum Quadrat ihres Abstands $r$ ist
- Mathematisch wird dies durch das Coulomb’sche Gesetz beschrieben:

$$|\vec{F}_{12}| = k \cdot \frac{Q_1 \cdot Q_2}{r^2}$$

$k$ ist abhängig vom Einheitensystem. Im SI-System gilt: $k = \frac{1}{4 \pi \varepsilon_0}$, wobei $\varepsilon_0$ die elektrische Feldkonstante ist, $\varepsilon_0 \approx 8{,}854 \cdot 10^{-12} \, \frac{\text{C}^2}{\text{N} \cdot \text{m}^2}$.

### Analogie zur Schwerkraft

Newtonsches Gravitationsgesetz: Kraft zwischen zwei Himmelskörpern

$$|\vec{F}_{12}| = G \cdot \frac{m_1 \cdot m_2}{r^2}$$

$G$: Gravitationskonstante, $G \approx 6{,}6743 \cdot 10^{-11} \, \frac{\text{kg}^2}{\text{N} \cdot \text{m}^2}$

### Beispiel: Relative Stärke von Coulomb- und Gravitationskraft

- Proton: $m_p \approx 1{,}67 \cdot 10^{-27} \, \text{kg}$, $Q_p = +e$
- Elektron: $m_e \approx 9{,}11 \cdot 10^{-31} \, \text{kg}$, $Q_e = -e$
- $|\vec{F}_{12,\text{Coulomb}}| = \frac{1}{4 \pi \varepsilon_0} \cdot \frac{Q_1 \cdot Q_2}{r^2}$
- $\epsilon_0 \approx 8{,}854 \cdot 10^{-12} \, \frac{\text{As}}{\text{Vm}}$
- $|\vec{F}_{12,\text{Gravitation}}| = G \cdot \frac{m_1 \cdot m_2}{r^2}$
- $G \approx 6{,}6743 \cdot 10^{-11} \, \frac{\text{m}^3}{\text{kg} \cdot \text{s}^2}$


### Elektromagnetismus im Alltag

Fast alle alltäglichen physikalischen Phänomene werden von der elektromagnetischen Wechselwirkung bestimmt!

Die Gravitation spielt nur eine Rolle, da

- es keine negativen Massen gibt -> immer anziehend
- die elektrischen Ladungen von Elektronen und Protonen exakt aufheben

### Elektrische Feldstärke (*electric field [strength]*)

- Ein elektrisch geladenes Teilchen übt eine Kraft auf andere elektrisch geladene Teilchen aus
- Diese Kraft ist umso größer, je größer die Ladung der Probeteilchen ist
- Elektrische Feldstärke: Kraft pro Ladungseinheit, die auf eine Probeladung wirkt

$$\vec{E} = \frac{\vec{F}}{Q} \Leftrightarrow \vec{F} = Q \cdot \vec{E}$$

Feld = ortsabhängige physikalische Größe (Vektorfeld/Skalarfeld)

$[\vec{E}] = \frac{\text{N}}{\text{C}}$

### Elektrisches Feld einer Punktladung

Die elektrische Feldstärke $\vec{E}$ im Abstand $r=|\vec{r}|$ einer Punktladung $Q$ ist:

$$\vec{E}(\vec r) = \frac{Q}{4 \cdot \pi \cdot \varepsilon_0 \cdot r^2} \cdot \frac{\vec{r}}{r} = \frac{Q}{4 \cdot \pi \cdot \varepsilon_0 \cdot r^2} \cdot \vec{e}_r$$

### Feldlinien

- Die Feldlinien eines elektrischen Feldes sind Linien, die die Richtung und Stärke des Feldes darstellen
- Sie verlaufen von positiven zu negativen Ladungen und zeigen die Richtung der Kraft an, die auf eine positive Probeladung wirken würde
- Die Dichte der Feldlinien ist proportional zur Stärke des elektrischen Feldes: Je dichter die Linien, desto stärker das Feld


### Elektrische Flussdichte (*electric flux density*)

$$\vec{D} = \varepsilon_0 \cdot \vec{E}$$

$$[\vec{D}] = [\varepsilon_0] \cdot [\vec{E}] = \frac{\text{C}^2}{\text{N} \cdot \text{m}^2} \cdot \frac{\text{N}}{\text{C}} = \frac{\text{C}}{\text{m}^2}$$

Fluss durch eine Fläche $A$:

$$\Psi = \int_{A} \vec{D} \cdot d\vec{A}$$



### Elektrische Flussdichte einer Punktladung

Die elektrische Flussdichte $\vec{D}$ im Abstand $r$ einer Punktladung $Q$ ist:

$$\vec{D}(r) = \frac{Q}{4 \cdot \pi \cdot r^2} \cdot \frac{\vec{r}}{r} = \frac{Q}{A(r)} \cdot \vec{e}_r$$

Für eine konstante Flussdichte $D$ auf der Fläche $A$ gilt:  $Q = D(r) \cdot A(r)$

### Fluss durch geschlossene Oberflächen

(Tafel)

### Satz von Gauß (*Gauss's law*)

Der elektrische Fluss durch eine geschlossene Oberfläche ist gleich der eingeschlossenen Ladung:

$$\oint_{A} \vec{D} \cdot d\vec{A} = Q_{\text{innen}}$$




### Beispiel: Kugelsymmetrische Ladungsverteilung

Für eine Punktladung $Q$ im Zentrum einer Kugel mit Radius $r$ gilt:

$$\oint_{A} \vec{D} \cdot d\vec{A} = D(r) \cdot 4\pi r^2 = Q$$

Daraus folgt:

$$D = \frac{Q}{4\pi r^2}$$

### Beispiel: Unendlich langer, gerader Leiter



### Elektrisches Potential und Spannung

Bewegung einer positiven Probeladung $Q_P$ im Feld einer positiven Punktladung $Q^+$

$P_1 \rightarrow P_2$:  $W > 0$ : Arbeit wird freigesetzt
$P_2 \rightarrow P_1$ :  $W < 0$ : Arbeit muss aufgebracht werden

Vgl. Mechanik:  $W = \vec{F} \cdot \vec{s}$

Hier:  $\vec{F}$  ist abhängig von $r$!

$$W_{12} = \sum_{i} \Delta W_{i} = \sum_{i} F_{i} \cdot \Delta r$$

Integral:  $\Delta r \rightarrow 0$

$$W_{12} = \int_{r_1}^{r_2} F(r) \cdot dr = Q_P \cdot \int_{r_1}^{r_2} E(r) \cdot dr
= Q_P \cdot \int_{r_1}^{r_2} \frac{Q^+}{4 \cdot \pi \cdot \varepsilon \cdot r^2} dr$$
$$= Q_P \cdot \left[ \frac{Q^+}{4 \cdot \pi \cdot \varepsilon} \cdot \frac{1}{r_1} - \frac{Q^+}{4 \cdot \pi \cdot \varepsilon} \cdot \frac{1}{r_2} \right]$$

### Elektrisches Potential einer Punktladung

Das elektrisches Potential $\varphi$ im Abstand $r$ von einer Punktladung $Q$:

$$\varphi(r) = \frac{Q}{4 \cdot \pi \cdot \varepsilon_0 \cdot \varepsilon_r \cdot r}$$

Einheit: $[\varphi] = \frac{\text{J}}{\text{C}} = \text{V}$ (Volt)

Punkte gleichen Potentials bilden Äquipotentialflächen.

### Analogie: Gravitationspotential

Potentielle Energie bzgl. Referenzhöhe:

$$E_\text{pot} = m \cdot g \cdot h = m \cdot \varphi_g(h)$$

[PLOT]

### Spannung & Arbeit

#### Elektrische Spannung (*electric voltage*)

Die elektrische Spannung ist definiert als Potentialdifferenz:

$$U_{12} = \varphi_1 - \varphi_2$$

Einheit: $[U] = \text{V}$ (Volt)

#### Elektrische Arbeit (*electric field work*)

Die elektrische Arbeit ist das Produkt aus Ladung und Spannung:

$$W_{12} = \int_{P_1}^{P_2} \vec{F} \cdot d\vec{s} = Q \cdot (\varphi_1 - \varphi_2) = Q \cdot U_{12}$$

Einheit: $[W] = \text{J}$ (Joule)

Die elektrische Arbeit ist unabhängig vom Weg!

