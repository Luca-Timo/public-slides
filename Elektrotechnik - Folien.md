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


### Coulumb’sches Gesetz – Experiment

https://www.youtube.com/watch?v=9mFlELwuctI

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


### Superpositionsprinzip

Das elektrische Feld mehrerer (diskreter) Ladungen ist die Vektorsumme der Felder der einzelnen Ladungen
$$\vec{E}(\vec{r}) = \sum_{i} \vec{E}_i(\vec{r})$$
$$= \sum_{i} \frac{Q_i}{4 \pi \varepsilon_0 \cdot |\vec{r}-\vec{r}_i|^2} \cdot \frac{\vec{r}-\vec{r}_i}{|\vec{r}-\vec{r}_i|}$$

Übergang zu kontinuierlicher Ladungsverteilung: Integral

$$\vec{E}(\vec{r}) = \int_{V} \frac{\rho(\vec{r}') \cdot dV'}{4 \pi \varepsilon_0 \cdot |\vec{r}-\vec{r}'|^2} \cdot \frac{\vec{r}-\vec{r}'}{|\vec{r}-\vec{r}'|}$$



### Feldlinien: Beispiele

- Punktladung
- Zwei gegensätzliche Punktladungen (Dipol)
- Zwei gleichnamige Punktladungen
- Positiv geladene Ebene
- Zwei entgegengesetzt geladene Platten (Plattenkondensator)


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


### Satz von Gauß (*Gauss’s law*)

Der elektrische Fluss durch eine geschlossene Oberfläche ist gleich der eingeschlossenen Ladung:

$$\oint_{A} \vec{D} \cdot d\vec{A} = Q_{\text{innen}}$$




### Beispiel: Kugelsymmetrische Ladungsverteilung

Für eine Punktladung $Q$ im Zentrum einer Kugel mit Radius $r$ gilt:

$$\oint_{A} \vec{D} \cdot d\vec{A} = D(r) \cdot 4\pi r^2 = Q$$

Daraus folgt:

$$D = \frac{Q}{4\pi r^2}$$

### Beispiel: Unendlich langer, gerader Leiter


### Elektrisches Feld in Materie

- In nicht oder schwach leitenden Materialien können elektrische Felder zu **Polarisation** führen.
- Bei der Polarisation richten sich die positiven und negativen Ladungen innerhalb des Materials unter dem Einfluss des elektrischen Feldes neu aus.
- Dies führt zu einer Verschiebung der Ladungszentren und erzeugt ein internes elektrisches Feld, das dem äußeren Feld entgegenwirkt.
- Solche polarisierbaren Materialien nennt man **Dielektrika**.

### Abschwächung des elektrischen Feldes in Dielektrika

Definition:

$$\vec{E}_\text{Materie} = \underbrace{\vec{E}_\text{Vakuum}}_{\text{freie Ladungen}} - \underbrace{\vec{E}_\text{Polarisation}}_{\text{gebundene Ladungen}} = \frac{1}{\varepsilon_r} \cdot \vec{E}_\text{Vakuum}$$

mit $\varepsilon_r \geq 1$ Permittivitätszahl (auch relative Permittivität). Beispiele:

| Material     | $\varepsilon_r$ |
|--------------|------------------|
| Luft         | 1,00059          |
| Gummi        | 2,5–3,5          |
| Glas         | 5–7              |
| Destilliertes Wasser | 81       |

### Elektrische Flussdichte in Dielektrika

**Konvention**: man vereinbart, dass die elektrische Flussdichte sich immer auf das durch die freien Ladungen erzeugte Feld bezieht.

$$\vec{D} =\varepsilon_0 \vec{E}_\text{Materie} + \vec{P} = \varepsilon_0 \varepsilon_r \vec{E}_\text{Materie} = 
\varepsilon \vec{E}_\text{Materie} = \varepsilon_0 \cdot \vec{E}_\text{Vakuum}$$

Polarisation $\vec{P}= -\varepsilon_0 \vec{E}_\text{Polarisation}$

$\vec{D}$ heißt daher auch (veraltet) **Elektrische Verschiebungsdichte** (*electric displacement field*).

Vorteil: der Satz von Gauß gilt unverändert, wenn man nur die freien Ladungen berücksichtigt:

$$\oint_{A} \vec{D} \cdot d\vec{A} = Q_{\text{innen, frei}}$$

### Elektrische Arbeit

Bewegung einer positiven Probeladung $Q_P$ im Feld einer positiven Punktladung $Q^+$

$P_1 \rightarrow P_2$:  $W > 0$ : Arbeit wird freigesetzt
$P_2 \rightarrow P_1$ :  $W < 0$ : Arbeit muss aufgebracht werden

Vgl. Mechanik:  $W = \vec{F} \cdot \vec{s}$

Hier:  $\vec{F}$  ist abhängig von $r$!

$$W_{12} = \sum_{i} \Delta W_{i} = \sum_{i} F_{i} \cdot \Delta r$$

### Elektrische Arbeit und Potential

$$W_{12} = \sum_{i} \Delta W_{i} = \sum_{i} F_{i} \cdot \Delta r$$


Integral:  $\Delta r \rightarrow 0$

$$W_{12} = \int_{r_1}^{r_2} F(r) \cdot dr = Q_P \cdot \int_{r_1}^{r_2} E(r) \cdot dr
= Q_P \cdot \int_{r_1}^{r_2} \frac{Q^+}{4 \cdot \pi \cdot \varepsilon \cdot r^2} dr$$
$$= Q_P \cdot \left[ \frac{Q^+}{4 \cdot \pi \cdot \varepsilon} \cdot \frac{1}{r_1} - \frac{Q^+}{4 \cdot \pi \cdot \varepsilon} \cdot \frac{1}{r_2} \right]$$
$$= Q_P \cdot (\varphi_1 - \varphi_2)$$

### Elektrisches Potential einer Punktladung

Das elektrisches Potential $\varphi$ im Abstand $r$ von einer Punktladung $Q$:

$$\varphi(r) = \frac{Q}{4 \cdot \pi \cdot \varepsilon_0 \cdot \varepsilon_r \cdot r}$$

Einheit: $[\varphi] = \frac{\text{J}}{\text{C}} = \text{V}$ (Volt)

Punkte gleichen Potentials bilden Äquipotentialflächen.

### Analogie: Gravitationspotential

Potentielle Energie bzgl. Referenzhöhe:

$$E_\text{pot} = m \cdot g \cdot h = m \cdot \varphi_g(h)$$

- Höhenlinien sind Äquipotentiallinien
- Die Kraft wirkt immer in Richtung des stärksten Gefälles (senkrecht zu den Äquipotentiallinien)
- Die „Feldlinien“ sind nie in sich geschlossen

### Potentialfelder

Elektrostatische Felder sind **Potentialfelder** oder auch **wirbelfreie Felder**. Für sie gilt:

- Feldlinien beginnen und enden auf Ladungen („Quellen“ oder „Senken“)
- Feldlinien sind nie in sich geschlossen
- Das Feld lässt sich als Gradient (Richtungsableitung) eines Skalarfeldes (Potential) darstellen

Weitere Beispiele für Potentialfelder:

- Schwerkraft auf der Erdoberfläche (2D)
- Schwerkraft zwischen Himmelskörpern (3D)
- Wärmefluss in Festkörpern (1D, 2D, 3D)
- Grundwasserstrom (3D) (nur solange die Strömung wirbelfrei ist!)

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




### Beziehung zwischen elektrischem Feld und Spannung

$$W_{12} = \int_{P_1}^{P_2} \vec{F} \cdot d\vec{s} = Q \cdot (\varphi_1 - \varphi_2) = Q \cdot U_{12}$$

Für die elektrische Spannung gilt allgemein:

$$U_{12} = \int_{P_1}^{P_2} \vec{E} \cdot d\vec{s} = \varphi_1 - \varphi_2$$

### Homogenes elektrisches Feld

Ein homogenes elektrisches Feld ist durch konstante Feldstärke und parallele Feldlinien gekennzeichnet.

Wichtige Eigenschaften:
- Konstante Feldstärke $E$ in Betrag und Richtung
- Parallele Feldlinien
- Äquipotentialflächen stehen senkrecht zu den Feldlinien
- Die Spannung zwischen zwei Punkten ist $U = E \cdot d$, wobei $d$ der Abstand in Feldrichtung ist

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Field_lines_equipotentials_parallel_plates.svg/1920px-Field_lines_equipotentials_parallel_plates.svg.png)



### Homogenes Feld mit dem Satz von Gauß: linke Seite

Unendlich ausgedehnte, gleichmäßig geladene Ebene mit Flächenladungsdichte $\sigma$

**Gesucht:** Elektrische Feldstärke $E$ im Abstand $d$ von der Ebene

**Ansatz:** Anwendung des Satzes von Gauß mit einem zylindrischen Gauß'schen Volumen

$$\oint_{A} \vec{D} \cdot d\vec{A} = Q_{\text{innen}}$$

**Gauß'sche Fläche:** Zylinder mit Grundfläche $A$ und Achse senkrecht zur geladenen Ebene

- Mantelfläche: $\vec{D} \perp d\vec{A} \Rightarrow \vec{D} \cdot d\vec{A} = 0$
- Grundflächen: $\vec{D} \parallel d\vec{A} \Rightarrow \vec{D} \cdot d\vec{A} = D \cdot dA$

$$\oint_{A} \vec{D} \cdot d\vec{A} = D \cdot A + D \cdot A = 2 \cdot D \cdot A$$


### Homogenes Feld mit dem Satz von Gauß: rechte Seite

**Eingeschlossene Ladung:** $Q_{\text{innen}} = \sigma \cdot A$

**Satz von Gauß:**
$$2 \cdot D \cdot A = \sigma \cdot A$$

$$D = \frac{\sigma}{2} \quad \Rightarrow \quad E = \frac{\sigma}{2 \varepsilon_0 \varepsilon_r}$$

**Ergebnis:** Das Feld ist homogen und unabhängig vom Abstand zur Ebene.


### Kondensatoren (*capacitors*)

Kondensatoren sind elektrische Bauelemente, die elektrische Ladung speichern können.

Die gespeicherte Ladung für eine gegebene Spannung wird bezeichnet als:


**Kapazität (*capacitance*)**

$$C := \frac{Q}{U} $$


Einheit: $[C] = \frac{\text{C}}{\text{V}} = \text{F}$ (Farad)

![bg 80% right:40%](https://upload.wikimedia.org/wikipedia/commons/b/b9/Capacitors_%287189597135%29.jpg)


### ⚠️ Kapazität ≠ Kapazität

Die Kapazität (*capacity*) einer Batterie ist eine Ladungsmenge!

z.B.: $\text{mAh} = 10^{-3} \, \text{A} \cdot 3600 \, \text{s} = 3{,}6 \, \text{C}$

Nicht zu verwechseln mit der Kapazität (*capacitance*) eines Kondensators in Farad!

### Plattenkondensator


$$E =\frac{Q}{\varepsilon_0 \varepsilon_r A} ,\qquad U = E \cdot d = \frac{Q}{\varepsilon_0 \varepsilon_r A} \cdot d$$

$$C=\frac{Q}{U} = \frac{\varepsilon_0 \varepsilon_r A}{d}=\frac{\varepsilon A}{d}$$

Kapazität steigt mit:
- Fläche $A$ der Platten
- relativer Permittivität $\varepsilon_r$ des Dielektrikums
- Abnahme des Plattenabstands $d$

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/2/20/Plate_CapacitorII.svg)

### Kugelkondensator

Ein Kugelkondensator besteht aus zwei konzentrischen leitenden Kugelschalen mit den Radien $R_i$ (innen) und $R_a$ (außen).

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/3/3f/Spherical_Capacitor.svg)
### Kugelkondensator: Herleitung mit dem Satz von Gauß

