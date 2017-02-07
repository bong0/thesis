# Bachelor LaTeX Pack

Eine LaTeX Vorlage und Dokumentation zum Schreiben einer Abschlussarbeit.

Diese Infos habe ich im Rahmen meiner Bachelorarbeit an der Hochschule Darmstadt Fachbereich Informatik (https://fbi.h-da.de) zusammengetragen, darauf ist entsprechend auch die Vorlage zugeschnitten. 

Falls dir Code oder Dokumentation weiter geholfen haben, mentioned mich mal auf Twitter (@bong0) oder macht ein Sternchen ans Repo :)

Keywords: Abschlussarbeit, Bachelorarbeit, Masterarbeit, Bachelor Thesis, Master Thesis

# Arbeitsweise und Fragen
## Arbeit

Leitfragen:

  * A) Was *genau* ist das Problem => messbare Kriterien
  * B) Warum ist das ein Problem?

  * C) Was genau ist die Lösung?
  * D) Warum ist das eine Lösung? (Dies ist ein Evaluation)

## Abstract
Fragen A-D beantworten
 ** Erst schreiben, dann eventuelle inhaltliche Duplikate im Text rausschmeißen**

## Titel
 * Kurz und Präzise
 * Darf seriös und schwierig klingen, weil man damit die ersten beiden Arbeitsstellen damit beginnen wird und danach gefragt/bewertet

## Gliederung
  * Titel (prägnant)
  * Abstract (Kernfragen **A-D**)
  * Einleitung (Motivation B, Umfeld (Firma, Projekt,...))
  * Problemstellung (**A**) -- Nummerierte Liste von testbaren Anforderungen
  * Grundlagen (Alles was andere gemacht haben hier einführen)
  * Lösung (Nichts mehr was man nicht selbst gemacht hat)
    * Architektur (**C**)
    * Implementierung
  * Auswertung/Evaluation (**D**) -- Liste aus Kapitel "Problemstellung" durchgehen, alle Anforderungen  
  * Verwandte Arbeiten
  * Zusammenfassung und Ausblick (Was ist noch zu tun)

# Literaturquellen/-recherche
Für Informatik:

  * ieeexplore
  * dl.acm.org
  * link.springer.com
  * Science direct
  * wiley
  * Jstor

## Download
Falls euer Uni-VPN nicht funktioniert, weil sich keiner drum kümmert es ganz zu machen könnt ihr auch sci-hub benutzen. Das ist wenigstens zuverlässig.

# Review
Fragt (genug!) Freunde ob sie über eure Arbeit drüberschauen könnten, lockt sie mit Geschenken! Der/Die eine oder andere lässt es vermutlich liegen, schafft es nicht etc.

Wenn Feedback kommt: Seht es als Anregung, ihr habt trotzdem die Hoheit über Eure Arbeit! **Nicht verrückt machen lassen**

# LaTeX Hinweise und wichtige commands
Dies ist keine Einführung in LaTeX und setzt voraus, dass du bereits weißt wie du dein Dokument strukturierst und bei meinem Setup abschauen kannst.
Die folgenden Sektionen sind lediglich hinweise um dir etwas Arbeit zu ersparen welche Kommandos du für was nehmen willst und sind dann ohne weiteres funktionsfähig wenn das Rahmenwerk beibehalten wird.

## Cite
    \cite[S. 45]{book:crypto}

** Die RFCs sind direkt mit der rfc.bib eingebunden.** Das script `rfcshorthand.awk` verändert die Datei `rfc.bib` von http://tm.uka.de/~bless/bibrfcindex.html so, dass z.B. RFC4880 als [RFC4880] erscheint wird, und nicht mit dem Autorenkürzel.

## Referenzierung
    \smartref
    \vref

**Referenziere mehrere labels per Komma getrennt mit vref**

## Blöcke einrücken

    \begin{adjustwidth}{1em}{0em}
    das hier ist eingerückt
    \end{adjustwidth}

## Grafiken

```
\begin{minipage}[c]{\textwidth}
	\includegraphics{res/vv-pgp-architecture.png}
	\figcaption{Vereinfachter Aufbau der \gls{VV}}
	\label{highlevel-ablauf}
\end{minipage}
```

