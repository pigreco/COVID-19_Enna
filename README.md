<!-- TOC -->

- [Perché questo spazio -- In costruzione](#perch%c3%a9-questo-spazio----in-costruzione)
- [Idea](#idea)
- [Scopo](#scopo)
- [Dati](#dati)
  - [Se usi questi dati](#se-usi-questi-dati)
- [Schema dati](#schema-dati)
- [Ringraziamenti](#ringraziamenti)

<!-- /TOC -->

## Perché questo spazio -- In costruzione

L’esigenza di avere un dataset in cui vengano registrati i valori relativi all’epidemia COVID-19 in **provincia di Enna** dettagliato per comune nasce dalla `mancanza` di un tale dataset nel repo del **Dipartimento della Protezione Civile**, dove i dati disaggregati per provincia riguardano soltanto il campo **totale_casi**, e dalla mancanza di disponibilità di tali dati da parte della **Regione Siciliana**, **assenza totale di dati a livello comunale**.

La **Regione Siciliana** pubblica quotidianamente (in prosa e per immagini) un comunicato in cui vengono riportati alcuni valori che riguardano **l’epidemia COVID-19 in Sicilia**, avvisando che sono i valori comunicati al **Dipartimento di Protezione Civile** ma non rende appunto disponibile un dataset che elenchi l’insieme di questi dati comunicati quotidianamente.

## Idea

L'idea parte da un ottimo lavoro realizzato dalla Comunità [OpenDataSicilia](https://github.com/opendatasicilia/COVID-19_Sicilia/blob/master/README.md) (grazie mille). Un abbraccio virtuale a [Nino Galante](https://twitter.com/picomiles) e [Andrea Borruso](https://twitter.com/aborruso).

## Scopo

Questo dataset è il frutto della raccolta dei dati pubblicati nella Pagina Facebook di [Emanuele Parisi](https://www.facebook.com/EPAOfficialPage/) e ha lo scopo di consentirne la loro analisi per ciascun **Comune della provincia di Enna** andando a colmare un’importante lacuna.
I dati dettagliati per comune pubblicati dalla pagina Facebook non coprono tutte le informazioni: alcuni valori vengono forniti come dato provinciale complessivo. È il caso, ad esempio, del numero di pazienti ricoverati in terapia intensiva o semi-intensiva e isolamento domiciliare.

## Dati

I dati al momento sono 👉 disponibili [QUI](https://docs.google.com/spreadsheets/d/e/2PACX-1vRJCsEMoD5i15z6HhFesRkhBcfjvLwLzsxxFMlntmVs30PmG8fh4urAZRefA0apC7ZndGY5Bh1V_aNs/pub?gid=1077363181&single=true&output=csv) in formato CSV (encoding UTF-8 e , come separatore), con un file di insieme che contiene tutti i dati.

Si possono visualizzare anche tramite questo [foglio elettronico](https://docs.google.com/spreadsheets/d/1UZxgu5BMfNfq6KhhbqVJ5aCPskQKcUPZ1qhNSQmfrzM/edit?usp=sharing), che per noi vale soltanto come risorsa di lavoro. I dati "veri" sono quelli del suddetto CSV.

### Se usi questi dati

Cita per favore la Pagina Facebook [@EPAOfficialPage](https://www.facebook.com/EPAOfficialPage/) e questo URL https://www.facebook.com/EPAOfficialPage/. I dati sono distribuiti con licenza [Creative Commons Attribuzione 4.0 Internazionale](http://creativecommons.org/licenses/by/4.0/).

## Schema dati

Riportiamo qui di seguito il significato della tipologia dei valori esposti e le formule con cui vengono ricavati alcuni valori.

- `totale_casi`: numero totale di casi di Coronavirus
- `guariti`: numero di guariti dal coronavirus
- `deceduti`: numero di morti da e con coronavirus
- `incidenza ogni 1000 ab.`: rappprto tra `totale_casi` e popolazione residente per 1000 abitanti. (`totale_casi/pop*1000`)

## Ringraziamenti

Questo lavoro non ci sarebbe stato senza il forte stimolo inziale e il tempo dedicato di [Emanuele Parisi](https://www.facebook.com/EPAOfficialPage/) e [Totò Fiandaca](https://twitter.com/totofiandaca). Da una idea di [OpenDataSicilia](https://github.com/opendatasicilia/COVID-19_Sicilia/blob/master/README.md) (grazie mille).