**Elektrisches Feld (Satz von Gauß):**

$$\oint \vec{D} \cdot d\vec{A} = Q$$

$$D(r) \cdot 4\pi r^2 = Q \Rightarrow D(r) = \frac{Q}{4\pi r^2}$$

$$E(r) = \frac{D(r)}{\varepsilon} = \frac{Q}{4\pi \varepsilon r^2}$$

### Kapazität des Kugelkondensators

**Spannung zwischen den Kugeln:**

$$U = \int_{R_1}^{R_2} E(r)\,dr = \frac{Q}{4\pi \varepsilon} \int_{R_1}^{R_2} \frac{1}{r^2}\,dr$$

$$U = \frac{Q}{4\pi \varepsilon} \left( \frac{1}{R_1} - \frac{1}{R_2} \right)$$

**Kapazität:**

$$C = \frac{Q}{U} = 4\pi \varepsilon \frac{R_1 R_2}{R_2 - R_1}$$


### Zylinderkondensator

Ein Zylinderkondensator besteht aus zwei koaxialen leitenden Zylindern mit den Radien $R_1$ (innen) und $R_2$ (außen) und der Länge $l$.

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/b/b8/Cylindrical_CapacitorII.svg)

### Zylinderkondensator: Herleitung mit dem Satz von Gauß