```
\begin{figure}[ht]
	\centering
	\Oldincludegraphics[height=0.60\textheight]{res/flowchart-fragment-cert-upload.png}
	\caption{Teil des Kontrollflusses der Kommunikation mit dem REST-API zum Schlüssel-Upload\\\footnotesize{Quelle: Fraunhofer SIT, Volksverschlüsselung REST-API-V2 Dokumentation (unveröffentlicht, Stand: 2016-11-17); portiert in anderes Modellierungswerkzeug}}
	\label{key-upload-flowchart-section}
\end{figure}
```

## Listings

```
\begin{minipage}[t]{\textwidth}
	\begin{lstlisting}[label={lst:ra-rest-cert-demo},caption={Beispielanfrage zum Upload eines PGP Public Keys},escapeinside={(--)}{--)}]
\end{lstlisting}
\end{minipage}
```

## Glossar/Abkürzungen

  * `\acrfull{WoT}` zeigt den Erklärungstext zu einem Glossareintrag (Web of Trust im Beispiel).
  * `\gls{WoT}` zeigt den Erklärungstext nur das erste Mal wenn, danach nur die Abkürzung

## Verb/Hervorheben
Es gibt zwei gute Möglichkeiten z.B. Text als Shellkommando hervorzuheben:

Ersteres hat die angenehme Eigenschaft dass man auch darf `_` ohne escaping schreiben kann.

    \verb|Text hier|

Die zweite Methode ergibt visuell das selbe, und kann dann genommen werden wenn 1 nicht funktioniert.

    \texttt{Text hier}

## Fußnoten
Einfach normal mit \footnote

### Zitatblock
Sehr simpel mit

    \begin{quotation}
    Zitierte Worte und Sätze...
    \begin{quotation}


## Boxes
Mit Hintergrund, blau: `\quickbox`

## Blockkommentare

  \iffalse
    Das Auskommentierte hier
  \fi

## Deutsche Anführungszeichen

```
    "`In Deutschen Anführungszeichen"'
```

# Diagramme/Zeichnungen
**Nicht mit powerpoint** sondern z.B. draw.io - gibt auch eine chrome extension dazu welche ohne Herunterladen-Dialog lokal speichern kann.
png export online unter Export => Erweitert => Tansparent Background => Breite mind. 2048px (Ihr bereut es sonst bei high-dpi Drucken später)

Visual Paradigm für OSX/MacOS ist gut zum Zeichnen von UML Diagrammen (ERD z.B. oder Klassendiagramme).

## draw.io Troubleshooting
Falls ihr abgeschnittene Cliparts oder ähnliches seht: Macht das Objekt wenige Pixel größer, dann rendert

Falls ihr Verschiebungen seht die nicht beim Zeichnen waren: Nehmt ein vielfaches von eurer Grafikbreite beim export, nichts willkürliches. (z.B. 1210 bei 605px ursprünglich)

## Icon/Clipart Quellen

  * https://commons.wikimedia.org/wiki/GNOME_Desktop_icons
  * https://commons.wikimedia.org/wiki/Crystal_Clear
  * https://openclipart.org/

# Präsentation
// FIXME

# Druck
In Darmstadt/online:
  * https://studentendruckportal.de/
  * http://www.der-felger.de/
  * https://www.wir-machen-druck.de/
  * WatzeDruck (nur offline) + seDruck (5% online Rabatt bei Selbstabholung)

Letzteres war meine gewählte Option: 26.69€ Summa sumarum pro Exemplar mit Leder Hardcover (günstiger als Leinen) und Prägung. WatzeDruck ist ein netter Laden, engagierter Besitzer mit dem man reden kann. sedruck ist eher unpersönlich.

# CD-Hülle
Ihr habt auch keine CD-Hülle zur Hand, müsst aber eine einreichen? Hatte ich auch nicht, kann man aber simpel basteln: http://www.kotzendes-einhorn.de/blog/2012-07/cd-hullen-aus-din-a5-blattern-falten/
