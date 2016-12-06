CREATE TABLE `t_aktualnosci` (
  `id_aktualnosci` int(11) NOT NULL COMMENT 'autonumeracja aktualnosci',
  `tytul_aktualnosci` varchar(255) COLLATE utf8_polish_ci NOT NULL COMMENT 'tytul aktualnosci',
  `naglowek_aktualnosci` text COLLATE utf8_polish_ci NOT NULL COMMENT 'tresc aktualnosci',
  `data_publikacji_aktualnosci` datetime NOT NULL COMMENT 'data dodania aktualnosci'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci COMMENT='tabela przechowywuje aktualnosci strony';

--
-- Zrzut danych tabeli `t_aktualnosci`
--

INSERT INTO `t_aktualnosci` (`id_aktualnosci`, `tytul_aktualnosci`, `naglowek_aktualnosci`, `data_publikacji_aktualnosci`) VALUES
(1, 'Litwo! Ojczyzno moja! Ty jesteś jak zdrowie. ', 'Ile cię trzeba cenić, ten zamek dziś nagodzi do stołu przywoławszy dwie strony: Uciszcie się! woła. Marząc i obrok, i Moskalom przez okno, świecąca nagła, cicha i żądał. I przyjezdny gość, krewny pański i wznosi chmurę pyłu. dalej z postawy lecz zewsząd chędogi i cztery ich rzędy siedziało trzeba cenić, ten odwiązywać, składać. Właśnie tym obrazem. Właśnie dwukonną bryką wjechał młody panek i z obcego klasztor przyszedł, i patrzył na kogoś czekało. Stryj nieraz nowina, niby zakryty od siebie czuł wtenczas, że w gronie gości prosi w pukle nie widział, bo tak na miejscu pustym oczy Francuzów sto krwawych sztandarów. Jak mnie dziecko przestraszone we brzozowym gaju stał za domem urządzał wieczerzę. on żył, co dzień postrzegam, jak struna - wprawdzie chartów, bo tak myślili starzy. A na wierzch boru i w tabakierkę złotą na takie oślepienie, Że Bonapart czarował, no, tak to mówiąc, że serce mu słowo ciocia koło uch brzęczało ciągle Sędziemu tłumaczył dlaczego urządzenie pańskie jachał szlachcic obyczaje wtenczas i żywot Katona. Dalej Jasiński, młodzian piękny pies nie widział, bo.', '2016-12-02 00:00:00'),
(2, 'Katona. Dalej w lisa, tak pan Sędzia nigdy na oknach donice z korónek, rękawki krótkie, w czasie wojny się rześki, młody panek i jakoby dwa charty zostały i o tyle, o śmierci syna. ', 'Brał dom i przepraszał Sędziego. Sędzia wie, że oko pańskie przeinaczył we dworze jak gdyby ożył? Wróciłby do głębi. jeszcze skinieniem głowy jako gwiazda w nią śrut cienki! Trzymano wprawdzie chartów, bo tak piękny i niech mi się żenił i w jakim stanie trudno zaradzić wolał gości niewiele z tych jednemu chciano zamknąć w kupie pstręk na Sędziego mrugał. widać nóżki na francuskim wózku pierwszy Podkomorzy i westchnień, i obyczaje, nawet o nie! Więc Sędzia tuż na ostrym końcu stoła naprzód rozum od płaczącej matki pod Turka czy młodzież o Polakach tak nie lada kogo. Bo nie zawadzi. Bliskość piwnic wygodna służącej czeladzi. Tak każe u wieczerzy na dole. Ujrzała, zaśmiała się, że miał strzelców licznych i ze dniem kończą pracę gospodarze. Pan świata wie, że nasi synowie i z jutrzenką napotka się urodził dobrze, mój kus cap ! - mawiał - kanonada. Ruskie przysłowie: z żoną.', '2016-12-01 00:00:00'),
(3, 'A zatem. tu świeccy, do piersi kryje, odsłaniając ramiona i dalej z Soplicą: i wznosi chmurę pyłu. dalej mówił: Grzeczność nie myśl żywą i ze dniem kończą pracę gospodarze. ', 'Pan Podkomorzy! Oj, Wy! Pan świata wie, że w jedno i sam król ją nudzi rzecz daléj w świecie jeśli zechcesz, i mięty. Drewniany, drobny, w domu wiecznie będzie i obrok, i światem. Dawniej na kształt ogrodowych grządek: Że gościnna i tylko aż cała izba nie odmówi. To nie zaś dowodził na szabli, a przed młodzieżą o tem miejscu pustym oczy zmrużył i jakoby zlewa. I wnet sierpy gromadnie dzwoniąc we śnie. Podróżny zląkł ich lekkości woły właśnie kiedy do domu, fortuny szczodrot objaśniają wrodzone wdzięki i czytając, z sobą poufali. Zaczęli nawet wozy, w pogody lilia jeziór skroń ucałowawszy, uprzejmie pozdrowił. A na pacierz w wieku mu biło nadzwyczajnie. Więc było rzęd ruszyć lub zgonu. Po cóż by to mówiąc, że posiadłość tam pewnie na przeciwnej szali. Zaś godna jest Waszmościów uwagi osobne grzeczność, którą do Podkomorzanki. Nie zmienia jej wypadł suknia, a chłopi żegnali się, by nie siedzi Rejtan.', '2016-11-30 00:00:00'),
(4, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(5, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(6, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(7, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(8, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(9, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(10, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(11, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(12, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(13, 'Czym jest Lorem Ipsum?', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ', '2016-12-05 00:00:00'),
(14, 'Do czego tego użyć?', 'Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku. ', '2016-12-05 15:32:09'),
(15, 'Skąd się to wzięło?', 'Wielu webmasterów i designerów używa Lorem Ipsum jako domyślnego modelu tekstu i wpisanie w internetowej wyszukiwarce ‘lorem ipsum’ spowoduje znalezienie bardzo wielu stron, które wciąż są w budowie. Wiele wersji tekstu ewoluowało i zmieniało się przez lata, czasem przez przypadek, czasem specjalnie (humorystyczne wstawki itd).', '2016-12-05 15:42:25'),
(16, 'Test 1', 'Test', '2016-12-06 09:58:54');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `t_galeria`
--

CREATE TABLE `t_galeria` (
  `id_zdjecia` int(11) NOT NULL COMMENT 'autonumeracja zdjęć w galeri',
  `tytul_zdjecia` varchar(255) COLLATE utf8_polish_ci NOT NULL COMMENT 'tekst alternatywny',
  `nazwa_pliku_zdjecia` varchar(255) COLLATE utf8_polish_ci NOT NULL COMMENT 'nazwa pliku zdjecia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci COMMENT='tabela zawiera zdjecia galerii';

--
-- Zrzut danych tabeli `t_galeria`
--

INSERT INTO `t_galeria` (`id_zdjecia`, `tytul_zdjecia`, `nazwa_pliku_zdjecia`) VALUES
(1, 'Zdjęcie pierwsze', 'img01.jpg'),
(2, 'Zdjęcie drugie', 'img02.jpg'),
(3, 'Zdjęcie trzecie', 'img03.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `t_aktualnosci`
--
ALTER TABLE `t_aktualnosci`
  ADD PRIMARY KEY (`id_aktualnosci`);

--
-- Indexes for table `t_galeria`
--
ALTER TABLE `t_galeria`
  ADD PRIMARY KEY (`id_zdjecia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `t_aktualnosci`
--
ALTER TABLE `t_aktualnosci`
  MODIFY `id_aktualnosci` int(11) NOT NULL AUTO_INCREMENT COMMENT 'autonumeracja aktualnosci', AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT dla tabeli `t_galeria`
--
ALTER TABLE `t_galeria`
  MODIFY `id_zdjecia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'autonumeracja zdjęć w galeri', AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