**Gesucht:** Elektrisches Feld zwischen den Zylindern

**Ansatz:** Satz von Gauß mit zylindrischer Gauß'scher Fläche (Radius $r$, Länge $l$)

$$\oint \vec{D} \cdot d\vec{A} = Q_{\text{eingeschlossen}}$$

**Symmetrie:** Das Feld zeigt radial nach außen, konstant auf Zylinderflächen

- Mantelfläche: $\vec{D} \parallel d\vec{A} \Rightarrow \vec{D} \cdot d\vec{A} = D \cdot dA$
- Grundflächen: $\vec{D} \perp d\vec{A} \Rightarrow \vec{D} \cdot d\vec{A} = 0$

$$\oint \vec{D} \cdot d\vec{A} = D(r) \cdot 2\pi r l = Q$$

### Zylinderkondensator: Elektrisches Feld

**Aus dem Satz von Gauß:**

$$D(r) \cdot 2\pi r l = Q$$

$$D(r) = \frac{Q}{2\pi r l}$$

$$E(r) = \frac{D(r)}{\varepsilon} = \frac{Q}{2\pi \varepsilon r l}$$

**Ergebnis:** Das elektrische Feld nimmt mit $\frac{1}{r}$ ab.

### Zylinderkondensator: Spannung und Kapazität

