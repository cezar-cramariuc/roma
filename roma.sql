
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `conducatori` (
  `id_conducatori` int(11) NOT NULL,
  `id_cronologie` int(11) NOT NULL,
  `nume_conducator` varchar(90) NOT NULL,
  `perioada_conducere` varchar(90) NOT NULL,
  `caracterizare_conducator` text NOT NULL,
  `portret` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `conducatori`
--

INSERT INTO `conducatori` (`id_conducatori`, `id_cronologie`, `nume_conducator`, `perioada_conducere`, `caracterizare_conducator`, `portret`) VALUES
(1, 1, 'Romulus', '756 - 716 î.Cr.', '<ul><li>a întemeiat Roma</li><li>a pus bazele organizării politice</li><li>rege războinic</li></ul>', 'romulus.jpg'),
(2, 1, 'Numa Pompilius', '716 - 674', '<ul><li>o perioada de pace și liniște</li><li>reformează calendarul</li><li> noi ordine religioase: Flamini, Vestalele, Pontifii.</li></ul>', 'numa.jpg'),
(3, 1, 'Tullus Hostilius', '673 - 642', '<ul><li>rege războinic</li><li>distruge Alba Longa</li>', 'tullus.jpg'),
(4, 1, 'Ancus Martius', '642 - 617', '<ul><li>a construit un apeduct și primul pod peste Tibru</li><li>a fondat portul Ostia</li></ul>', 'ancus.jpg'),
(5, 1, 'Lucius Tarquinus Priscus', '616 - 579', '<ul><li>primul rege etrusc</li><li>construcții de amploare: un zid de apărare a Romei</li><li>sistem de canalizare</li>\r\n<li>a fondat Jocurile Romane</li></ul>', 'priscus.jpg'),
(6, 1, 'Servius Tullius', '578 - 535', '<ul><li>a reorganizat statul pe baze timocratice</li><li>a extins fortificațiile</li>\r\n<li>a construit templul Dianei, care reprezenta un cult federal în Latium: exprima dorința Romei de a-și asuma rolul politic conducător</li></ul>', 'servius.jpg'),
(7, 1, 'Tarquinus Superbus', '534 - 510', '<ul><li>conducere tiranică și arbitrară</li></ul>', 'superbus.jpg'),
(8, 2, 'Lucius Quinctius Cincinnatus', 'consul - 469 î.Cr.; dictator - 458 î.Cr. și 439 î.Cr.', 'Reprezintă un model al virtuților cetățenești; a pus mai presus de interesele personale intersele statului. În 458 a reușit să respingă atacul equilor, întorcându-se în triumf la Roma. În 439 a fost rechemat la conducerea statului pentru a salva Roma amenințată din interior: un plebeu bogat Maelius dorea să reinstaureze monarhia.', 'cincinnatus.jpg'),
(9, 2, 'Appius Claudius Caecus', 'Cenzor - 312 î.Cr. Consul - 307 î.Cr. și 296 î.Cr. Dictator - 292 și 285', 'A extins drepturile politice. A susținut întemeierea de colonii romane în Latium și Campania ca fortificații împotriva samniților și etruscilor. A construit primul drum major - Via Appia și primul apeduct. A stabilit calendarul legal. În 279 î. Cr. a ținut celebrul discurs în timp ce Roma era amenințată de Pyrrhus al Epirului - \"fiecare om este arhitectul propriei sorți\". A scris prima carte literară romană - Sentințe.', 'appius.jpg'),
(10, 2, 'Publius Cornelius Scipio Africanus', 'consul - 205 - 202', 'Unul din cei mai mari generali din toate timpurile. În campania din Spania, 211-206 î.Cr., din al II-lea război punic, a ocupat teritoriile controlate de cartaginezi. Între 204 - 202 î.Cr. Scipio Maior a condus campania din Africa împotriva Cartaginei. A obținut strălucita victorie de la Zama (202 î.Cr.). În 185 î.Cr. a fost acuzat că a primit mită de la Antiochus. De aceea s-a retras la Licurnus, pe coasta Campaniei. A dispus ca pe piatra funerară să fie scris: \"Patrie ingrată, nu vei avea oasele mele\".', 'africanul1.jpg'),
(11, 2, 'Publius Cornelius Scipio Aemilianus Africanus', 'Consul: 147 î.Cr. și 134 î.Cr.', '<p>În al treilea război punic (149-146 î.Cr.) a preluat comanda. A cucerit și a distrus Cartagina. A spijinit scriitorii și filozofii.</p>', 'africanul2.jpg'),
(12, 2, 'Marcus Porcius Cato (Cato Cenzorul)', 'Consul - 195 î.Cr. Cenzor - 184 î. Cr.', 'De origine plebeiană, a luptat în al doilea război punic. Abilităţile oratorice i-au înlesnit cariera politică. A avut vederi conservatoare antigreceşti şi s-a opus familiei proelenice a Scipionilor, asupra căreia a triumfat. Ales cenzor (magistrat însărcinat cu impozitele, taxele şi bunurile publice), a încercat să restabilească mos maiorum (în latină, obiceiul strămoşilor) şi a combătut influenţa grecească, pe seama căreia punea corupţia moravurilor romane.\r\n\r\nA propus legi împotriva luxului şi libertăţii financiare a femeilor şi nu a încetat să ceară distrugerea Cartaginei. Scrierile sale includ lucrări de istorie, medicină, drept, ştiinţa armelor şi agricultură', 'cato1.jpg'),
(13, 2, 'Tiberius Sempronius Gracchus', 'tribun', '<p>Roma era implicată în războaie nesfârșite. Cetățenii trebuiau să servească în legiunile romane și-și lăsau fermele în mâinile soțiilor și a copiilor. Ca urmare fermele falimentau, fiind cumpărate de cei bogați, care-și formau proprietăți uriașe. La sfârșitul războiului statul prelua alte proptietăți din teritoriile cucerite.</p> Acestea erau date tot marilor proprietari. <p>Întorcându-se din război, cetătenii nu mai aveau unde să meargă, rămânând în Roma alăturându-se miilor de săraci. Armata era slăbită și ea, deoarece numai propietarii puteau să formeze legiunile. </p>\r\n<p>În 133 î. Cr. Tiberius Gracchus a propus o lege agrară care să împroprietăreze sărăcii cu 30 de iugăre de pământ. Senatorii s-au opus și l-au ucis pe Gracchus.</p>', 'grahus1.jpg'),
(14, 2, 'Gaius Sempronius Gracchus', 'tribun', '<p>Fratele mai mic a lui Tiberius a încercat să realizeze reformele sociale. A propus în 122 î. CR. o serie de reforme: juridică, care să limiteze abuzurile magistraților și senatorilor; militară, care un început de profesionalizare a acesteia; agrară: împroprietăriri, colonizări, ajutoare cu cereale pentru cei săraci. Ca și fratele său a fost ucis de senatori.</p>', 'grahus2.jpg'),
(15, 2, 'Gaius Marius', 'Consul - 107, 104-100, 86 î. Cr.', '<p>Provine din rândurile plebei. Avansează treptat în cadrul armatei, având ca patron pe puternicul Mettelus Numidicus (cuceritorul Numidiei.</p>\r\n<p>În 107 reformează armata: censul nu a mai un criteriu pentru recrutări; de acum înainte legiunile au fost formate mai ales din săraci; legionarii erau colonizați în teritoriile cucerite, primind funcții; în armată au fost primiți în număr mare și populațiile romanizate; soldații sunt legați de general și nu de stat / Senat. </p>\r\n<p>În 102-102 î. Cr. a înfrânt teutonii și cimbrii care amenințau Roma.</p>\r\n<p>A avut un rol important în declanșarea primului război civil, desfășurat între el și Sulla, în cadrul căruia au murit mii de romani. A avut o contribuție majoră în transformarea Romei din republică în imperiu.</p>', 'marius.jpg'),
(16, 2, 'Lucius Cornelius Sulla Felix', 'Dictator - 81 Consul - 80', '<p>În războiul împotriva lui Jugurtha, regele Numidiei, din 111 î. Cr., a avut principalul rol în victorie, deși formal armata romană era condusă de Marius.</p>\r\n<p>Același scenariu s-a repetat în războiul socilor din 91 - 88 î. Cr.</p>\r\n<p>Între cei doi oameni de stat se va declanșa un război deschis - primul război civil. Senatul a încredințat comanda armatei lui Sulla pentru războiul împotriva lui Mithridate al VI-la al Pontului. Decizia nu a fost însă acceptată de Marius.</p><p>devenit stăpâ al Romei a dat o serie de proscripții, condamnând la moarte peste 9000 de cetățeni romani. Mulți nu-i erau dușmani, dar aveau proprietăți dorite de partizanii lui Sulla.</p>', 'sulla.jpg'),
(17, 2, 'Gaius Iulius Caesar', 'Dictator: 49 - 44 î. Cr. \r\n<p>Consul: 59 - 58 î. Cr. 48 - 47 î. Cr. 46 - 44 î. Cr. 44 </p>', '<p>Lider al taberei popularilor, s-a evidenţiat prin victoriile împotriva rebelilor din Spania. În împrejurările politice de la Roma, a preferat să se alieze cu Licinius Crassus şi cu Pompei (Pompeius Magnus). În aceste condiţii s-a încheiat primul triumvirat din anul 60 î.Hr. </p>\r\n<p>Din 58 î.Hr. Cezar este numit guvernator al Galliei Cisalpine şi al Galliei Transalpine, pentru o perioadă de cinci ani. În această calitate a declanşat campania de cucerire a întregii Gallii. În S-E Galliei i-a înfrânt pe helveţi, apoi a respins atacurile suebilor germanici conduşi de Ariovist, a anexat zona Aquitaniei, i-a cucerit pe veneţi. Sub comanda sa, pentru prima dată armata romană a pătruns pe teritoriul Germaniei dar şi în Britannia. În 52 î.Hr. l-a înfrânt în marea bătălie de la Alesia pe conducătorul galilor, Vercingetorix.</p>\r\n<p>În 45 î.Hr., a pus capăt războiului civil, după înfrângerea ultimelor centre de rezistenţă organizate de foştii partizani ai lui Pompei, în Africa de Nord şi Spania. Practic în acel moment avea puterea unui monarh absolut, păstrând însă aparenţele republicane: concentra în mâna sa întreaga putere la Roma. Acestuia îi fuseseră atribuite toate funcţiile de conducere importante: dictator pe viaţă, tribun pe viaţă, chestor, imperator (comandant suprem al armatei), părinte al patriei, pontifex maximus.</p>', 'caesar.jpg'),
(18, 2, 'Cneus Pompeius Magnus', 'Consul: 70-69 î. Cr. 55-54 î. Cr. 52-51 î. Cr.', '<p>Fiu al lui Gnaeus Pompeius Strabo, reprezentant al unei familii senatoriale, Pompei se afirmă în viața politică după debarcarea lui Sullla în sudul Italiei și reizbucnirea războiului civil dintre populari și optimați. La începutul anului 83 î.Hr. reușește să recruteze 3 legiuni cu care contribuie la victoria optimaților.</p>\r\n<p>Căsătorit cu Aemilia, fiica vitregă a lui Sulla, Pompei este trimis în Sicilia, apoi în Africa de Nord pentru a lichida ultimele rezistențe ale popularilor. Din 76 î.Hr. duce lupte grele în Spania împotriva lui Sertorius. Revenit în Italia, înfrânge în 71 î.Hr. ultimele forțe ale armatei lui Spartacus.\r\nMoneda cu Pompei (denarius); avers: MAG PIVS IMP ITER, cap gol spre dreapta; revers: PRÆF, Neptun spre stânga, între frații Anapias și Amphinomus, cu părinții lor pe umerii lor; în exergă: CLAS ET ORÆ’ / MARIT EX SC\r\n\r\nEste ales consul în 70 î.Hr. împreună cu Crassus. În 67 î.Hr., prin \"Lex Gabinia\", i se conferă puteri extraordinare (\"imperium maius\") pentru 3 ani, cu misiunea de a combate pirateria din Marea Mediterană. Dovedește un talent organizatoric de excepție și rezolvă această misiune în câteva luni. În 66 î.Hr., cu toată împotrivirea Senatului, îi este încredințată comanda supremă în Orient în războiul împotriva lui Mithridates al VI-lea, regele Pontului. Pompei îl învinge pe acesta, apoi pe aliatul său Tigranes II cel Mare, regele Armeniei. În perioada 64 î.Hr.-63 î.Hr. se consacră reorganizării politice a Orientului. La întoarcere la Roma, își serbează triumful, primește cognomenul de \"Magnus\", dar din cauza opoziției Senatului, nu reușește să ratifice măsurile adoptate în Orient.</p>\r\n<p>În 60 î.Hr. se constituie primul triumvirat între Pompei, Cezar și Crassus, înțelegere privată și secretă a celor trei împotriva aristocrației senatoriale. În 57 î.Hr. dobândește puteri excepționale pe timp de 5 ani, în vederea asigurării aprovizionării Romei cu cereale. În 55 î.Hr. este ales din nou consul iar la sfârșitul consulatului obține guvernarea Spaniei pe 5 ani, însă nu părăsește Roma.\r\n\r\nMoartea lui Crassus la Carrhae și gloria lui Cezar în Gallia, duc la destrămarea triumviratului și la apropierea de Senat a lui Pompei. În 52 î.Hr., Senatul acceptă desemnarea lui Pompei în calitate de \"consul sine collega\", cu misiunea de a restaura ordinea. La 7 ianuarie 49 î.Hr., printr-un \"senatus consultum ultimum\", Cezar este demis din funcții, iar Pompei este însărcinat cu apărarea republicii. Trei zile mai târziu, când traversează Rubiconul cu legiunile sale, Cezar declanșează războiul civil.\r\n\r\nPompei se refugiază în Grecia, unde îl învinge pe Caesar, care trecuse și el în Balcani, în Bătălia de la Dyrachium. Dar la 9 august 48 î.Hr. are loc bătălia de la Pharsalos, în Tesalia, în care Cezar îl învinge pe Pompei, deși acesta avea efective de două ori mai mari decât Cezar. Înfrânt, Pompei se refugiază în Egipt, unde este asasinat la 28 septembrie 48 î.Hr. din ordinul regelui Ptolemeu al XIII-lea Theos Philopator.</p>', 'pompei.png'),
(19, 2, 'Marcus Licinius Crassus', 'Consul: 70 - 96 î. Cr. 55 - 54 î. Cr.', '<p>Crassus provine dintr-o familie patriciană bogată ai cărei membri au avut funcții de stat importante în timpul celui de-al II-lea război Punic. Tatăl său Publius Licinius Crassus a fost consul (97 î.Hr.) și cenzor (89 î.Hr.) fiind omorât în timpul conflictului dintre Gaius Marius și Lucius Cornelius Cinna, conflict politic în care Lucius Cornelius Sulla preia puterea politică.\r\n\r\nTânărul Crassus reușește să scape din acest conflict cu viață, și va lupta ca ofițer într-un război civil din Spania de partea lui Sulla care se va reîntoarce la Roma. Crassus devine și mai bogat prin diferite afaceri câștigate prin instruirea sclavilor ca gladiatori.</p>\r\n\r\nDeja în timpul refugiului său în Spania Crassus deținea deja o avere de 300 de talanți.</p>\r\n<p>După ce în anul 73 a fost pretor, Crassus este ales comandant suprem al trupelor militare romane pornite contra revoltei sclavilor conduși de Spartacus revoltă pe care după lupte grele reușește să o înăbușe (71 î,Hr.).\r\n\r\nSclavii prizonieri vor fi răstigniți de-a lungul drumului Via Appia.\r\n\r\nÎmpreună cu rivalul său Gnaeus Pompeius Magnus devine consul cu care împreună va emite legi pentru siguranța statului roman. Până la alegerea lui în primul triumvirat, Crassus nu are prea multă influență din punct de vedere, politic, și funcția de triumvir o dobândește prin plătirea datoriilor lui Caesar. A avut un fiu Publius Licinius Crassus, general în armata lui Caesar.\r\n\r\nCaesar căuta să aplaneze rivalitatea crescândă dintre Crassus și Pompei. Crassus moare fiind înfrânt și trădat într-un război din Siria (53 î.Hr.), unde din 40 000 de soldați ajung numai 10 000 la Roma, ei vor aduce și capul lui Crassus trimis de regele parților Orodes II (57-38 î.Hr.).\r\n\r\nRegele parților il cheamă pe Crassus să negocieze, iar acesta pleacă lăsându-și armată în urma, Orodes al al II-lea profită și îl omoară. După ce îl omoară parții îi taie capul și toarnă aur topit în gât, apoi este trimis romanilor retrași în orașul Carrhae.</p>', 'crassus.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cronologie`
--

CREATE TABLE `cronologie` (
  `id_cronologie` int(11) NOT NULL,
  `perioada` varchar(60) NOT NULL,
  `durata` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `cronologie`
--

INSERT INTO `cronologie` (`id_cronologie`, `perioada`, `durata`) VALUES
(1, 'Monarhia', '753 î.Cr.-509 î.Cr.'),
(2, 'Republica', '510 î.Cr-27 î.Cr.'),
(3, 'Principat', '27 î.Cr.-235 d.Cr.'),
(4, 'Anarhia militară', '235-284'),
(5, 'Dominatul', '284-395'),
(6, 'Perioada târzie', '395 - 476');

-- --------------------------------------------------------

--
-- Table structure for table `dinastii`
--

CREATE TABLE `dinastii` (
  `id_dinastie` int(4) NOT NULL,
  `id_cronologie` int(11) NOT NULL,
  `nume_dinastie` varchar(40) NOT NULL,
  `dinastie_ani` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `dinastii`
--

INSERT INTO `dinastii` (`id_dinastie`, `id_cronologie`, `nume_dinastie`, `dinastie_ani`) VALUES
(1, 3, 'Iulia Claudia', '27 î.Cr.-68 d.Cr.'),
(2, 3, 'Flavia', '69-96'),
(3, 3, 'Antoninilor', '96-192'),
(4, 3, 'Sever', '193-235');

-- --------------------------------------------------------

--
-- Table structure for table `economia`
--

CREATE TABLE `economia` (
  `id_economia` int(11) NOT NULL,
  `id_cronologie` int(11) NOT NULL,
  `ecoCaracteristici` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `economia`
--

INSERT INTO `economia` (`id_economia`, `id_cronologie`, `ecoCaracteristici`) VALUES
(1, 1, '<ul><li>cultivarea grâului (inferior)</li><li>turme de vite reduse</li><li>bresle de meșteșugari <ol><li>lucrători în bronz</li><li>olari</li><li>aurari</li><li>tâmplari</li><li>vopsitori</li><li>tăbăcari</li></ol><li>comerț redus cu Magna Graecia</li></ul>'),
(2, 2, 'În secolul III î.Cr. Roma era mult mai puțin dezvoltată economic decât alte orașe din Italia.<ul><li>grâu superior (frumentum): pâine coaptă</li><li>folosirea banilor</li><li>agricultură de subzistență</li><li>meșteșuguri slab dezvoltate</li></ul>Secolul II î.Cr.<ul><li>dezvoltarea marilor proprietăți (latifundia)</li>mari turme</li><li>folosirea irigațiilor</li><li> importanța viilor și măslinilor</li><li>folosirea muncii sclavilor</li></ul>Secolul I î.Cr.<ul><li>agricultura \"științifică\"</li><li>culturi extinse de:</li><ul><li>legumicultură</li><li>creșterea păsărilor</li><li>apicultura</li><li>cultivarea florilor</li></ul><li>dezvoltarea tranzacțiilor financiare</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `evenimente`
--

CREATE TABLE `evenimente` (
  `id_eveniment` int(8) NOT NULL,
  `id_conducatori` int(11) NOT NULL,
  `data_even` varchar(60) NOT NULL,
  `denumire` varchar(40) NOT NULL,
  `descriere` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `evenimente`
--

INSERT INTO `evenimente` (`id_eveniment`, `id_conducatori`, `data_even`, `denumire`, `descriere`) VALUES
(1, 0, '52 î.Cr.', 'Lupta de la Alesia', 'Cezar a înaintat către fortul Alesia, opidumul tribului mandibilor în septembrie 52 i.Hr. Când armata romana a sosit acolo, Cezar a ordonat construirea mașinăriilor de asediu. Galii i-au atacat pe romani în timp ce începeau lucrările, urmând o luptă aprigă. Romanii erau în inferioritate, astfel, Cezar și-a trimis aliații germanici pe cai. Galii au fost măcelăriți, iar cei care au supraviețuit, au fugit. În retragere,fiind urmăriți pe toată distanta până la fort.\n\nGalii erau blocați în fortăreață. Rămâneau fără hrană. Vercingetorix a trimis o expediție după provizii și a convocat un consiliu. Veștile bune au început sa apară: Aedulii se îndreptau către el nu doar cu provizii,ci și cu 8000 de călăreți și 240.000 de infanteriști. Au urmat mari festivități la sosirea aeduilor. Dar din cauza lucrărilor de asediu ale lui Cezar forțele venite în ajutor nu au putut ajunge. Galii au ieșit din nou din fortăreață și s-au luptat câteva ore, până când Cezar și-a trimis cavaleria germanică. Cezar pregătise și capcane ascunse în iarbă. Bătălia se sfârșise la apusul soarelui. Galii au fost nevoiți să facă același lucru iarăși, dar fără niciun rezultat. Romanii și galii se aflau la limita epuizării. Galii din fortăreață erau disperați și erau înfometați. Vercingetorix a fost nevoit sa scoată femeile și copii din fortăreață implorând forțelor romane să-i cruțe. Dar în afara fortăreții se afla un zid roman deja construit. Legiunile romane le blocaseră drumurile de acces și nu acceptau această condiție. Copii și femeile galilor, când s-au întors înapoi în fortăreață, galii le-au blocat accesul. Femeile și copii erau într-o situație disperată, devenind victime colaterale. Însă, în cele din urma, Vercingetorix le-a permis sa se întoarcă.\nCezar însuși a condus un atac cu soldați odihniți, producând pierderi serioase galilor. Aedulii, când au auzit că Cezar biruise, au plecat spre satele lor. Vercingetorix a convocat ultimul consiliu. Era dispus sa se predea. Le-a spus că a luptat pentru libertatea Galiei, nu pentru sine.'),
(2, 0, '2 septembr', 'Actium', 'Victorie asupra lui Antonius.'),
(3, 10, '106', 'Cucerirea Daciei', 'Dacia a fost cucerită după două războaie: 101-102, 105-106. Dacii reprezentau un pericol pentru Imperiul roman, datorită deselor atacuri peste Dunăre. În al doilea război dacii nu au putu face față masivei invazii romane. Decebal s-a sinucis, iar Dacia transformată în provincie romană.');

-- --------------------------------------------------------

--
-- Table structure for table `institutii`
--

CREATE TABLE `institutii` (
  `id_institutia` int(11) NOT NULL,
  `nume_Institutie` varchar(30) NOT NULL,
  `caracterizare_Inst` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `institutii`
--

INSERT INTO `institutii` (`id_institutia`, `nume_Institutie`, `caracterizare_Inst`) VALUES
(1, 'Monarhia', '<ul><li>caracter electiv</li><li>oficia cultul religios; delegați: flamini, vestale, pontifici, augurii</li><li>încheia tratate</li><li>declara război și încheia pacea</li><li>făcea și propaga legea</li</ul>'),
(2, 'Senatul', 'Provenea din Adunarea Bătrânilor. <ul><li>rol consultativ</li><li>asigura interregnul</li><li>rol important în alegerea noului rege</ul>\r\nÎn perioada Republicii.<br>Instituție aristocratică. Atribuții:<ul><li>consiliu consultativ pentru consuli în problemele de politică externă și militare</li><li>administra Roma</li><li>controla finanțele și tezaurul</li><li> dădea decrete (senatus consultum)</li><li>instanță supremă de judecată</li></ul>'),
(3, 'Comitia curiata', 'Adunare a poporului\r\n<h3>În perioada monarhiei</h3>\r\n<ul><li>lex curiata de imperio: acorda autoritate deplină regelui</li><li>rol consultativ</li><li>sprijinea regele: <ol><li>război</li><li>pedeapsa cu moartea</li></ol>\r\n<h3>În perioada republicii</h3>\r\n<ul><li>acorda imperium: consulilor și pretorilor.</li></ul>\r\n'),
(4, 'Comitia centuriata', 'Adunarea poporului înarmat.<ul><li>alegea:<ol><li>consulii</li><li>pretorii</li><li>cenzorii</li></ol><li>declara război</li><putea da legi</li><li>ratifica rezultatele censului</li></ul>'),
(5, 'Comitia curiata', 'Adunarea triburilor.<br>Preponderența plebeilor.<ul><li>alegeau<ol><li> questorii</li><li> edilii</li><li> tribunii</li></ol><li>dădea legi și plebiscite</li><li>atribuții judiciare în cazurile care implicau plebei</li></ul>'),
(6, 'Consulii', 'Cele mai înalte magistraturi din stat.<br>În fiecare an erau aleși doi consuli.'),
(7, 'Pretorii', 'Magistraturi superioare<ul><li>atribuții judiciare</><li>comandanții armatelor provinciale</li></ul>'),
(8, 'Dictatorul', 'Magistratură temporară.<br>Puteri depline în cazuri excepționale.'),
(9, 'Cenzorul', 'Magistratură superioară.<br><ul><li>împărțea cetățenii în clase cenzitare</li><li>controla moravurile</li></ul>'),
(10, 'Tribunii plebei', '<ul><li>intercessio: drept de veto</li></ul>'),
(11, 'Questorii', 'Asistenți ai consulilor si pretorilor.<ul><li>atribuții financiare</li</ul>'),
(12, 'Edilii', 'Administrarea Romei<ul><li>aprovizionarea</li><li>organizează jocurile</li><li>siguranța cetățenilor</li><li>curățenia</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `principi`
--

CREATE TABLE `principi` (
  `id_principe` int(3) NOT NULL,
  `nume` varchar(40) NOT NULL,
  `ani_domnie` varchar(30) NOT NULL,
  `id_dinastie` int(11) NOT NULL,
  `id_cronologie` int(11) NOT NULL,
  `portret` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `principi`
--

INSERT INTO `principi` (`id_principe`, `nume`, `ani_domnie`, `id_dinastie`, `id_cronologie`, `portret`) VALUES
(1, 'Octavian', '27 î.Cr.-14 d.Cr.', 1, 3, 'Octavian.jpg'),
(2, 'Tiberius', '14-37', 1, 3, 'tiberius.jpg'),
(3, 'Caligula', '37-41', 1, 3, 'caligula.jpg'),
(4, 'Claudius', '41-54', 1, 3, 'claudius.jpg'),
(5, 'Nero', '54-68', 1, 3, 'nero.jpg'),
(6, 'Vespasian', '69-79', 2, 3, 'vespasian.jpg'),
(7, 'Titus', '79-81', 2, 3, 'titus.jpg'),
(8, 'Domitian', '81-96', 2, 3, 'domitian.jpg'),
(9, 'Nerva', '96-98', 3, 3, 'nerva.jpg'),
(10, 'Traian', '98-117', 3, 3, 'traian.jpg'),
(11, 'Hadrian', '117-138', 3, 3, 'hadrian.jpg'),
(12, 'Antoninus Pius', '138-161', 3, 3, 'pius.jpg'),
(13, 'Marcus Aurelius', '161-180', 3, 3, 'aurelius.jpg'),
(14, 'Commodus', '180-192', 3, 3, 'commodus.jpg'),
(15, 'Septimius Severus', '193-211', 4, 3, 'septimius.jpg'),
(16, 'Caracalla', '211-217', 4, 3, 'caracalla.jpg'),
(17, 'Elagabal', '217-222', 4, 3, 'ellagabal.jpg'),
(18, 'Sever Alexander', '222-235', 4, 3, 'alexander.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Regi`
--

CREATE TABLE `Regi` (
  `id_rege` int(11) NOT NULL,
  `id_cronologie` int(11) NOT NULL,
  `nume_rege` varchar(30) NOT NULL,
  `ani_domnie` varchar(30) NOT NULL,
  `caracterizare_rege` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `Regi`
--

INSERT INTO `Regi` (`id_rege`, `id_cronologie`, `nume_rege`, `ani_domnie`, `caracterizare_rege`) VALUES
(1, 1, 'Romulus', '756 - 716 î.Cr.', '<ul><li>a întemeiat Roma</li><li>a pus bazele organizării politice</li><li>rege războinic</li></ul>'),
(2, 1, 'Numa Pompilius', '716 - 674', '<ul><li>o perioada de pace și liniște</li><li>reformează calendarul</li><li> noi ordine religioase: Flamini, Vestalele, Pontifii.</li></ul>'),
(3, 1, 'Tullus Hostilius', '673 - 642', '<ul><li>rege războinic</li><li>distruge Alba Longa</li>'),
(4, 1, 'Ancus Martius', '642 - 617', '<ul><li>a construit un apeduct și primul pod peste Tibru</li><li>a fondat portul Ostia</li></ul>'),
(5, 1, 'Lucius Tarquinus Priscus', '616 - 579', '<ul><li>primul rege etrusc</li><li>construcții de amploare: un zid de apărare a Romei</li><li>sistem de canalizare</li><li>a fondat Jocurile Romane</li></ul>'),
(6, 1, 'Servius Tullius', '578 - 535', '<ul><li>a reorganizat statul pe baze timocratice</li><li>a extins fortificațiile</li><li>a construit templul Dianei, care reprezenta un cult federal în Latium: exprima dorința Romei de a-și asuma rolul politic conducător</li></ul>'),
(7, 1, 'Tarquinus Superbus', '534 - 510', '<ul><li>conducere tiranică și arbitrară</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `societatea`
--

CREATE TABLE `societatea` (
  `id_societatea` int(11) NOT NULL,
  `id_cronologie` int(11) NOT NULL,
  `socCaracterizare` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `societatea`
--

INSERT INTO `societatea` (`id_societatea`, `id_cronologie`, `socCaracterizare`) VALUES
(1, 1, 'Amalgam: latini, samniți, etrusci, alți italici<br>Structura:<ul><li>familie</li><li>ginta</li><li>curie</li><li>trib</li></ul>Reflectare în organizarea politică. <br>Societate deschisă - mobilitate sociala. <br>Clase sociale:<ul><li>patriciat: drepturi politice</li><li>plebea</li><li>sclavi</li></ul>'),
(2, 2, 'Structura sociala se menține<br>Mobilitate sociala mare.<ul><li>romanii: cetățeni cu drepturi depline</li><ol><li>patricienii</li><li>plebei - acces la cele mai înalte magistraturi,consuli, și la Senat</li></ol>Noi categorii sociale:<ul><li>cavalerii: plebeii îmbogățiți</li><li>nobilii:<ul><li>cei care deținuseră magistratura consulatului</li><li>noua elită politică: aristocrație patriciano-plebeiană</li><li>conservatoare</li></ul><li>proletariatul parazitar din Roma</li></ul><li>latinii: cetățeni cu drepturi private, dar nu publice</li><li>italicii: locuitori liberi, cu diferite obligații - militare</li><li>dediticii: populațiile învinse - fără drepturi</li></ul> ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conducatori`
--
ALTER TABLE `conducatori`
  ADD PRIMARY KEY (`id_conducatori`);

--
-- Indexes for table `cronologie`
--
ALTER TABLE `cronologie`
  ADD PRIMARY KEY (`id_cronologie`),
  ADD KEY `perioada` (`perioada`);

--
-- Indexes for table `dinastii`
--
ALTER TABLE `dinastii`
  ADD PRIMARY KEY (`id_dinastie`),
  ADD KEY `nume_diastie` (`nume_dinastie`);

--
-- Indexes for table `economia`
--
ALTER TABLE `economia`
  ADD PRIMARY KEY (`id_economia`);

--
-- Indexes for table `evenimente`
--
ALTER TABLE `evenimente`
  ADD PRIMARY KEY (`id_eveniment`),
  ADD KEY `denumire` (`denumire`);

--
-- Indexes for table `institutii`
--
ALTER TABLE `institutii`
  ADD PRIMARY KEY (`id_institutia`);

--
-- Indexes for table `principi`
--
ALTER TABLE `principi`
  ADD PRIMARY KEY (`id_principe`),
  ADD KEY `nume` (`nume`);

--
-- Indexes for table `Regi`
--
ALTER TABLE `Regi`
  ADD PRIMARY KEY (`id_rege`);

--
-- Indexes for table `societatea`
--
ALTER TABLE `societatea`
  ADD PRIMARY KEY (`id_societatea`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conducatori`
--
ALTER TABLE `conducatori`
  MODIFY `id_conducatori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cronologie`
--
ALTER TABLE `cronologie`
  MODIFY `id_cronologie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dinastii`
--
ALTER TABLE `dinastii`
  MODIFY `id_dinastie` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `economia`
--
ALTER TABLE `economia`
  MODIFY `id_economia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `evenimente`
--
ALTER TABLE `evenimente`
  MODIFY `id_eveniment` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `institutii`
--
ALTER TABLE `institutii`
  MODIFY `id_institutia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `principi`
--
ALTER TABLE `principi`
  MODIFY `id_principe` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Regi`
--
ALTER TABLE `Regi`
  MODIFY `id_rege` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `societatea`
--
ALTER TABLE `societatea`
  MODIFY `id_societatea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

