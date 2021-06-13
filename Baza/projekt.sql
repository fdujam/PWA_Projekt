-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 10:47 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `korisnicko_ime` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `lozinka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(2, 'Filip', 'Dujam', 'M&M', '$2y$10$O4U0y3pX7dtPhhV1ccp.COb077xmTvO/yPr73L15yLRXAYrybFqGW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(20, '12.06.2021.', 'Amerikanisch-russisches ', 'Wenn sich in wenigen Tagen Joe Biden und Wladimir Putin in Genf treffen, steht ein Frost-Gipfel an', 'Besonders viele Momente unbeschwerter Zweisamkeit hat es zwischen Amerikanern und Russen nur wenige gegeben. Vielleicht bei der Übergabe Alaskas von Russland an die USA im Oktober 1867. Oder im November 1985, als sich die damaligen Regierungschefs der UdSSR und der USA, Michail Gorbatschow und Ronald Reagan, in Genf trafen und begannen, den Kalten Krieg zu beenden. Auch Wladimir Putin hatte dem Klassenfeind einst sein Herz geöffnet. Zu Beginn des Jahrtausends sollte ein Gipfel mit dem amerikanischen Kollegen George W. Bush in St. Petersburg den Anfang der neuen Partnerschaft besiegeln. Doch sie währte nicht lang. Putin sitzt bis heute als Präsident im Kreml, und das Verhältnis ist wieder so kalt wie ehedem.\r\n\r\nDer Unbeugsame, Oppositionspolitiker Alexej Nawalnyj, und der Autokrat, Präsident Wladimir Putin\r\nPUTIN GEGEN NAWALNY\r\nDer eine hat die Macht. Der andere das Netz ? über den größten Zweikampf Russlands\r\nIn einigen Tagen findet der nächste Gipfel zwischen den USA und Russland statt. Joe Biden ist bereits der fünfte US-Präsident mit dem es Dauermachthaber Putin zu tun bekommt und ganz sicher nicht derjenige, in den er irgendwelche Hoffnungen setzt. Angeblich will der Kremlchef noch am Tag des Treffens in einer herrschaftlichen Villa in Genf nach Moskau zurückfliegen. Joe Biden wiederum, der Putin jüngst einen \"Killer\" nannte, sagte vor seinem Abflug zum Gipfelmarathon in Europa: \"Wir suchen nicht den Konflikt mit Russland\", würden aber sofort reagieren, wenn die russische Regierung \"schändliche Handlungen\" begehe. Nach einem harmonischen Termin klingen diese Worte nicht.\r\n\r\nUSA und Russland: nur kurz gute Freunde\r\nIm Grunde waren gute Beziehungen zwischen den beiden Staaten ohnehin eher die Ausnahme als die Regel. Nach dem Ende der UdSSR Anfang der 90er bis Anfang der 2000er sah es ein paar Jahre so aus, als würden die Systemgegensätze nach und nach verschwinden. Höhepunkt war 1997 ein Kooperationsabkommen zwischen der Nato und Russland. Doch spätestens mit der Osterweiterung des Militärbündnisses begann die neue Freundlichkeit wieder abzukühlen. Nach Ansicht Moskaus war bei den Verhandlungen zur deutschen Einheit vereinbart worden, dass die Nato im wesentlichen an der deutschen Ostgrenze endet, 2004 aber standen mit dem Beitritt der baltischen Staaten plötzlich Nato-Truppen direkt vor den Toren Russlands. Auch wenn bis heute umstritten ist, wie bindend die Zusage der Westmächte war, das Bündnis nicht nach Osten auszuweiten, fühlte sich der Regierungschef in Moskau hintergangen.\r\n\r\n\r\nIn den Jahren danach erodierte das Vertrauen der Großmächte ineinander leise aber kontinuierlich. Den nach den Anschlägen vom 11. September von den Amerikanern begonnenen \"Krieg gegen den Terror\" lehnte Wladimir Putin ab, ebenso wie die Versuche des Westens, Russland stärker in die Nato oder internationale Runden einzubinden. Auch Edward Snowden war da keine große Hilfe. Putin hatte dem Whistleblower nach dessen Enthüllungen über die NSA und ihren Abhör-Eskapaden 2013 mit größer Wonne Asyl gewährt ? nur, um dem damaligen US-Präsidenten Barack Obama eins auszuwischen. Kein Jahr später standen russische Truppen auf ukrainischem Boden und verleibten sich vor den Augen einer ohnmächtigen Weltöffentlichkeit die Krim ein.', 'putin.jpg', 'politik', 0),
(21, '12.06.2021.', 'Ein Hoch den Schuldenmachern! Helden des Fortschritts', 'Wer Schulden macht, hat einen schlechten Ruf. Völlig zu Unrecht, findet unser Autor. In Wahrheit seien sie die Helden des Fortschritts.', 'Liebe Schuldenmacher,\r\n\r\nich muss Euch verteidigen. Ständig werdet Ihr angepöbelt, Ihr seid \"Zerstörer?, ruiniert Staat und Gesellschaft, sitzt in den Parteien, in Notenbanken, in Unternehmen, in Berlin, in Brüssel, in Washington, in Peking, und eines Tages werden wir alle unter Brücken schlafen, in Lumpen gehüllt, von Essensresten leben, Regenwasser trinken, und alles, alles, alles liegt an Euch. Den bösen Schuldenmachern. \r\n\r\nDas ist Quatsch. Ihr wisst das, aber viele Menschen glauben es. Sie vergessen, dass die Crash-Propheten in Parlamenten, Redaktionen oder Universitäten eigene Interessen verfolgen. Sie wollen Wähler gewinnen, Bücher verkaufen, sich im Rampenlicht sonnen.\r\n\r\nIn fünf Schritten zum Immobilienkredit\r\nEIGENKAPITAL, TILGUNG, LAUFZEIT\r\nDie Checkliste für einen guten Immobilienkredit\r\n10 Bilder\r\nAngst verkauft sich gut\r\nAngst verkauft sich gut. Das liegt an unserer Herkunft, sagen Evolutionsforscher. Wir lieben Geschichten, weil wir so Erfahrungen austauschen und Gefühle erleben, und Angst ist ein Gefühl, das uns fesselt. Wir lesen deshalb lieber negative als positive Nachrichten.\r\n\r\n\r\nAngst ist gut, weil sie uns vor Gefahren warnt. Aber Angst ist auch schlecht, weil zu viel davon passiv macht oder panisch. Wir sehen nicht mehr klar. Denn Ihr Schuldenmacher seid die Helden des Fortschritts.\r\n\r\nOhne Schuldenmacher kein Smartphone\r\nIhr haltet das für übertrieben?\r\n\r\nSchaut in die Hosentasche. Genau, das Smartphone, meine ich. Ohne Schulden gäbe es kein Handy samt Apps. Nur weil in den 70er Jahren ein gewisser Steve Jobs in seiner Garage werkelte und sich eine Viertelmillion Dollar borgte, entstand Apple. Den Mann müsst ihr übrigens zu Eurer Ikone küren, sagte über ihn Apple-Mitgründer Steve Wozniak: \"Er war ein Junge, der kein Geld hatte.\"\r\n\r\nOder erzählt von Zalando. Heute ein Konzern mit über 14.000 Arbeitnehmer und acht Milliarden Euro Umsatz, doch vor 13 Jahren gab es in der Torstraße in Berlin-Mitte nur eine WG, wo sich ein paar junge Leute ein Lager für Schuhe eingerichtet hatten. Sie liehen sich Geld, der Rest ist bekannt.\r\n\r\nApple-Chef Tim Cook hielöt sich bei der Eröffnungs-Keynote zur WWDC 2021 weitgehend zurück\r\nWWDC\r\nAlles wird eins: Apple lässt die Grenzen zwischen seinen Geräten verschwinden\r\nImmer begann der Aufstieg mit Schulden\r\nOb Facebook oder Google ? immer begann der Aufstieg mit Schulden. Die ganze Digitalwirtschaft lebt vom Pump, ja die Geschichte des Kapitalismus ist eine Geschichte der Schulden. Die einen haben Ideen, aber kein Geld, die anderen haben Geld, aber keine Ideen. Und dann kommt ihr, die Schuldenmacher. Ihr schafft Fortschritt.\r\n\r\nNehmen wir den Staat. Wie soll er ohne Kredite Straßen, Schulen oder Krankenhäuser bauen? Den Bürgern erst das Geld über Steuern und Abgaben abknöpfen und dann investieren? Welcher Politiker wird dafür in einer Demokratie gewählt? Eben. Wachstum geht nur auf Pump. Sonst wächst nichts.\r\n\r\nOhne Schulden erstarrt die Welt\r\nEine Welt ohne Schulden ist eine erstarrte Welt. Erinnern wir uns doch an die Zeit vor dem Kapitalismus, vor mehr als 300 Jahren. Damals wuchs die Wirtschaft kaum. Im Jahr 1500, schreibt der israelische Historiker Yuval Noah Harari, lag die Pro-Kopf-Produktion bei umgerechnet 550 Dollar, heute bei 8800 Dollar. Der Grund? Der seid Ihr, die Schuldenmacher. \"Kredit erlaubt uns, die Gegenwart auf Kosten der Zukunft zu erschaffen\", sagt Harari. Die Last von heute, wird zum Gewinn von morgen, Ihr Schuldenmacher seid Brückenbauer zwischen Gegenwart und Zukunft. Wegen Euch leben viele Deutsche nicht mehr in zugigen Hütten, sondern in beheizten Wohnungen mit Geschirrspüler.  \r\n\r\nNatürlich habt Ihr unter Euch auch Schwindler. Der Staatschef, der sich etwas borgt, um Günstlinge zu bezahlen, der Unternehmer, der mit Geliehenem seine Hobbys finanziert. Das sind keine Helden, das sind Betrüger. Aber ist deshalb Schuldenmacherei grundsätzlich falsch? Nur weil Donald Trump ein narzisstischer Rassist ist, sind nicht alle 46 US-Präsidenten narzisstische Rassisten gewesen.\r\n\r\nImmer mehr Deutsche rutschen in die Schuldenfalle ? was Verbraucherschützer raten\r\nVideo abspielenImmer mehr Deutsche rutschen in die Schuldenfalle (Symbol)\r\nDie moderne Welt geformt\r\nNatürlich können Schulden Not erzeugen. Wenn sich die Mahnbriefe häufen, wenn die Gläubiger im Nacken sitzen, doch wann dieser Zeitpunkt tatsächlich erreicht ist, lässt sich nicht einfach sagen. Der Internethändler Amazon hatte sieben Jahre nur Schulden angehäuft, bevor er erstmals Gewinn machte, der Streamingdienst Spotify knapp zehn Jahre, und bei dem Fahrzeugdienstleister Uber warten die Geldgeber seit zwölf Jahren auf einen Gewinn. Dafür haben sie Milliarden von Dollar gezahlt.\r\n\r\nSchauen wir auf die Staaten. Japan hat gemessen am Bruttoinlandsprodukt (BIP) den höchsten Schuldenberg der Welt (256 Prozent des BIP) und kann sich dennoch leicht Geld besorgen. Oder Griechenland. Der Staat war 2008 praktisch pleite, doch der Schuldenberg war damals niedriger als heute (2008: 110 Prozent des BIP, 2021: 213 Prozent des BIP) Heute sind die Schuldtitel von Griechenland sogar gefragt. Sechsmal mehr als geplant hätte das Land kürzlich an \"Anleihen\" verkaufen können, die Gläubiger vertrauen dem Staat wieder. Bei Schulden geht es um Psychologie, nicht so sehr um Fakten.  \r\n\r\nLiebe Schuldenmacher, Ihr habt die moderne Welt geformt, aber die Menschen mögen Euch nicht. Deshalb wehrt Euch. Erzählt von den Werten, die Ihr geschaffen habt, von Steve Jobs und dem Smartphone und fragt die Menschen, ob sie auf Internet, Auto, Fernseher verzichten und in die Hütten zurückkehren wollen.\r\n\r\nVergesst nicht, Ihr Schuldenmacher seid die Guten, nicht die Crash-Propheten.', 'jobs.jpg', 'politik', 0),
(22, '12.06.2021.', 'Jacke mit besonderer Botschaft: Die Bidens bringen \"Liebe\" mit z', 'US-First Lady Jill Biden hat beim Empfang zum G7-Gipfel in Großbritannien eine Jacke mit besonderer Botschaft präsentiert. \"Nun, ich denke, dass wir Liebe aus Amerika mitbringen\", erklärte sie.', 'Wenige Tage vor dem Gipfeltreffen mit US-Präsident Joe Biden sieht Kremlchef Wladimir Putin das Verhältnis zu den USA in einer schweren Krise. ?Wir haben eine bilaterale Beziehung, die in den letzten Jahren ihren Tiefpunkt erreicht hat?, sagte Putin in einem in der Nacht auf Samstag veröffentlichten Ausschnitt eines Interviews mit NBC News nach einer Übersetzung des Senders.\r\n\r\nBiden unterscheide sich radikal von seinem Vorgänger Donald Trump, den Putin als außergewöhnliche, talentierte und schillernde Person beschrieb. Biden dagegen sei ein ?Karrieremensch?, der praktisch sein ganzes Erwachsenenalter in der Politik verbracht habe, sagte Putin der Übersetzung zufolge. Mit Blick auf Biden sagte der Kremlchef zudem, es gäbe einige Vor- und einige Nachteile, aber sicher keine impulsiven Handlungen im Namen eines US-Präsidenten.\r\n\r\nBiden und Putin treffen am 16. Juni in Genf aufeinander. Der US-Präsident hatte am Mittwoch gesagt, die USA wollten eine ?stabile, vorhersehbare Beziehung? und suchten nicht den Konflikt mit Russland. Das Weiße Haus betont immer wieder, Putin mit dem Treffen nicht belohnen zu wollen und dass ein persönliches Gespräch wegen der Differenzen zwischen den Ländern besonders wichtig sei.', 'boris.jpg', 'politik', 0),
(23, '12.06.2021.', 'AHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peel', 'AHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achtenAHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achtenAHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achten', 'AHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achtenAHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achtenAHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achtenAHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achtenAHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achtenAHA-Peeling: Darauf sollten Sie bei der Anwendung des Säure-Peelings achten', 'tablet.jpg', 'gesundheit', 0),
(24, '12.06.2021.', '12-Zoll-Tablet im Vergleich: Was bieten Modelle unterschiedliche', 'Größer, schneller und besser: Tablets erleben derzeit einen regelrechten Boom. Laut einer aktuellen Statistik kommt der mobile PC hierzulande in über 50 Prozent aller Haushalte zum Einsatz ? Tendenz steigend. Doch woher rührt das Interesse?', 'Die Zahl der Personen, die einen mobilen PC nutzen, ist in den letzten vier Jahren rasant gestiegen: Besaßen 2016 noch knapp über 15 Millionen Menschen ein Tablet, waren es 2020 bereits mehr als 19 Millionen. Das lässt darauf schließen, dass der Trend nicht erst durch die Corona-Pandemie und damit einhergehend das Arbeiten im Homeoffice ausgelöst wurde. Tatsächlich könnte das steigende Interesse einer einfachen Erklärung zugrunde liegen: Größer als ein Smartphone, aber kleiner ? und vor allem handlicher ? als ein Laptop ist der mobile PC ein praktischer Allrounder für zu Hause und unterwegs. Je nach Hersteller unterscheiden sich die gängigen Marken in der Ausstattung und im Preis. Wir haben uns deshalb fünf unterschiedliche Tablets mit fast oder etwas über zwölf Zoll einmal genauer angesehen und miteinander verglichen.', 'woman.jpg', 'gesundheit', 0),
(25, '12.06.2021.', 'Ventilatoren für zu Hause heute stark reduziert: Die besten Deal', 'Auf Schnäppchenjagd zu gehen, ist gar nicht so einfach: Meist muss man sich mühsam Angebote zusammensuchen. Hier bekommen Sie täglich lohnende Deals bequem auf einen Blick. Um Ihnen die Suche nach den besten Deals zu erleichtern, finden Sie hier täglich lohnende Deals aus verschiedenen Bereichen auf einen Blick', 'Vielleicht kennen Sie das: Um ein gutes Angebot zu ergattern, muss man sich häufig mühsam von Seite zu Seite klicken, sich womöglich noch bei dem hundertsten Newsletter anmelden und dann im nervigsten Fall noch weitere Bedingungen erfüllen. Kurzum: Die Schnäppchenjagd ist oft mit Mühe und Zeit verbunden ? und kostet manchmal auch Nerven.\r\n\r\nUm Ihnen die Suche nach den besten Deals zu erleichtern, finden Sie hier täglich lohnende Deals aus verschiedenen Bereichen auf einen Blick: Schnäppchen wie Tablets oder Smartphones, Küchengadgets oder andere Alltagshelfer. Es gibt jeden Tag neue Möglichkeiten zu sparen ? besonders aber bei Rabattaktionen wie dem Amazon Prime Day oder dem Black Friday oder Black Monday. Wenn Sie sich jetzt für eine kostenlose 30-Tage-Mitgliedschaft bei Amazon Prime anmelden, können Sie schon 30 Minuten vorab auf Blitzangebote zugreifen. Das AUm Ihnen die Suche nach den besten Deals zu erleichtern, finden Sie hier täglich lohnende Deals aus verschiedenen Bereichen auf einen Blick: Schnäppchen wie Tablets oder Smartphones, Küchengadgets oder andere Alltagshelfer. Es gibt jeden Tag neue bo können Sie nach der Rabattaktion einfach wieder kündigen. So profitieren Sie zwar von den Vorteilen, müssen allerdings nichts dafür bezahlen. AußerdemUm Ihnen die Suche nach den besten Deals zu erleichtern, finden Sie hier täglich lohnende Deals aus verschiedenen Bereichen auf einen Blick: Schnäppchen wie Tablets oder Smartphones, Küchengadgets oder andere Alltagshelfer. Es gibt jeden Tag neue  entfallen bei Prime-Produkten die Versandkosten. lohnende Deals aus verschiedenen Bereichen auf einen Blick: Schnäppchen wie Tablets oder Smartphones, Küchengadgets oder andere Alltagshelfer. Es gibt jeden Tag neue bo können Sie nach der Rabattaktion einfach wieder kündigen. So profitieren Sie zwar von den Vorteilen, müssen allerdings nichts dafür bezahlen. AußerdemUm Ihnen die Suche nach den besten Deals zu erleichtern, finden Sie hier täglich lohnende Deals aus verschiedenen Bereichen auf einen Blick: Schnäppchen wie Tablets oder Smartphones, Küchengadgets oder andere Alltagshelfer. Es gibt jeden Tag neue  entfallen bei Prime-Produkten die Versandkosten. ', 'fan.jpg', 'gesundheit', 0),
(26, '12.06.2021.', 'Donald Trump zwang Apple, seinen Kampf gegen die Demokraten zu u', 'Wer verrät ständig Details aus seinem inneren Kreis? Von dieser Frage war Donald Trump regelrecht besessen. Nun kommt heraus, dass er bei der Suche selbst vor der Verfolgung von Journalisten, politischen Gegnern und deren Familien nicht halt machte. Und auch Tech-Konzerne zur Mithilfe zwang.', 'Es war die Präsidentschaft der anonymen Quellen: Kaum ein Tag in Donald Trumps Amtszeit verging, ohne dass Interna teils absurde Details aus dem Arbeitsalltag seiner Administration enthüllten. Trump waren die Leaks ein Dorn im Auge. Immer wieder attackierte er die Medien, behauptete, die Quellen würden nicht existieren. Hinter den Kulissen machte er indes Jagd auf sie  - und schreckte dabei auch nicht vor drastischen Schritten zurück.\r\n\r\nDas geht aus mehreren Medienberichten hervor. Erst vor zwei Wochen war bekannt geworden, dass Trumps Justizministerium Journalisten ausgespäht hatte, ein aktueller Bericht der \"New York Times\" erhebt noch deutlich schwerere Vorwürfe: Demnach soll Trump selbst politische Gegner inklusive Kongressabgeordneten und sogar deren Familie ausspionieren haben lassen. Dafür wurde sogar Apple mit Durchsuchungsbeschlüssen zur Übergabe von Daten gezwungen.Apple äußerte sich nach Angaben der \"New York Times\" nicht auf eine Anfrage zu dem Fall. Der Konzern habe den Betroffenen aber bestätigt, dass man der Aufforderung nachgekommen und Metadaten und Account-Informationen übergeben habe, sagte eine mit der Ermittlung vertraute Person der Zeitung. Persönliche Daten wie Fotos oder Emails seien aber nicht übergeben worden. Als Metadaten bezeichnet man Daten wie den Zeitpunkt einer Kommunikation und die beteiligten Personen, der Inhalt selbst ist nicht enthalten. Allerdings sind auch Metadaten sehr aussagekräftig. Die Expertin Katarina Nocun erklärte dem stern gegenüber etwa, dass sich darüber sogar Affären und andere Beziehungen zwischen Personen sehr klar erkennen lassen.', 'trump.jpg', 'politik', 0),
(27, '12.06.2021.', 'Coronazahlen sinken weiter - Bundesregierung stuft Tirol nicht m', 'Die Fallzahlen der Corona-Infektionen sinken am Samstag weiter - auch im benachbarten Ausland. Das hat auch Einfluss auf die Urlaubspläne vieler Deutscher.', 'Die bundesweite Sieben-Tage-Inzidenz bei den Corona-Infektionen ist weiter leicht gesunken und liegt nun bei 18,3 Fällen pro 100.000 Einwohner. Wie das Robert-Koch-Institut (RKI) am Samstagmorgen unter Berufung auf Angaben der Gesundheitsämter meldete, wurden innerhalb eines Tages 1911 Neuinfektionen sowie 129 Todesfälle in Verbindung mit dem Virus registriert. Am vergangenen Samstag waren knapp 2300 Neuinfektionen gezählt worden. Die Sieben-Tage-Inzidenz lag vor einer Woche bei 26,3. Der Wert ist ein wesentlicher Maßstab für die Verschärfung oder Lockerung von Corona-Auflagen. Sie gibt die Zahl der Neuinfektionen pro 100.000 Einwohner innerhalb einer Woche an. \r\n\r\nSchlangen im Impfzentrum in den Hamburger Messehallen\r\nCORONA-PANDEMIE\r\nErste Bilanz der Impf-Freigabe: ein Stau mit Ansage. Aber es gibt Hoffnung\r\nDie Gesamtzahl der verzeichneten Corona-Fälle in Deutschland seit Beginn der Pandemie liegt nach Angaben des RKI mittlerweile bei 3.713.480. Die Zahl der insgesamt registrierten Todesfälle stieg auf 89.816.Auch im Ausland sinken die Fallzahlen. Das hat auch Einfluss auf die Urlaubspläne vieler Deutscher. Die generelle Reisewarnung für Corona-Risikogebiete mit einer Inzidenz unter 200 läuft in knapp drei Wochen aus. Dieser Schritt sei möglich, weil es in Europa \"künftig klare gemeinsame Regeln für dem Umgang mit Geimpften, Genesenen und Getesteten\" gebe, erklärte Bundesaußenminister Heiko Maas. Das Robert-Koch-Institut nahm unterdessen zahlreiche Länder und Regionen aus der Risiko-Einstufung heraus.', 'nature.jpg', 'gesundheit', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