**Spannung zwischen den Zylindern:**

$$U = \int_{R_1}^{R_2} E(r)\,dr = \frac{Q}{2\pi \varepsilon l} \int_{R_1}^{R_2} \frac{1}{r}\,dr$$

$$U = \frac{Q}{2\pi \varepsilon l} \cdot \ln\frac{R_2}{R_1}$$

**Kapazität:**

$$C = 2 \cdot \pi \cdot \varepsilon_0 \cdot \varepsilon_r \cdot \frac{l}{\ln\frac{R_2}{R_1}}$$

### Energie im Kondensator

Im elektrischen Feld eines Kondensators ist Energie gespeichert, die bei Entladung wiedergewonnen werden kann.

Während des Aufladevorgangs nimmt die Spannung mit der Ladung kontinuierlich zu:

$$U(Q) = \frac{Q}{C}$$

Die beim Aufladen gespeicherte Energie berechnet sich zu:

$$W = \int_{0}^{Q} U(q) \cdot dq = \int_{0}^{Q} \frac{q}{C} \cdot dq = \frac{Q^2}{2C}= \frac{1}{2}  Q  U = \frac{1}{2}  C  U^2$$


$$[W] = [U] \cdot [Q] = \text{V} \cdot \text{C} = \text{V} \cdot \text{A} \cdot \text{s} = \text{W} \cdot \text{s} = \text{J}$$

### Parallelschaltung von Kondensatoren

Bei der Parallelschaltung von Kondensatoren addieren sich die Kapazitäten:

$$C_{\text{ges}} = C_1 + C_2 + \dots + C_n = \sum_{i=1}^n C_i$$

Eigenschaften:
- Gleiche Spannung an allen Kondensatoren
- Die Gesamtladung ist die Summe der Einzelladungen

$$U_{\text{ges}} = U_1 = U_2 = \dots = U_n$$

### Reihenschaltung von Kondensatoren

Bei der Reihenschaltung von Kondensatoren addieren sich die Kehrwerte der Kapazitäten:

$$\frac{1}{C_{\text{ges}}} = \frac{1}{C_1} + \frac{1}{C_2} + \dots + \frac{1}{C_n} = \sum_{i=1}^n \frac{1}{C_i}$$

Eigenschaften:
- Gleiche Ladung auf allen Kondensatoren $Q_1 = Q_2 = \dots = Q_n = Q_{\text{ges}}$
- Die Gesamtspannung ist die Summe der Einzelspannungen

$$U_{\text{ges}} = U_1 + U_2 + \dots + U_n = \sum_{i=1}^n U_i$$



$$C_{\text{ges}} = \frac{Q_{\text{ges}}}{U_{\text{ges}}} = \frac{Q_{\text{ges}}}{U_1 + U_2 + \dots + U_n} =  \frac{Q_{\text{ges}}}{Q_{\text{ges}} \cdot \left(\frac{1}{C_1} + \frac{1}{C_2} + \dots + \frac{1}{C_n}\right)} = \frac{1}{\frac{1}{C_1} + \frac{1}{C_2} + \dots + \frac{1}{C_n}}$$

### Kondensatoren mit inhomogenen Dielektrika 1


Wenn ein Plattenkondensator aus zwei Bereichen mit unterschiedlichen Dielektrika besteht, berechnet sich die Gesamtkapazität als:

$$C = C_1 + C_2 = \frac{\varepsilon_0}{d} \cdot \left(\varepsilon_{r1} \cdot A_1 + \varepsilon_{r2} \cdot A_2\right)$$

Dies entspricht einer Parallelschaltung von zwei Teilkondensatoren.

### Kondensatoren mit inhomogenen Dielektrika 2

Wenn ein Plattenkondensator aus zwei hintereinander liegenden Schichten mit unterschiedlichen Dielektrika besteht, berechnet sich die Gesamtkapazität als:

$$C = \frac{\varepsilon_0 \cdot \varepsilon_{r1} \cdot \varepsilon_{r2} \cdot A}{\varepsilon_{r2} \cdot d_1 + \varepsilon_{r1} \cdot d_2}$$

Dies entspricht einer Reihenschaltung von zwei Teilkondensatoren.


### Übersicht: Größen im elektrischen Feld

Größe | Definition | Einheit
--- | --- | ---
Elektrische Ladung (*electric charge*) | $Q$ | $[Q] = \text{C}$
Spannung (*voltage*) | $U = \Delta \varphi$ | $[U] = \text{V}$
Kapazität (*capacitance*) | $C = \frac{Q}{U}$ | $[C] = \text{F} = \frac{\text{C}}{\text{V}}$
Elektrische Feldstärke (*electric field [strength]*) | $\vec{E} = \frac{\vec{F}}{Q}$ | $[\vec{E}] = \frac{\text{V}}{\text{m}}=\frac{\text{N}}{\text{C}}$
Elektrische Flussdichte (*electric flux density*) = [Di-]Elektrische Verschiebungsdichte (*electric displacement field*) | $\vec{D} = \varepsilon_0 \varepsilon_r \vec{E}$ | $[\vec{D}] = \frac{\text{C}}{\text{m}^2}$
Elektrische Feldkonstante (*electric constant*) = Permittivität des Vakuums (*vacuum permittivity*) | $\varepsilon_0$ | $[\varepsilon_0] = \frac{\text{C}^2}{\text{N} \cdot \text{m}^2}$
[Absolute] Permittivität (*[absolute] permittivity*) = ~~Dielektrizitätskonstante~~ | $\varepsilon$ | $[\varepsilon] = \frac{\text{C}^2}{\text{N} \cdot \text{m}^2}$
Relative Permittivität (*relative permittivity*) = ~~Relative Dielektrizitätskonstante~~  | $\varepsilon_r = \frac{\varepsilon}{\varepsilon_0}$ | dimensionslos
