# Export from BRITE topology
# Generator Model Used: Model (3 - ASWaxman):  1000 1000 100 1  2  0.15000000596046448 0.20000000298023224 1 1 10.0 1024.0 




proc create_topology{} {
	global ns

	#nodes:
	set num_node 1000
	for {set i 0} {$i < $num_node} {incr i} {
	   set n($i) [$ns node]
	}

	 #links:
	set qtype DropTail

	$ns duplex-link $n(0) $n(173) 10.0Mb 1.3065539975447873ms $qtype
	$ns duplex-link $n(0) $n(645) 10.0Mb 1.9146579064373928ms $qtype
	$ns duplex-link $n(1) $n(309) 10.0Mb 1.5080233164866617ms $qtype
	$ns duplex-link $n(1) $n(204) 10.0Mb 0.5956524572889613ms $qtype
	$ns duplex-link $n(2) $n(0) 10.0Mb 2.47505457729992ms $qtype
	$ns duplex-link $n(2) $n(1) 10.0Mb 3.0004048644355827ms $qtype
	$ns duplex-link $n(3) $n(2) 10.0Mb 0.8632674872503844ms $qtype
	$ns duplex-link $n(3) $n(0) 10.0Mb 1.8296408712220764ms $qtype
	$ns duplex-link $n(4) $n(0) 10.0Mb 0.7367463629670643ms $qtype
	$ns duplex-link $n(4) $n(3) 10.0Mb 1.342677317832336ms $qtype
	$ns duplex-link $n(5) $n(1) 10.0Mb 0.8801605544031906ms $qtype
	$ns duplex-link $n(5) $n(2) 10.0Mb 2.362926707662416ms $qtype
	$ns duplex-link $n(6) $n(3) 10.0Mb 0.8810197532425506ms $qtype
	$ns duplex-link $n(6) $n(2) 10.0Mb 0.996039367936935ms $qtype
	$ns duplex-link $n(7) $n(6) 10.0Mb 0.7232189605162779ms $qtype
	$ns duplex-link $n(7) $n(5) 10.0Mb 0.8011165201344231ms $qtype
	$ns duplex-link $n(8) $n(6) 10.0Mb 0.39670294166822584ms $qtype
	$ns duplex-link $n(8) $n(2) 10.0Mb 0.6411115793734873ms $qtype
	$ns duplex-link $n(9) $n(8) 10.0Mb 1.2994836911527654ms $qtype
	$ns duplex-link $n(9) $n(7) 10.0Mb 0.9115153881627445ms $qtype
	$ns duplex-link $n(10) $n(3) 10.0Mb 1.0592485275066608ms $qtype
	$ns duplex-link $n(10) $n(1) 10.0Mb 2.4602132849456924ms $qtype
	$ns duplex-link $n(11) $n(3) 10.0Mb 0.6119605835889489ms $qtype
	$ns duplex-link $n(11) $n(10) 10.0Mb 1.0553759228883681ms $qtype
	$ns duplex-link $n(12) $n(1) 10.0Mb 0.22549524953233574ms $qtype
	$ns duplex-link $n(12) $n(7) 10.0Mb 1.1868227382218954ms $qtype
	$ns duplex-link $n(13) $n(0) 10.0Mb 1.613871204035438ms $qtype
	$ns duplex-link $n(13) $n(8) 10.0Mb 1.2532647172996176ms $qtype
	$ns duplex-link $n(14) $n(10) 10.0Mb 1.347933292872417ms $qtype
	$ns duplex-link $n(14) $n(12) 10.0Mb 1.1802419714515184ms $qtype
	$ns duplex-link $n(15) $n(1) 10.0Mb 1.0981910802577293ms $qtype
	$ns duplex-link $n(15) $n(0) 10.0Mb 1.0289033104878105ms $qtype
	$ns duplex-link $n(16) $n(9) 10.0Mb 0.5275377067282785ms $qtype
	$ns duplex-link $n(16) $n(4) 10.0Mb 0.21730363176651135ms $qtype
	$ns duplex-link $n(17) $n(9) 10.0Mb 1.8399257614228945ms $qtype
	$ns duplex-link $n(17) $n(14) 10.0Mb 1.4368058024666672ms $qtype
	$ns duplex-link $n(18) $n(10) 10.0Mb 0.9557062472404455ms $qtype
	$ns duplex-link $n(18) $n(16) 10.0Mb 0.7608844877288401ms $qtype
	$ns duplex-link $n(19) $n(10) 10.0Mb 0.15617070541140332ms $qtype
	$ns duplex-link $n(19) $n(4) 10.0Mb 0.2949166914260896ms $qtype
	$ns duplex-link $n(20) $n(2) 10.0Mb 1.9537290708533623ms $qtype
	$ns duplex-link $n(20) $n(6) 10.0Mb 1.6254979137520325ms $qtype
	$ns duplex-link $n(21) $n(4) 10.0Mb 1.4133870797270036ms $qtype
	$ns duplex-link $n(21) $n(9) 10.0Mb 1.2921508428254884ms $qtype
	$ns duplex-link $n(22) $n(10) 10.0Mb 2.246560991106633ms $qtype
	$ns duplex-link $n(22) $n(8) 10.0Mb 1.716961035380099ms $qtype
	$ns duplex-link $n(23) $n(9) 10.0Mb 1.9693873900003178ms $qtype
	$ns duplex-link $n(23) $n(14) 10.0Mb 1.8545833725599257ms $qtype
	$ns duplex-link $n(24) $n(9) 10.0Mb 1.884223827298309ms $qtype
	$ns duplex-link $n(24) $n(23) 10.0Mb 2.115695848297336ms $qtype
	$ns duplex-link $n(25) $n(1) 10.0Mb 0.5022217052326539ms $qtype
	$ns duplex-link $n(25) $n(23) 10.0Mb 2.2497655666730947ms $qtype
	$ns duplex-link $n(26) $n(0) 10.0Mb 1.1962121904527458ms $qtype
	$ns duplex-link $n(26) $n(15) 10.0Mb 1.7730335836842495ms $qtype
	$ns duplex-link $n(27) $n(1) 10.0Mb 1.2397101554096193ms $qtype
	$ns duplex-link $n(27) $n(15) 10.0Mb 1.2091410892259242ms $qtype
	$ns duplex-link $n(28) $n(16) 10.0Mb 0.28499728786764644ms $qtype
	$ns duplex-link $n(28) $n(6) 10.0Mb 1.009465479269453ms $qtype
	$ns duplex-link $n(29) $n(8) 10.0Mb 0.6332448817019559ms $qtype
	$ns duplex-link $n(29) $n(19) 10.0Mb 1.8401434497310196ms $qtype
	$ns duplex-link $n(30) $n(27) 10.0Mb 1.123833821402499ms $qtype
	$ns duplex-link $n(30) $n(26) 10.0Mb 2.3968245681344054ms $qtype
	$ns duplex-link $n(31) $n(17) 10.0Mb 1.1133747919947428ms $qtype
	$ns duplex-link $n(31) $n(22) 10.0Mb 1.7806762414151769ms $qtype
	$ns duplex-link $n(32) $n(14) 10.0Mb 1.8345934263646848ms $qtype
	$ns duplex-link $n(32) $n(8) 10.0Mb 0.8281664974825844ms $qtype
	$ns duplex-link $n(33) $n(10) 10.0Mb 0.9057724026109959ms $qtype
	$ns duplex-link $n(33) $n(2) 10.0Mb 1.0879764529311475ms $qtype
	$ns duplex-link $n(34) $n(33) 10.0Mb 0.8831325966644784ms $qtype
	$ns duplex-link $n(34) $n(9) 10.0Mb 1.3483459541563994ms $qtype
	$ns duplex-link $n(35) $n(18) 10.0Mb 1.1870992694352014ms $qtype
	$ns duplex-link $n(35) $n(19) 10.0Mb 0.47150674194551395ms $qtype
	$ns duplex-link $n(36) $n(7) 10.0Mb 0.6464003987853157ms $qtype
	$ns duplex-link $n(36) $n(5) 10.0Mb 0.45406393314899557ms $qtype
	$ns duplex-link $n(37) $n(18) 10.0Mb 0.4525789973241252ms $qtype
	$ns duplex-link $n(37) $n(26) 10.0Mb 1.218513794464696ms $qtype
	$ns duplex-link $n(38) $n(24) 10.0Mb 0.5965577259819453ms $qtype
	$ns duplex-link $n(38) $n(17) 10.0Mb 0.23230051166237345ms $qtype
	$ns duplex-link $n(39) $n(11) 10.0Mb 0.22507544746622463ms $qtype
	$ns duplex-link $n(39) $n(13) 10.0Mb 0.41282515558736577ms $qtype
	$ns duplex-link $n(40) $n(13) 10.0Mb 0.8086435790524226ms $qtype
	$ns duplex-link $n(40) $n(39) 10.0Mb 0.4644213747944789ms $qtype
	$ns duplex-link $n(41) $n(0) 10.0Mb 0.8802553601289458ms $qtype
	$ns duplex-link $n(41) $n(15) 10.0Mb 0.35203261673210345ms $qtype
	$ns duplex-link $n(42) $n(38) 10.0Mb 0.6246917273021034ms $qtype
	$ns duplex-link $n(42) $n(16) 10.0Mb 1.9938345615354882ms $qtype
	$ns duplex-link $n(43) $n(41) 10.0Mb 0.6553239978323815ms $qtype
	$ns duplex-link $n(43) $n(22) 10.0Mb 0.41298683646389894ms $qtype
	$ns duplex-link $n(44) $n(17) 10.0Mb 0.944981842146987ms $qtype
	$ns duplex-link $n(44) $n(20) 10.0Mb 0.5238124700909881ms $qtype
	$ns duplex-link $n(45) $n(3) 10.0Mb 0.47202560706463487ms $qtype
	$ns duplex-link $n(45) $n(38) 10.0Mb 1.9321079360545397ms $qtype
	$ns duplex-link $n(46) $n(4) 10.0Mb 0.9817896905958886ms $qtype
	$ns duplex-link $n(46) $n(16) 10.0Mb 1.1975833675586491ms $qtype
	$ns duplex-link $n(47) $n(2) 10.0Mb 1.5436487165299069ms $qtype
	$ns duplex-link $n(47) $n(46) 10.0Mb 1.5769081638678617ms $qtype
	$ns duplex-link $n(48) $n(0) 10.0Mb 1.8706790738382888ms $qtype
	$ns duplex-link $n(48) $n(29) 10.0Mb 1.1471356043616003ms $qtype
	$ns duplex-link $n(49) $n(24) 10.0Mb 0.8606212229045788ms $qtype
	$ns duplex-link $n(49) $n(15) 10.0Mb 0.253530656407105ms $qtype
	$ns duplex-link $n(50) $n(46) 10.0Mb 0.07406324848630622ms $qtype
	$ns duplex-link $n(50) $n(22) 10.0Mb 2.6742459899542363ms $qtype
	$ns duplex-link $n(51) $n(49) 10.0Mb 1.3798631846751164ms $qtype
	$ns duplex-link $n(51) $n(0) 10.0Mb 1.3776560574450871ms $qtype
	$ns duplex-link $n(52) $n(30) 10.0Mb 0.474376932235163ms $qtype
	$ns duplex-link $n(52) $n(43) 10.0Mb 0.7217096859128194ms $qtype
	$ns duplex-link $n(53) $n(26) 10.0Mb 0.8076385137305385ms $qtype
	$ns duplex-link $n(53) $n(34) 10.0Mb 1.5324792743503888ms $qtype
	$ns duplex-link $n(54) $n(41) 10.0Mb 1.7261547123905863ms $qtype
	$ns duplex-link $n(54) $n(50) 10.0Mb 0.6164802345949417ms $qtype
	$ns duplex-link $n(55) $n(27) 10.0Mb 0.6136944821925558ms $qtype
	$ns duplex-link $n(55) $n(0) 10.0Mb 0.7382625752114657ms $qtype
	$ns duplex-link $n(56) $n(5) 10.0Mb 2.0261513465973446ms $qtype
	$ns duplex-link $n(56) $n(6) 10.0Mb 0.9165731966533194ms $qtype
	$ns duplex-link $n(57) $n(8) 10.0Mb 0.2888942379220844ms $qtype
	$ns duplex-link $n(57) $n(28) 10.0Mb 1.213485823231867ms $qtype
	$ns duplex-link $n(58) $n(33) 10.0Mb 1.2626403418299397ms $qtype
	$ns duplex-link $n(58) $n(29) 10.0Mb 0.9251519094825703ms $qtype
	$ns duplex-link $n(59) $n(40) 10.0Mb 0.413632927992157ms $qtype
	$ns duplex-link $n(59) $n(45) 10.0Mb 0.6816470225915985ms $qtype
	$ns duplex-link $n(60) $n(17) 10.0Mb 0.44966864988191474ms $qtype
	$ns duplex-link $n(60) $n(48) 10.0Mb 0.0865340099454593ms $qtype
	$ns duplex-link $n(61) $n(28) 10.0Mb 0.9844719182516407ms $qtype
	$ns duplex-link $n(61) $n(3) 10.0Mb 1.508654020862067ms $qtype
	$ns duplex-link $n(62) $n(54) 10.0Mb 0.8835482625914328ms $qtype
	$ns duplex-link $n(62) $n(38) 10.0Mb 3.022098065932097ms $qtype
	$ns duplex-link $n(63) $n(41) 10.0Mb 1.7900927801190698ms $qtype
	$ns duplex-link $n(63) $n(53) 10.0Mb 0.3210716862218899ms $qtype
	$ns duplex-link $n(64) $n(48) 10.0Mb 1.136181201012395ms $qtype
	$ns duplex-link $n(64) $n(42) 10.0Mb 1.5949945436155057ms $qtype
	$ns duplex-link $n(65) $n(2) 10.0Mb 0.8282336702635175ms $qtype
	$ns duplex-link $n(65) $n(6) 10.0Mb 0.8953509026555296ms $qtype
	$ns duplex-link $n(66) $n(36) 10.0Mb 0.8693809194347568ms $qtype
	$ns duplex-link $n(66) $n(52) 10.0Mb 0.7667694673885317ms $qtype
	$ns duplex-link $n(67) $n(12) 10.0Mb 0.9107277223655651ms $qtype
	$ns duplex-link $n(67) $n(56) 10.0Mb 3.0878325749373454ms $qtype
	$ns duplex-link $n(68) $n(59) 10.0Mb 0.757219884436556ms $qtype
	$ns duplex-link $n(68) $n(57) 10.0Mb 0.4699585472428853ms $qtype
	$ns duplex-link $n(69) $n(8) 10.0Mb 0.3352277668413156ms $qtype
	$ns duplex-link $n(69) $n(7) 10.0Mb 1.4372742329039745ms $qtype
	$ns duplex-link $n(70) $n(5) 10.0Mb 0.7956604985126432ms $qtype
	$ns duplex-link $n(70) $n(42) 10.0Mb 1.4828415427054775ms $qtype
	$ns duplex-link $n(71) $n(55) 10.0Mb 1.7561476452365787ms $qtype
	$ns duplex-link $n(71) $n(48) 10.0Mb 0.6307096384552004ms $qtype
	$ns duplex-link $n(72) $n(57) 10.0Mb 2.600655737161366ms $qtype
	$ns duplex-link $n(72) $n(14) 10.0Mb 1.3712568013428168ms $qtype
	$ns duplex-link $n(73) $n(42) 10.0Mb 0.7911870332201898ms $qtype
	$ns duplex-link $n(73) $n(3) 10.0Mb 2.0137024350148187ms $qtype
	$ns duplex-link $n(74) $n(57) 10.0Mb 1.5667608879998418ms $qtype
	$ns duplex-link $n(74) $n(33) 10.0Mb 1.0288600538111543ms $qtype
	$ns duplex-link $n(75) $n(40) 10.0Mb 1.2809034985730445ms $qtype
	$ns duplex-link $n(75) $n(23) 10.0Mb 0.5528416083268051ms $qtype
	$ns duplex-link $n(76) $n(9) 10.0Mb 1.1524917053560808ms $qtype
	$ns duplex-link $n(76) $n(14) 10.0Mb 0.7153064062182144ms $qtype
	$ns duplex-link $n(77) $n(43) 10.0Mb 0.5967814980729569ms $qtype
	$ns duplex-link $n(77) $n(5) 10.0Mb 1.1428404386871074ms $qtype
	$ns duplex-link $n(78) $n(76) 10.0Mb 0.8808681908152387ms $qtype
	$ns duplex-link $n(78) $n(32) 10.0Mb 0.9112223827532845ms $qtype
	$ns duplex-link $n(79) $n(68) 10.0Mb 0.5235362593061234ms $qtype
	$ns duplex-link $n(79) $n(6) 10.0Mb 1.1050037547509968ms $qtype
	$ns duplex-link $n(80) $n(32) 10.0Mb 0.9483139816565699ms $qtype
	$ns duplex-link $n(80) $n(23) 10.0Mb 1.065636792584079ms $qtype
	$ns duplex-link $n(81) $n(0) 10.0Mb 1.5771797924828583ms $qtype
	$ns duplex-link $n(81) $n(33) 10.0Mb 0.5172932809160536ms $qtype
	$ns duplex-link $n(82) $n(1) 10.0Mb 2.28158816447063ms $qtype
	$ns duplex-link $n(82) $n(33) 10.0Mb 0.299781161895558ms $qtype
	$ns duplex-link $n(83) $n(4) 10.0Mb 1.2045728751715121ms $qtype
	$ns duplex-link $n(83) $n(55) 10.0Mb 0.8844419118336353ms $qtype
	$ns duplex-link $n(84) $n(2) 10.0Mb 1.839780621574407ms $qtype
	$ns duplex-link $n(84) $n(61) 10.0Mb 0.8401578396708654ms $qtype
	$ns duplex-link $n(85) $n(48) 10.0Mb 1.8174591057044607ms $qtype
	$ns duplex-link $n(85) $n(61) 10.0Mb 1.0706576111200259ms $qtype
	$ns duplex-link $n(86) $n(0) 10.0Mb 0.6233276823420595ms $qtype
	$ns duplex-link $n(86) $n(27) 10.0Mb 0.29704065284915454ms $qtype
	$ns duplex-link $n(87) $n(68) 10.0Mb 0.7444759045274661ms $qtype
	$ns duplex-link $n(87) $n(24) 10.0Mb 2.2902035639298ms $qtype
	$ns duplex-link $n(88) $n(58) 10.0Mb 0.9007033559226781ms $qtype
	$ns duplex-link $n(88) $n(43) 10.0Mb 1.1216684792679117ms $qtype
	$ns duplex-link $n(89) $n(88) 10.0Mb 0.8326083217361011ms $qtype
	$ns duplex-link $n(89) $n(19) 10.0Mb 2.2461746487471923ms $qtype
	$ns duplex-link $n(90) $n(37) 10.0Mb 0.22298953115569395ms $qtype
	$ns duplex-link $n(90) $n(53) 10.0Mb 0.5966416503511924ms $qtype
	$ns duplex-link $n(91) $n(6) 10.0Mb 1.1414571135786695ms $qtype
	$ns duplex-link $n(91) $n(7) 10.0Mb 1.8646501441723464ms $qtype
	$ns duplex-link $n(92) $n(48) 10.0Mb 1.55091163229138ms $qtype
	$ns duplex-link $n(92) $n(16) 10.0Mb 0.7134373796222682ms $qtype
	$ns duplex-link $n(93) $n(0) 10.0Mb 1.3267718921059604ms $qtype
	$ns duplex-link $n(93) $n(24) 10.0Mb 0.6758522231314268ms $qtype
	$ns duplex-link $n(94) $n(89) 10.0Mb 1.9156978326144998ms $qtype
	$ns duplex-link $n(94) $n(6) 10.0Mb 0.36192857181934734ms $qtype
	$ns duplex-link $n(95) $n(55) 10.0Mb 0.7197027029229784ms $qtype
	$ns duplex-link $n(95) $n(37) 10.0Mb 1.7439055015141605ms $qtype
	$ns duplex-link $n(96) $n(66) 10.0Mb 0.31468373804308997ms $qtype
	$ns duplex-link $n(96) $n(83) 10.0Mb 1.1085675382723517ms $qtype
	$ns duplex-link $n(97) $n(17) 10.0Mb 2.676589468132541ms $qtype
	$ns duplex-link $n(97) $n(74) 10.0Mb 1.561767611835724ms $qtype
	$ns duplex-link $n(98) $n(8) 10.0Mb 1.9932652740312975ms $qtype
	$ns duplex-link $n(98) $n(93) 10.0Mb 0.4407592310853645ms $qtype
	$ns duplex-link $n(99) $n(83) 10.0Mb 1.0243894022127762ms $qtype
	$ns duplex-link $n(99) $n(71) 10.0Mb 1.0907596916544606ms $qtype
	$ns duplex-link $n(100) $n(38) 10.0Mb 1.150762288100325ms $qtype
	$ns duplex-link $n(100) $n(62) 10.0Mb 2.3921964846759747ms $qtype
	$ns duplex-link $n(101) $n(62) 10.0Mb 2.9129753475583744ms $qtype
	$ns duplex-link $n(101) $n(27) 10.0Mb 2.1234230243059917ms $qtype
	$ns duplex-link $n(102) $n(94) 10.0Mb 0.923942438145677ms $qtype
	$ns duplex-link $n(102) $n(56) 10.0Mb 1.397191655910553ms $qtype
	$ns duplex-link $n(103) $n(40) 10.0Mb 0.45055854528238914ms $qtype
	$ns duplex-link $n(103) $n(32) 10.0Mb 1.587821153345998ms $qtype
	$ns duplex-link $n(104) $n(3) 10.0Mb 0.717356711075319ms $qtype
	$ns duplex-link $n(104) $n(50) 10.0Mb 1.589519539919178ms $qtype
	$ns duplex-link $n(105) $n(55) 10.0Mb 1.678185461259046ms $qtype
	$ns duplex-link $n(105) $n(64) 10.0Mb 1.4977622186160338ms $qtype
	$ns duplex-link $n(106) $n(41) 10.0Mb 0.7600139144118846ms $qtype
	$ns duplex-link $n(106) $n(84) 10.0Mb 0.3764991595491695ms $qtype
	$ns duplex-link $n(107) $n(74) 10.0Mb 2.28539121806912ms $qtype
	$ns duplex-link $n(107) $n(81) 10.0Mb 1.0547431718409987ms $qtype
	$ns duplex-link $n(108) $n(90) 10.0Mb 0.7083585220624513ms $qtype
	$ns duplex-link $n(108) $n(46) 10.0Mb 0.4306207825243646ms $qtype
	$ns duplex-link $n(109) $n(84) 10.0Mb 2.6331246279451714ms $qtype
	$ns duplex-link $n(109) $n(68) 10.0Mb 1.4857800029656547ms $qtype
	$ns duplex-link $n(110) $n(49) 10.0Mb 0.582019165977826ms $qtype
	$ns duplex-link $n(110) $n(96) 10.0Mb 0.6826664456219144ms $qtype
	$ns duplex-link $n(111) $n(6) 10.0Mb 1.4851096166991462ms $qtype
	$ns duplex-link $n(111) $n(29) 10.0Mb 1.1267803035473347ms $qtype
	$ns duplex-link $n(112) $n(10) 10.0Mb 0.5994973683060496ms $qtype
	$ns duplex-link $n(112) $n(90) 10.0Mb 1.1143487313487823ms $qtype
	$ns duplex-link $n(113) $n(105) 10.0Mb 2.259832123693019ms $qtype
	$ns duplex-link $n(113) $n(90) 10.0Mb 1.1998528164017521ms $qtype
	$ns duplex-link $n(114) $n(82) 10.0Mb 0.9708262509233562ms $qtype
	$ns duplex-link $n(114) $n(63) 10.0Mb 2.2435601383923736ms $qtype
	$ns duplex-link $n(115) $n(66) 10.0Mb 0.42183660754450314ms $qtype
	$ns duplex-link $n(115) $n(74) 10.0Mb 1.3830043668980128ms $qtype
	$ns duplex-link $n(116) $n(89) 10.0Mb 0.9988448589556631ms $qtype
	$ns duplex-link $n(116) $n(1) 10.0Mb 0.501123854602135ms $qtype
	$ns duplex-link $n(117) $n(1) 10.0Mb 0.5856781417986932ms $qtype
	$ns duplex-link $n(117) $n(110) 10.0Mb 0.8041385658434007ms $qtype
	$ns duplex-link $n(118) $n(80) 10.0Mb 0.5441492744798884ms $qtype
	$ns duplex-link $n(118) $n(10) 10.0Mb 2.9342209791086318ms $qtype
	$ns duplex-link $n(119) $n(47) 10.0Mb 1.2089432303174337ms $qtype
	$ns duplex-link $n(119) $n(55) 10.0Mb 0.4878025635312168ms $qtype
	$ns duplex-link $n(120) $n(61) 10.0Mb 0.6798818568596423ms $qtype
	$ns duplex-link $n(120) $n(65) 10.0Mb 1.2196318542650821ms $qtype
	$ns duplex-link $n(121) $n(45) 10.0Mb 0.26635046005963403ms $qtype
	$ns duplex-link $n(121) $n(99) 10.0Mb 2.36051458144413ms $qtype
	$ns duplex-link $n(122) $n(87) 10.0Mb 0.8214756594059982ms $qtype
	$ns duplex-link $n(122) $n(45) 10.0Mb 0.8767216843006455ms $qtype
	$ns duplex-link $n(123) $n(17) 10.0Mb 0.24480059644340713ms $qtype
	$ns duplex-link $n(123) $n(74) 10.0Mb 1.896994581908819ms $qtype
	$ns duplex-link $n(124) $n(41) 10.0Mb 1.5279201859425056ms $qtype
	$ns duplex-link $n(124) $n(82) 10.0Mb 1.6061171800204836ms $qtype
	$ns duplex-link $n(125) $n(118) 10.0Mb 1.1670215512630568ms $qtype
	$ns duplex-link $n(125) $n(75) 10.0Mb 1.287769108204229ms $qtype
	$ns duplex-link $n(126) $n(121) 10.0Mb 0.49999021449837094ms $qtype
	$ns duplex-link $n(126) $n(8) 10.0Mb 0.3469708000178135ms $qtype
	$ns duplex-link $n(127) $n(119) 10.0Mb 1.4513105073044508ms $qtype
	$ns duplex-link $n(127) $n(83) 10.0Mb 1.6015280315109572ms $qtype
	$ns duplex-link $n(128) $n(57) 10.0Mb 1.4015131213996452ms $qtype
	$ns duplex-link $n(128) $n(61) 10.0Mb 1.0525889731117801ms $qtype
	$ns duplex-link $n(129) $n(28) 10.0Mb 0.8567468949337208ms $qtype
	$ns duplex-link $n(129) $n(8) 10.0Mb 1.823839284059442ms $qtype
	$ns duplex-link $n(130) $n(60) 10.0Mb 1.3439032048430255ms $qtype
	$ns duplex-link $n(130) $n(39) 10.0Mb 1.3162052033309564ms $qtype
	$ns duplex-link $n(131) $n(26) 10.0Mb 0.16348044025634356ms $qtype
	$ns duplex-link $n(131) $n(35) 10.0Mb 0.21630287759772096ms $qtype
	$ns duplex-link $n(132) $n(50) 10.0Mb 0.4306207825243646ms $qtype
	$ns duplex-link $n(132) $n(62) 10.0Mb 0.17335708238779352ms $qtype
	$ns duplex-link $n(133) $n(37) 10.0Mb 0.911289538147311ms $qtype
	$ns duplex-link $n(133) $n(97) 10.0Mb 1.442343644664867ms $qtype
	$ns duplex-link $n(134) $n(66) 10.0Mb 1.0003642271268924ms $qtype
	$ns duplex-link $n(134) $n(55) 10.0Mb 0.9686979290645459ms $qtype
	$ns duplex-link $n(135) $n(33) 10.0Mb 1.917796299347029ms $qtype
	$ns duplex-link $n(135) $n(118) 10.0Mb 0.582544648156992ms $qtype
	$ns duplex-link $n(136) $n(3) 10.0Mb 1.8772754943113672ms $qtype
	$ns duplex-link $n(136) $n(124) 10.0Mb 0.32953701684459236ms $qtype
	$ns duplex-link $n(137) $n(14) 10.0Mb 1.1490302678838462ms $qtype
	$ns duplex-link $n(137) $n(94) 10.0Mb 0.14183339879397033ms $qtype
	$ns duplex-link $n(138) $n(101) 10.0Mb 0.3443635331654539ms $qtype
	$ns duplex-link $n(138) $n(49) 10.0Mb 1.093484971427601ms $qtype
	$ns duplex-link $n(139) $n(105) 10.0Mb 0.91608142557192ms $qtype
	$ns duplex-link $n(139) $n(61) 10.0Mb 0.1469197436951215ms $qtype
	$ns duplex-link $n(140) $n(137) 10.0Mb 1.0340809750067401ms $qtype
	$ns duplex-link $n(140) $n(20) 10.0Mb 2.661975236358813ms $qtype
	$ns duplex-link $n(141) $n(61) 10.0Mb 1.53929258877832ms $qtype
	$ns duplex-link $n(141) $n(27) 10.0Mb 0.40614082632745624ms $qtype
	$ns duplex-link $n(142) $n(97) 10.0Mb 1.5981480147879046ms $qtype
	$ns duplex-link $n(142) $n(124) 10.0Mb 0.32792930323101993ms $qtype
	$ns duplex-link $n(143) $n(77) 10.0Mb 1.7586136857782717ms $qtype
	$ns duplex-link $n(143) $n(103) 10.0Mb 0.8006441636545983ms $qtype
	$ns duplex-link $n(144) $n(142) 10.0Mb 0.6006469684227048ms $qtype
	$ns duplex-link $n(144) $n(103) 10.0Mb 2.124237670748528ms $qtype
	$ns duplex-link $n(145) $n(66) 10.0Mb 1.287963496598541ms $qtype
	$ns duplex-link $n(145) $n(86) 10.0Mb 2.13099426542531ms $qtype
	$ns duplex-link $n(146) $n(72) 10.0Mb 3.026531279610606ms $qtype
	$ns duplex-link $n(146) $n(103) 10.0Mb 0.12462983102976798ms $qtype
	$ns duplex-link $n(147) $n(115) 10.0Mb 0.6731799472132828ms $qtype
	$ns duplex-link $n(147) $n(32) 10.0Mb 1.8446184942742745ms $qtype
	$ns duplex-link $n(148) $n(122) 10.0Mb 0.927194189913757ms $qtype
	$ns duplex-link $n(148) $n(93) 10.0Mb 1.3650639380172773ms $qtype
	$ns duplex-link $n(149) $n(134) 10.0Mb 1.8107492420767723ms $qtype
	$ns duplex-link $n(149) $n(41) 10.0Mb 0.49678658288368965ms $qtype
	$ns duplex-link $n(150) $n(10) 10.0Mb 0.2729932247409656ms $qtype
	$ns duplex-link $n(150) $n(49) 10.0Mb 2.0338658703061374ms $qtype
	$ns duplex-link $n(151) $n(77) 10.0Mb 1.6293914666987366ms $qtype
	$ns duplex-link $n(151) $n(142) 10.0Mb 0.5977502091179044ms $qtype
	$ns duplex-link $n(152) $n(138) 10.0Mb 1.7037388216023375ms $qtype
	$ns duplex-link $n(152) $n(53) 10.0Mb 1.5010866090988435ms $qtype
	$ns duplex-link $n(153) $n(100) 10.0Mb 0.5120942215171709ms $qtype
	$ns duplex-link $n(153) $n(33) 10.0Mb 2.7114308950027484ms $qtype
	$ns duplex-link $n(154) $n(141) 10.0Mb 1.6517317994890914ms $qtype
	$ns duplex-link $n(154) $n(118) 10.0Mb 1.1953189183143271ms $qtype
	$ns duplex-link $n(155) $n(48) 10.0Mb 2.055753651439213ms $qtype
	$ns duplex-link $n(155) $n(22) 10.0Mb 2.0321172565917447ms $qtype
	$ns duplex-link $n(156) $n(56) 10.0Mb 1.1463982147181024ms $qtype
	$ns duplex-link $n(156) $n(45) 10.0Mb 2.022983050885977ms $qtype
	$ns duplex-link $n(157) $n(84) 10.0Mb 0.37988249797819623ms $qtype
	$ns duplex-link $n(157) $n(153) 10.0Mb 1.2251432781992853ms $qtype
	$ns duplex-link $n(158) $n(115) 10.0Mb 0.1660130774621329ms $qtype
	$ns duplex-link $n(158) $n(15) 10.0Mb 0.7289195986302498ms $qtype
	$ns duplex-link $n(159) $n(156) 10.0Mb 0.46008876661379267ms $qtype
	$ns duplex-link $n(159) $n(52) 10.0Mb 1.4014535782347441ms $qtype
	$ns duplex-link $n(160) $n(47) 10.0Mb 0.903293786985054ms $qtype
	$ns duplex-link $n(160) $n(136) 10.0Mb 0.8108352432038969ms $qtype
	$ns duplex-link $n(161) $n(4) 10.0Mb 1.5549991087831156ms $qtype
	$ns duplex-link $n(161) $n(48) 10.0Mb 0.761702941919722ms $qtype
	$ns duplex-link $n(162) $n(9) 10.0Mb 1.1085775750538809ms $qtype
	$ns duplex-link $n(162) $n(83) 10.0Mb 0.6070958170402437ms $qtype
	$ns duplex-link $n(163) $n(90) 10.0Mb 1.30424840873854ms $qtype
	$ns duplex-link $n(163) $n(30) 10.0Mb 0.9433202048241317ms $qtype
	$ns duplex-link $n(164) $n(60) 10.0Mb 0.8795978302482584ms $qtype
	$ns duplex-link $n(164) $n(130) 10.0Mb 0.4685358642189293ms $qtype
	$ns duplex-link $n(165) $n(7) 10.0Mb 1.4475682541993586ms $qtype
	$ns duplex-link $n(165) $n(146) 10.0Mb 1.3946210705724074ms $qtype
	$ns duplex-link $n(166) $n(151) 10.0Mb 0.23408975898283274ms $qtype
	$ns duplex-link $n(166) $n(16) 10.0Mb 0.5116159943616049ms $qtype
	$ns duplex-link $n(167) $n(28) 10.0Mb 1.9273799873521713ms $qtype
	$ns duplex-link $n(167) $n(29) 10.0Mb 0.8538849932701337ms $qtype
	$ns duplex-link $n(168) $n(129) 10.0Mb 0.5741664263156864ms $qtype
	$ns duplex-link $n(168) $n(72) 10.0Mb 1.874648020841607ms $qtype
	$ns duplex-link $n(169) $n(35) 10.0Mb 2.6915315572103076ms $qtype
	$ns duplex-link $n(169) $n(16) 10.0Mb 2.271395148012442ms $qtype
	$ns duplex-link $n(170) $n(169) 10.0Mb 0.3550852071714563ms $qtype
	$ns duplex-link $n(170) $n(114) 10.0Mb 0.6933721675407861ms $qtype
	$ns duplex-link $n(171) $n(137) 10.0Mb 0.8585631381182879ms $qtype
	$ns duplex-link $n(171) $n(145) 10.0Mb 1.9863874902143703ms $qtype
	$ns duplex-link $n(172) $n(63) 10.0Mb 1.163378606123021ms $qtype
	$ns duplex-link $n(172) $n(79) 10.0Mb 0.6004524328900787ms $qtype
	$ns duplex-link $n(173) $n(124) 10.0Mb 1.615032474566284ms $qtype
	$ns duplex-link $n(173) $n(170) 10.0Mb 1.538775677052281ms $qtype
	$ns duplex-link $n(174) $n(107) 10.0Mb 0.3534048228194101ms $qtype
	$ns duplex-link $n(174) $n(40) 10.0Mb 0.04071668679448134ms $qtype
	$ns duplex-link $n(175) $n(108) 10.0Mb 2.7160086476532217ms $qtype
	$ns duplex-link $n(175) $n(29) 10.0Mb 0.921530807288809ms $qtype
	$ns duplex-link $n(176) $n(175) 10.0Mb 0.19484255159628108ms $qtype
	$ns duplex-link $n(176) $n(77) 10.0Mb 0.9673186226055052ms $qtype
	$ns duplex-link $n(177) $n(129) 10.0Mb 1.841684671944101ms $qtype
	$ns duplex-link $n(177) $n(171) 10.0Mb 0.37812105495844844ms $qtype
	$ns duplex-link $n(178) $n(57) 10.0Mb 0.4334921775152299ms $qtype
	$ns duplex-link $n(178) $n(108) 10.0Mb 2.5554863242633843ms $qtype
	$ns duplex-link $n(179) $n(24) 10.0Mb 1.086564240152387ms $qtype
	$ns duplex-link $n(179) $n(48) 10.0Mb 1.3463598944265656ms $qtype
	$ns duplex-link $n(180) $n(49) 10.0Mb 0.5164968319742296ms $qtype
	$ns duplex-link $n(180) $n(128) 10.0Mb 1.0910860648793974ms $qtype
	$ns duplex-link $n(181) $n(87) 10.0Mb 0.6311064415496912ms $qtype
	$ns duplex-link $n(181) $n(143) 10.0Mb 1.2088834061327276ms $qtype
	$ns duplex-link $n(182) $n(106) 10.0Mb 1.1049433379169606ms $qtype
	$ns duplex-link $n(182) $n(92) 10.0Mb 0.3162532427322442ms $qtype
	$ns duplex-link $n(183) $n(143) 10.0Mb 1.0931338683799638ms $qtype
	$ns duplex-link $n(183) $n(26) 10.0Mb 1.9873954819013595ms $qtype
	$ns duplex-link $n(184) $n(36) 10.0Mb 0.08339102379953801ms $qtype
	$ns duplex-link $n(184) $n(149) 10.0Mb 0.6413198057289515ms $qtype
	$ns duplex-link $n(185) $n(100) 10.0Mb 1.3152961414278417ms $qtype
	$ns duplex-link $n(185) $n(163) 10.0Mb 0.15365687159856464ms $qtype
	$ns duplex-link $n(186) $n(25) 10.0Mb 0.44777175000312613ms $qtype
	$ns duplex-link $n(186) $n(133) 10.0Mb 1.274555347891728ms $qtype
	$ns duplex-link $n(187) $n(158) 10.0Mb 1.3545700723615082ms $qtype
	$ns duplex-link $n(187) $n(127) 10.0Mb 0.8717836585346073ms $qtype
	$ns duplex-link $n(188) $n(119) 10.0Mb 1.4610259681257367ms $qtype
	$ns duplex-link $n(188) $n(155) 10.0Mb 0.806107862346246ms $qtype
	$ns duplex-link $n(189) $n(154) 10.0Mb 1.8733507203138442ms $qtype
	$ns duplex-link $n(189) $n(51) 10.0Mb 2.261653120549147ms $qtype
	$ns duplex-link $n(190) $n(105) 10.0Mb 0.4105007320204441ms $qtype
	$ns duplex-link $n(190) $n(106) 10.0Mb 0.2627545165703665ms $qtype
	$ns duplex-link $n(191) $n(60) 10.0Mb 1.3620039204990693ms $qtype
	$ns duplex-link $n(191) $n(94) 10.0Mb 2.7390324774369534ms $qtype
	$ns duplex-link $n(192) $n(114) 10.0Mb 1.0595898572379145ms $qtype
	$ns duplex-link $n(192) $n(178) 10.0Mb 1.4896129968173515ms $qtype
	$ns duplex-link $n(193) $n(32) 10.0Mb 1.2913239378664818ms $qtype
	$ns duplex-link $n(193) $n(42) 10.0Mb 0.46542651344017666ms $qtype
	$ns duplex-link $n(194) $n(56) 10.0Mb 1.158048838590768ms $qtype
	$ns duplex-link $n(194) $n(183) 10.0Mb 0.7189060794268648ms $qtype
	$ns duplex-link $n(195) $n(168) 10.0Mb 2.5094352994740996ms $qtype
	$ns duplex-link $n(195) $n(89) 10.0Mb 0.21681666187879883ms $qtype
	$ns duplex-link $n(196) $n(12) 10.0Mb 0.3474995116305909ms $qtype
	$ns duplex-link $n(196) $n(84) 10.0Mb 1.450620356437688ms $qtype
	$ns duplex-link $n(197) $n(151) 10.0Mb 0.340496895493611ms $qtype
	$ns duplex-link $n(197) $n(112) 10.0Mb 0.23230051166237345ms $qtype
	$ns duplex-link $n(198) $n(19) 10.0Mb 0.991785401210464ms $qtype
	$ns duplex-link $n(198) $n(78) 10.0Mb 1.7009577655714752ms $qtype
	$ns duplex-link $n(199) $n(69) 10.0Mb 1.525682936676691ms $qtype
	$ns duplex-link $n(199) $n(158) 10.0Mb 1.7263545215693616ms $qtype
	$ns duplex-link $n(200) $n(100) 10.0Mb 0.710687249389617ms $qtype
	$ns duplex-link $n(200) $n(17) 10.0Mb 0.630656712512383ms $qtype
	$ns duplex-link $n(201) $n(88) 10.0Mb 1.2557481005129933ms $qtype
	$ns duplex-link $n(201) $n(46) 10.0Mb 0.6313796497218536ms $qtype
	$ns duplex-link $n(202) $n(156) 10.0Mb 1.6190267944214132ms $qtype
	$ns duplex-link $n(202) $n(193) 10.0Mb 0.6735765089111881ms $qtype
	$ns duplex-link $n(203) $n(133) 10.0Mb 1.1750739208928689ms $qtype
	$ns duplex-link $n(203) $n(176) 10.0Mb 1.6449005745968195ms $qtype
	$ns duplex-link $n(204) $n(0) 10.0Mb 0.8926688731800165ms $qtype
	$ns duplex-link $n(204) $n(39) 10.0Mb 2.66002046626778ms $qtype
	$ns duplex-link $n(205) $n(55) 10.0Mb 0.8115005004162934ms $qtype
	$ns duplex-link $n(205) $n(24) 10.0Mb 0.707989300944693ms $qtype
	$ns duplex-link $n(206) $n(149) 10.0Mb 1.7268861591707396ms $qtype
	$ns duplex-link $n(206) $n(74) 10.0Mb 1.0951727630488803ms $qtype
	$ns duplex-link $n(207) $n(75) 10.0Mb 0.9907078247125024ms $qtype
	$ns duplex-link $n(207) $n(32) 10.0Mb 0.33892475829743623ms $qtype
	$ns duplex-link $n(208) $n(60) 10.0Mb 1.508454879548279ms $qtype
	$ns duplex-link $n(208) $n(117) 10.0Mb 0.8902725093639783ms $qtype
	$ns duplex-link $n(209) $n(171) 10.0Mb 0.5711061525071829ms $qtype
	$ns duplex-link $n(209) $n(93) 10.0Mb 2.488826305722683ms $qtype
	$ns duplex-link $n(210) $n(115) 10.0Mb 1.610675983460279ms $qtype
	$ns duplex-link $n(210) $n(47) 10.0Mb 0.5880764324665508ms $qtype
	$ns duplex-link $n(211) $n(102) 10.0Mb 1.2605898659182446ms $qtype
	$ns duplex-link $n(211) $n(181) 10.0Mb 0.49414793463246115ms $qtype
	$ns duplex-link $n(212) $n(8) 10.0Mb 0.5356690423719366ms $qtype
	$ns duplex-link $n(212) $n(6) 10.0Mb 0.7417808518829506ms $qtype
	$ns duplex-link $n(213) $n(13) 10.0Mb 1.3579992030211467ms $qtype
	$ns duplex-link $n(213) $n(178) 10.0Mb 0.4349143703410076ms $qtype
	$ns duplex-link $n(214) $n(24) 10.0Mb 1.2036534542746997ms $qtype
	$ns duplex-link $n(214) $n(118) 10.0Mb 0.5745151339419231ms $qtype
	$ns duplex-link $n(215) $n(172) 10.0Mb 0.45709236213893195ms $qtype
	$ns duplex-link $n(215) $n(59) 10.0Mb 1.1912348643273933ms $qtype
	$ns duplex-link $n(216) $n(120) 10.0Mb 1.5052946021138833ms $qtype
	$ns duplex-link $n(216) $n(185) 10.0Mb 0.3235571723422075ms $qtype
	$ns duplex-link $n(217) $n(65) 10.0Mb 0.3110026838674243ms $qtype
	$ns duplex-link $n(217) $n(161) 10.0Mb 1.594652688552684ms $qtype
	$ns duplex-link $n(218) $n(195) 10.0Mb 0.992744133022227ms $qtype
	$ns duplex-link $n(218) $n(139) 10.0Mb 0.4806217620304887ms $qtype
	$ns duplex-link $n(219) $n(212) 10.0Mb 0.6332448817019559ms $qtype
	$ns duplex-link $n(219) $n(162) 10.0Mb 1.7294003595678034ms $qtype
	$ns duplex-link $n(220) $n(177) 10.0Mb 0.3420780706142372ms $qtype
	$ns duplex-link $n(220) $n(203) 10.0Mb 1.141744632425491ms $qtype
	$ns duplex-link $n(221) $n(149) 10.0Mb 1.339665831621635ms $qtype
	$ns duplex-link $n(221) $n(83) 10.0Mb 1.4964579051269284ms $qtype
	$ns duplex-link $n(222) $n(87) 10.0Mb 1.2277379241668471ms $qtype
	$ns duplex-link $n(222) $n(110) 10.0Mb 0.9679108157248512ms $qtype
	$ns duplex-link $n(223) $n(178) 10.0Mb 0.8408263626439347ms $qtype
	$ns duplex-link $n(223) $n(10) 10.0Mb 1.4104082397360922ms $qtype
	$ns duplex-link $n(224) $n(61) 10.0Mb 1.4664761441433527ms $qtype
	$ns duplex-link $n(224) $n(19) 10.0Mb 0.6689020608735194ms $qtype
	$ns duplex-link $n(225) $n(145) 10.0Mb 1.034167049794113ms $qtype
	$ns duplex-link $n(225) $n(42) 10.0Mb 1.2047252741257903ms $qtype
	$ns duplex-link $n(226) $n(187) 10.0Mb 1.2042449211265809ms $qtype
	$ns duplex-link $n(226) $n(113) 10.0Mb 1.7425715253547132ms $qtype
	$ns duplex-link $n(227) $n(66) 10.0Mb 1.5180135128154846ms $qtype
	$ns duplex-link $n(227) $n(0) 10.0Mb 0.35952267941222965ms $qtype
	$ns duplex-link $n(228) $n(178) 10.0Mb 1.762209991301981ms $qtype
	$ns duplex-link $n(228) $n(130) 10.0Mb 1.2635520639975457ms $qtype
	$ns duplex-link $n(229) $n(65) 10.0Mb 0.8335165394282467ms $qtype
	$ns duplex-link $n(229) $n(73) 10.0Mb 0.42867853137032136ms $qtype
	$ns duplex-link $n(230) $n(183) 10.0Mb 1.3883040227554195ms $qtype
	$ns duplex-link $n(230) $n(213) 10.0Mb 0.5090542191701073ms $qtype
	$ns duplex-link $n(231) $n(21) 10.0Mb 0.925181975679406ms $qtype
	$ns duplex-link $n(231) $n(228) 10.0Mb 2.1745769683386698ms $qtype
	$ns duplex-link $n(232) $n(211) 10.0Mb 1.4609840820596163ms $qtype
	$ns duplex-link $n(232) $n(171) 10.0Mb 1.602889148985385ms $qtype
	$ns duplex-link $n(233) $n(157) 10.0Mb 0.10388794705700993ms $qtype
	$ns duplex-link $n(233) $n(200) 10.0Mb 0.21311587291449857ms $qtype
	$ns duplex-link $n(234) $n(219) 10.0Mb 2.8119374087703726ms $qtype
	$ns duplex-link $n(234) $n(111) 10.0Mb 0.28943293302642137ms $qtype
	$ns duplex-link $n(235) $n(169) 10.0Mb 0.634166667967168ms $qtype
	$ns duplex-link $n(235) $n(3) 10.0Mb 1.2341871522331627ms $qtype
	$ns duplex-link $n(236) $n(51) 10.0Mb 2.436052637662753ms $qtype
	$ns duplex-link $n(236) $n(105) 10.0Mb 1.8855697058486842ms $qtype
	$ns duplex-link $n(237) $n(96) 10.0Mb 0.7670088595562572ms $qtype
	$ns duplex-link $n(237) $n(161) 10.0Mb 1.282353314747494ms $qtype
	$ns duplex-link $n(238) $n(173) 10.0Mb 0.03482511394236125ms $qtype
	$ns duplex-link $n(238) $n(213) 10.0Mb 0.9332465292606722ms $qtype
	$ns duplex-link $n(239) $n(42) 10.0Mb 1.0233896478188111ms $qtype
	$ns duplex-link $n(239) $n(21) 10.0Mb 1.5662636974940007ms $qtype
	$ns duplex-link $n(240) $n(107) 10.0Mb 0.20876422752861715ms $qtype
	$ns duplex-link $n(240) $n(50) 10.0Mb 2.766941815740978ms $qtype
	$ns duplex-link $n(241) $n(78) 10.0Mb 1.8908818567337675ms $qtype
	$ns duplex-link $n(241) $n(32) 10.0Mb 1.50440735142403ms $qtype
	$ns duplex-link $n(242) $n(114) 10.0Mb 0.8115210666874744ms $qtype
	$ns duplex-link $n(242) $n(197) 10.0Mb 2.6408945847677927ms $qtype
	$ns duplex-link $n(243) $n(74) 10.0Mb 0.6231312996163745ms $qtype
	$ns duplex-link $n(243) $n(86) 10.0Mb 0.4757353759201291ms $qtype
	$ns duplex-link $n(244) $n(221) 10.0Mb 0.9640233188667091ms $qtype
	$ns duplex-link $n(244) $n(92) 10.0Mb 2.2390525606973304ms $qtype
	$ns duplex-link $n(245) $n(193) 10.0Mb 1.0834673237524841ms $qtype
	$ns duplex-link $n(245) $n(43) 10.0Mb 1.6480226900218584ms $qtype
	$ns duplex-link $n(246) $n(82) 10.0Mb 0.09159356649156251ms $qtype
	$ns duplex-link $n(246) $n(13) 10.0Mb 0.660760078996484ms $qtype
	$ns duplex-link $n(247) $n(231) 10.0Mb 0.1554923976213793ms $qtype
	$ns duplex-link $n(247) $n(160) 10.0Mb 1.2722967161985475ms $qtype
	$ns duplex-link $n(248) $n(135) 10.0Mb 0.5013680291598512ms $qtype
	$ns duplex-link $n(248) $n(89) 10.0Mb 0.5512998179861902ms $qtype
	$ns duplex-link $n(249) $n(101) 10.0Mb 1.4645895024077458ms $qtype
	$ns duplex-link $n(249) $n(44) 10.0Mb 1.1508928096173987ms $qtype
	$ns duplex-link $n(250) $n(18) 10.0Mb 1.4525366325128168ms $qtype
	$ns duplex-link $n(250) $n(235) 10.0Mb 1.4262507978891608ms $qtype
	$ns duplex-link $n(251) $n(19) 10.0Mb 2.1064407545748782ms $qtype
	$ns duplex-link $n(251) $n(4) 10.0Mb 1.8484417541891902ms $qtype
	$ns duplex-link $n(252) $n(125) 10.0Mb 0.40908885945601686ms $qtype
	$ns duplex-link $n(252) $n(87) 10.0Mb 1.5507573800090746ms $qtype
	$ns duplex-link $n(253) $n(207) 10.0Mb 0.17511320779666428ms $qtype
	$ns duplex-link $n(253) $n(169) 10.0Mb 0.20804347425594913ms $qtype
	$ns duplex-link $n(254) $n(136) 10.0Mb 0.7031322250522052ms $qtype
	$ns duplex-link $n(254) $n(144) 10.0Mb 0.9099638298938607ms $qtype
	$ns duplex-link $n(255) $n(13) 10.0Mb 0.8929866564921717ms $qtype
	$ns duplex-link $n(255) $n(216) 10.0Mb 1.2184224789823686ms $qtype
	$ns duplex-link $n(256) $n(117) 10.0Mb 1.5590972787030384ms $qtype
	$ns duplex-link $n(256) $n(7) 10.0Mb 1.3534853840324543ms $qtype
	$ns duplex-link $n(257) $n(8) 10.0Mb 1.1353827997387493ms $qtype
	$ns duplex-link $n(257) $n(172) 10.0Mb 0.26952721970098076ms $qtype
	$ns duplex-link $n(258) $n(229) 10.0Mb 2.617171184709109ms $qtype
	$ns duplex-link $n(258) $n(188) 10.0Mb 2.1683410914486343ms $qtype
	$ns duplex-link $n(259) $n(78) 10.0Mb 0.6969574125951514ms $qtype
	$ns duplex-link $n(259) $n(103) 10.0Mb 1.9280264395934033ms $qtype
	$ns duplex-link $n(260) $n(65) 10.0Mb 1.0103633868208377ms $qtype
	$ns duplex-link $n(260) $n(71) 10.0Mb 0.09110636321443193ms $qtype
	$ns duplex-link $n(261) $n(129) 10.0Mb 0.6285360203698732ms $qtype
	$ns duplex-link $n(261) $n(57) 10.0Mb 1.1859599216910237ms $qtype
	$ns duplex-link $n(262) $n(121) 10.0Mb 0.25370614053014523ms $qtype
	$ns duplex-link $n(262) $n(125) 10.0Mb 1.2459634788824314ms $qtype
	$ns duplex-link $n(263) $n(127) 10.0Mb 0.964577162995577ms $qtype
	$ns duplex-link $n(263) $n(165) 10.0Mb 2.765447526491779ms $qtype
	$ns duplex-link $n(264) $n(243) 10.0Mb 1.6682207048832929ms $qtype
	$ns duplex-link $n(264) $n(13) 10.0Mb 2.0167391123794864ms $qtype
	$ns duplex-link $n(265) $n(66) 10.0Mb 0.4176483560215768ms $qtype
	$ns duplex-link $n(265) $n(247) 10.0Mb 0.4852182517805215ms $qtype
	$ns duplex-link $n(266) $n(214) 10.0Mb 1.2958825576035686ms $qtype
	$ns duplex-link $n(266) $n(251) 10.0Mb 0.6532833856761446ms $qtype
	$ns duplex-link $n(267) $n(172) 10.0Mb 1.5958802352637906ms $qtype
	$ns duplex-link $n(267) $n(103) 10.0Mb 1.0207115816855057ms $qtype
	$ns duplex-link $n(268) $n(150) 10.0Mb 0.8975291864796485ms $qtype
	$ns duplex-link $n(268) $n(168) 10.0Mb 1.3469795619846627ms $qtype
	$ns duplex-link $n(269) $n(71) 10.0Mb 2.3109059555800853ms $qtype
	$ns duplex-link $n(269) $n(117) 10.0Mb 1.2814419451251673ms $qtype
	$ns duplex-link $n(270) $n(161) 10.0Mb 1.0947866307557461ms $qtype
	$ns duplex-link $n(270) $n(12) 10.0Mb 0.32943570915653625ms $qtype
	$ns duplex-link $n(271) $n(202) 10.0Mb 1.504906494302665ms $qtype
	$ns duplex-link $n(271) $n(120) 10.0Mb 0.7964432164041375ms $qtype
	$ns duplex-link $n(272) $n(156) 10.0Mb 0.18015549432388692ms $qtype
	$ns duplex-link $n(272) $n(92) 10.0Mb 0.40790401981625296ms $qtype
	$ns duplex-link $n(273) $n(129) 10.0Mb 0.6702231573363955ms $qtype
	$ns duplex-link $n(273) $n(237) 10.0Mb 2.546754767395714ms $qtype
	$ns duplex-link $n(274) $n(62) 10.0Mb 1.7712598951185874ms $qtype
	$ns duplex-link $n(274) $n(216) 10.0Mb 0.5884358057119622ms $qtype
	$ns duplex-link $n(275) $n(261) 10.0Mb 0.28703960815673235ms $qtype
	$ns duplex-link $n(275) $n(249) 10.0Mb 1.5683118187755292ms $qtype
	$ns duplex-link $n(276) $n(263) 10.0Mb 1.7015365734703207ms $qtype
	$ns duplex-link $n(276) $n(221) 10.0Mb 1.5127858038374777ms $qtype
	$ns duplex-link $n(277) $n(56) 10.0Mb 0.5356690423719366ms $qtype
	$ns duplex-link $n(277) $n(40) 10.0Mb 1.3507698524987617ms $qtype
	$ns duplex-link $n(278) $n(77) 10.0Mb 1.1814763029035442ms $qtype
	$ns duplex-link $n(278) $n(48) 10.0Mb 0.14191182478768463ms $qtype
	$ns duplex-link $n(279) $n(161) 10.0Mb 1.4696366159051164ms $qtype
	$ns duplex-link $n(279) $n(32) 10.0Mb 0.3821311206333199ms $qtype
	$ns duplex-link $n(280) $n(274) 10.0Mb 0.7468931373386709ms $qtype
	$ns duplex-link $n(280) $n(137) 10.0Mb 1.4665482211138523ms $qtype
	$ns duplex-link $n(281) $n(223) 10.0Mb 1.9229413175613737ms $qtype
	$ns duplex-link $n(281) $n(161) 10.0Mb 1.8347116867732582ms $qtype
	$ns duplex-link $n(282) $n(63) 10.0Mb 0.3628649991848004ms $qtype
	$ns duplex-link $n(282) $n(201) 10.0Mb 0.7166739278608308ms $qtype
	$ns duplex-link $n(283) $n(1) 10.0Mb 1.4272061277603871ms $qtype
	$ns duplex-link $n(283) $n(51) 10.0Mb 1.1642151514143924ms $qtype
	$ns duplex-link $n(284) $n(52) 10.0Mb 2.332898729945359ms $qtype
	$ns duplex-link $n(284) $n(109) 10.0Mb 0.9825713478611742ms $qtype
	$ns duplex-link $n(285) $n(219) 10.0Mb 1.6353113719485692ms $qtype
	$ns duplex-link $n(285) $n(26) 10.0Mb 0.931366864721159ms $qtype
	$ns duplex-link $n(286) $n(77) 10.0Mb 1.9705988837489818ms $qtype
	$ns duplex-link $n(286) $n(185) 10.0Mb 0.1764109465646044ms $qtype
	$ns duplex-link $n(287) $n(106) 10.0Mb 0.6332448817019559ms $qtype
	$ns duplex-link $n(287) $n(70) 10.0Mb 0.47606269536434126ms $qtype
	$ns duplex-link $n(288) $n(170) 10.0Mb 1.406106199262715ms $qtype
	$ns duplex-link $n(288) $n(162) 10.0Mb 1.665380337407733ms $qtype
	$ns duplex-link $n(289) $n(37) 10.0Mb 2.6092410382108593ms $qtype
	$ns duplex-link $n(289) $n(49) 10.0Mb 0.5407649098564108ms $qtype
	$ns duplex-link $n(290) $n(193) 10.0Mb 0.7472133551588233ms $qtype
	$ns duplex-link $n(290) $n(222) 10.0Mb 0.14744891351002795ms $qtype
	$ns duplex-link $n(291) $n(243) 10.0Mb 0.9010923953211949ms $qtype
	$ns duplex-link $n(291) $n(154) 10.0Mb 0.6911299943308917ms $qtype
	$ns duplex-link $n(292) $n(280) 10.0Mb 1.648798921019724ms $qtype
	$ns duplex-link $n(292) $n(37) 10.0Mb 0.2858743545985513ms $qtype
	$ns duplex-link $n(293) $n(103) 10.0Mb 1.3296828838380985ms $qtype
	$ns duplex-link $n(293) $n(205) 10.0Mb 1.3690804983376565ms $qtype
	$ns duplex-link $n(294) $n(186) 10.0Mb 0.3284886640906805ms $qtype
	$ns duplex-link $n(294) $n(15) 10.0Mb 0.39699733051998604ms $qtype
	$ns duplex-link $n(295) $n(166) 10.0Mb 1.5605702705071378ms $qtype
	$ns duplex-link $n(295) $n(58) 10.0Mb 0.20691731236642147ms $qtype
	$ns duplex-link $n(296) $n(76) 10.0Mb 0.7094963977074007ms $qtype
	$ns duplex-link $n(296) $n(178) 10.0Mb 0.9223092471371372ms $qtype
	$ns duplex-link $n(297) $n(39) 10.0Mb 2.0161873294138846ms $qtype
	$ns duplex-link $n(297) $n(102) 10.0Mb 0.7654551061413305ms $qtype
	$ns duplex-link $n(298) $n(137) 10.0Mb 1.4577705059641752ms $qtype
	$ns duplex-link $n(298) $n(37) 10.0Mb 0.8139237331435448ms $qtype
	$ns duplex-link $n(299) $n(294) 10.0Mb 0.6149532511106058ms $qtype
	$ns duplex-link $n(299) $n(189) 10.0Mb 1.5349204738978286ms $qtype
	$ns duplex-link $n(300) $n(203) 10.0Mb 1.3243166731769693ms $qtype
	$ns duplex-link $n(300) $n(52) 10.0Mb 0.8070045420004178ms $qtype
	$ns duplex-link $n(301) $n(280) 10.0Mb 1.8035209437002573ms $qtype
	$ns duplex-link $n(301) $n(199) 10.0Mb 0.4126634113645239ms $qtype
	$ns duplex-link $n(302) $n(58) 10.0Mb 0.6761484907413986ms $qtype
	$ns duplex-link $n(302) $n(173) 10.0Mb 0.8960651686403914ms $qtype
	$ns duplex-link $n(303) $n(50) 10.0Mb 1.1712327924492663ms $qtype
	$ns duplex-link $n(303) $n(14) 10.0Mb 1.0282921412562849ms $qtype
	$ns duplex-link $n(304) $n(302) 10.0Mb 1.0844578628271149ms $qtype
	$ns duplex-link $n(304) $n(287) 10.0Mb 1.1911975025093946ms $qtype
	$ns duplex-link $n(305) $n(86) 10.0Mb 0.19736736929502097ms $qtype
	$ns duplex-link $n(305) $n(241) 10.0Mb 2.2987818346289264ms $qtype
	$ns duplex-link $n(306) $n(197) 10.0Mb 0.32333357274925534ms $qtype
	$ns duplex-link $n(306) $n(288) 10.0Mb 1.7468729691174496ms $qtype
	$ns duplex-link $n(307) $n(236) 10.0Mb 1.5023906070703363ms $qtype
	$ns duplex-link $n(307) $n(92) 10.0Mb 0.8873808075850338ms $qtype
	$ns duplex-link $n(308) $n(289) 10.0Mb 0.8289587894574222ms $qtype
	$ns duplex-link $n(308) $n(128) 10.0Mb 1.0768077249047747ms $qtype
	$ns duplex-link $n(309) $n(223) 10.0Mb 0.7243258113107407ms $qtype
	$ns duplex-link $n(309) $n(217) 10.0Mb 0.9770752279610438ms $qtype
	$ns duplex-link $n(310) $n(201) 10.0Mb 0.8858811794119449ms $qtype
	$ns duplex-link $n(310) $n(281) 10.0Mb 0.36114379348204945ms $qtype
	$ns duplex-link $n(311) $n(177) 10.0Mb 1.4443363839822527ms $qtype
	$ns duplex-link $n(311) $n(102) 10.0Mb 1.3874101232057812ms $qtype
	$ns duplex-link $n(312) $n(76) 10.0Mb 1.662327637143931ms $qtype
	$ns duplex-link $n(312) $n(107) 10.0Mb 1.1278215923099257ms $qtype
	$ns duplex-link $n(313) $n(137) 10.0Mb 2.165581238550537ms $qtype
	$ns duplex-link $n(313) $n(17) 10.0Mb 0.8787182480178327ms $qtype
	$ns duplex-link $n(314) $n(65) 10.0Mb 0.6504072196029081ms $qtype
	$ns duplex-link $n(314) $n(199) 10.0Mb 1.1592732077488737ms $qtype
	$ns duplex-link $n(315) $n(260) 10.0Mb 1.3413424792501516ms $qtype
	$ns duplex-link $n(315) $n(174) 10.0Mb 1.5027904705160033ms $qtype
	$ns duplex-link $n(316) $n(237) 10.0Mb 0.1676138834206578ms $qtype
	$ns duplex-link $n(316) $n(141) 10.0Mb 1.6487145657880848ms $qtype
	$ns duplex-link $n(317) $n(242) 10.0Mb 2.176487189750429ms $qtype
	$ns duplex-link $n(317) $n(185) 10.0Mb 0.14389724647524652ms $qtype
	$ns duplex-link $n(318) $n(312) 10.0Mb 2.7266084939964266ms $qtype
	$ns duplex-link $n(318) $n(286) 10.0Mb 1.1284133658140358ms $qtype
	$ns duplex-link $n(319) $n(187) 10.0Mb 1.5255516606284536ms $qtype
	$ns duplex-link $n(319) $n(205) 10.0Mb 0.41228576141228945ms $qtype
	$ns duplex-link $n(320) $n(204) 10.0Mb 1.0125909372274131ms $qtype
	$ns duplex-link $n(320) $n(296) 10.0Mb 2.3944256796429593ms $qtype
	$ns duplex-link $n(321) $n(36) 10.0Mb 1.5494402298723537ms $qtype
	$ns duplex-link $n(321) $n(99) 10.0Mb 0.9209087898508889ms $qtype
	$ns duplex-link $n(322) $n(57) 10.0Mb 0.5080696930583829ms $qtype
	$ns duplex-link $n(322) $n(83) 10.0Mb 1.729898902034489ms $qtype
	$ns duplex-link $n(323) $n(92) 10.0Mb 1.4714525147207773ms $qtype
	$ns duplex-link $n(323) $n(30) 10.0Mb 0.23786184088736573ms $qtype
	$ns duplex-link $n(324) $n(187) 10.0Mb 1.2887234896086102ms $qtype
	$ns duplex-link $n(324) $n(226) 10.0Mb 0.20289911797241475ms $qtype
	$ns duplex-link $n(325) $n(97) 10.0Mb 1.1361224421369565ms $qtype
	$ns duplex-link $n(325) $n(297) 10.0Mb 1.7292427259195804ms $qtype
	$ns duplex-link $n(326) $n(9) 10.0Mb 0.822389406894442ms $qtype
	$ns duplex-link $n(326) $n(286) 10.0Mb 0.3386127408653215ms $qtype
	$ns duplex-link $n(327) $n(63) 10.0Mb 0.675687573883434ms $qtype
	$ns duplex-link $n(327) $n(124) 10.0Mb 0.12556373399305934ms $qtype
	$ns duplex-link $n(328) $n(157) 10.0Mb 0.8801605544031906ms $qtype
	$ns duplex-link $n(328) $n(293) 10.0Mb 0.9978473874605388ms $qtype
	$ns duplex-link $n(329) $n(19) 10.0Mb 0.4724968081872708ms $qtype
	$ns duplex-link $n(329) $n(168) 10.0Mb 0.7373275689192412ms $qtype
	$ns duplex-link $n(330) $n(273) 10.0Mb 2.1257953687174718ms $qtype
	$ns duplex-link $n(330) $n(259) 10.0Mb 1.8123615065642633ms $qtype
	$ns duplex-link $n(331) $n(25) 10.0Mb 0.4559224533535687ms $qtype
	$ns duplex-link $n(331) $n(93) 10.0Mb 0.7688272512590099ms $qtype
	$ns duplex-link $n(332) $n(114) 10.0Mb 1.8201721915536602ms $qtype
	$ns duplex-link $n(332) $n(171) 10.0Mb 0.6064081492903282ms $qtype
	$ns duplex-link $n(333) $n(184) 10.0Mb 0.5495715219293615ms $qtype
	$ns duplex-link $n(333) $n(22) 10.0Mb 0.902850240940014ms $qtype
	$ns duplex-link $n(334) $n(194) 10.0Mb 1.0355110390623528ms $qtype
	$ns duplex-link $n(334) $n(187) 10.0Mb 1.5296378012049632ms $qtype
	$ns duplex-link $n(335) $n(31) 10.0Mb 0.7736961484696991ms $qtype
	$ns duplex-link $n(335) $n(219) 10.0Mb 2.358772266518351ms $qtype
	$ns duplex-link $n(336) $n(321) 10.0Mb 0.8462935903584016ms $qtype
	$ns duplex-link $n(336) $n(214) 10.0Mb 1.9166733394275175ms $qtype
	$ns duplex-link $n(337) $n(234) 10.0Mb 0.6209042743628186ms $qtype
	$ns duplex-link $n(337) $n(333) 10.0Mb 0.3802776982486467ms $qtype
	$ns duplex-link $n(338) $n(135) 10.0Mb 0.6140660420480613ms $qtype
	$ns duplex-link $n(338) $n(98) 10.0Mb 0.8598451658563352ms $qtype
	$ns duplex-link $n(339) $n(290) 10.0Mb 1.0514520192077224ms $qtype
	$ns duplex-link $n(339) $n(223) 10.0Mb 0.42584000062889665ms $qtype
	$ns duplex-link $n(340) $n(28) 10.0Mb 2.0575795156649517ms $qtype
	$ns duplex-link $n(340) $n(64) 10.0Mb 1.532599067216208ms $qtype
	$ns duplex-link $n(341) $n(168) 10.0Mb 1.787446085748436ms $qtype
	$ns duplex-link $n(341) $n(242) 10.0Mb 1.4653490064401298ms $qtype
	$ns duplex-link $n(342) $n(9) 10.0Mb 0.5539373903777095ms $qtype
	$ns duplex-link $n(342) $n(202) 10.0Mb 1.470457831231715ms $qtype
	$ns duplex-link $n(343) $n(14) 10.0Mb 1.2190797977861243ms $qtype
	$ns duplex-link $n(343) $n(265) 10.0Mb 0.4591204124403075ms $qtype
	$ns duplex-link $n(344) $n(243) 10.0Mb 1.3429093282321134ms $qtype
	$ns duplex-link $n(344) $n(255) 10.0Mb 0.44515500107619754ms $qtype
	$ns duplex-link $n(345) $n(98) 10.0Mb 0.972635380632963ms $qtype
	$ns duplex-link $n(345) $n(188) 10.0Mb 0.8288312681771028ms $qtype
	$ns duplex-link $n(346) $n(340) 10.0Mb 2.1298949041066724ms $qtype
	$ns duplex-link $n(346) $n(319) 10.0Mb 1.7310658944602904ms $qtype
	$ns duplex-link $n(347) $n(56) 10.0Mb 0.8174158131950464ms $qtype
	$ns duplex-link $n(347) $n(272) 10.0Mb 1.2730267317080253ms $qtype
	$ns duplex-link $n(348) $n(248) 10.0Mb 0.8345504353167176ms $qtype
	$ns duplex-link $n(348) $n(80) 10.0Mb 2.018004883829196ms $qtype
	$ns duplex-link $n(349) $n(75) 10.0Mb 0.6557992270248609ms $qtype
	$ns duplex-link $n(349) $n(295) 10.0Mb 1.4187771480779785ms $qtype
	$ns duplex-link $n(350) $n(16) 10.0Mb 1.8011225675755467ms $qtype
	$ns duplex-link $n(350) $n(114) 10.0Mb 0.9100494177367239ms $qtype
	$ns duplex-link $n(351) $n(165) 10.0Mb 1.249686208084597ms $qtype
	$ns duplex-link $n(351) $n(18) 10.0Mb 2.5605406344754367ms $qtype
	$ns duplex-link $n(352) $n(298) 10.0Mb 1.990863546850211ms $qtype
	$ns duplex-link $n(352) $n(228) 10.0Mb 1.5857456059157715ms $qtype
	$ns duplex-link $n(353) $n(319) 10.0Mb 1.564959598322545ms $qtype
	$ns duplex-link $n(353) $n(73) 10.0Mb 0.15391010263586186ms $qtype
	$ns duplex-link $n(354) $n(205) 10.0Mb 0.7691528032866479ms $qtype
	$ns duplex-link $n(354) $n(39) 10.0Mb 2.0240772641860856ms $qtype
	$ns duplex-link $n(355) $n(301) 10.0Mb 3.260074994218226ms $qtype
	$ns duplex-link $n(355) $n(113) 10.0Mb 0.7428001321327486ms $qtype
	$ns duplex-link $n(356) $n(40) 10.0Mb 0.19521338176425415ms $qtype
	$ns duplex-link $n(356) $n(97) 10.0Mb 0.5665583947581294ms $qtype
	$ns duplex-link $n(357) $n(93) 10.0Mb 1.2811640654850953ms $qtype
	$ns duplex-link $n(357) $n(189) 10.0Mb 0.32525492667994754ms $qtype
	$ns duplex-link $n(358) $n(83) 10.0Mb 1.2760908521875363ms $qtype
	$ns duplex-link $n(358) $n(202) 10.0Mb 0.8029130977119918ms $qtype
	$ns duplex-link $n(359) $n(265) 10.0Mb 0.8649542749131038ms $qtype
	$ns duplex-link $n(359) $n(95) 10.0Mb 1.6284625091165574ms $qtype
	$ns duplex-link $n(360) $n(93) 10.0Mb 0.5405488240855222ms $qtype
	$ns duplex-link $n(360) $n(157) 10.0Mb 0.09487538644703258ms $qtype
	$ns duplex-link $n(361) $n(194) 10.0Mb 0.09159356649156251ms $qtype
	$ns duplex-link $n(361) $n(309) 10.0Mb 1.4638600078065338ms $qtype
	$ns duplex-link $n(362) $n(322) 10.0Mb 0.1814784881444275ms $qtype
	$ns duplex-link $n(362) $n(57) 10.0Mb 0.3281836763551628ms $qtype
	$ns duplex-link $n(363) $n(144) 10.0Mb 0.28495824446889245ms $qtype
	$ns duplex-link $n(363) $n(201) 10.0Mb 0.7766959555650789ms $qtype
	$ns duplex-link $n(364) $n(95) 10.0Mb 1.0898616613311434ms $qtype
	$ns duplex-link $n(364) $n(237) 10.0Mb 0.26561841060882796ms $qtype
	$ns duplex-link $n(365) $n(195) 10.0Mb 0.3608047346672066ms $qtype
	$ns duplex-link $n(365) $n(205) 10.0Mb 0.4280291558174382ms $qtype
	$ns duplex-link $n(366) $n(293) 10.0Mb 0.5676864999587096ms $qtype
	$ns duplex-link $n(366) $n(87) 10.0Mb 0.25710414199336706ms $qtype
	$ns duplex-link $n(367) $n(293) 10.0Mb 1.281463651934371ms $qtype
	$ns duplex-link $n(367) $n(52) 10.0Mb 0.22841226133540676ms $qtype
	$ns duplex-link $n(368) $n(164) 10.0Mb 0.916961570001251ms $qtype
	$ns duplex-link $n(368) $n(197) 10.0Mb 2.4351275573851647ms $qtype
	$ns duplex-link $n(369) $n(49) 10.0Mb 0.31166384117102974ms $qtype
	$ns duplex-link $n(369) $n(270) 10.0Mb 0.9379559013200117ms $qtype
	$ns duplex-link $n(370) $n(214) 10.0Mb 1.999704927096611ms $qtype
	$ns duplex-link $n(370) $n(235) 10.0Mb 0.9379084501253581ms $qtype
	$ns duplex-link $n(371) $n(9) 10.0Mb 1.1532734385241752ms $qtype
	$ns duplex-link $n(371) $n(27) 10.0Mb 0.7787132209929545ms $qtype
	$ns duplex-link $n(372) $n(114) 10.0Mb 1.3918538952045494ms $qtype
	$ns duplex-link $n(372) $n(77) 10.0Mb 1.2616044963397606ms $qtype
	$ns duplex-link $n(373) $n(131) 10.0Mb 0.7813164872532883ms $qtype
	$ns duplex-link $n(373) $n(348) 10.0Mb 2.3342862094239645ms $qtype
	$ns duplex-link $n(374) $n(364) 10.0Mb 1.5654216650649535ms $qtype
	$ns duplex-link $n(374) $n(261) 10.0Mb 1.085022014204879ms $qtype
	$ns duplex-link $n(375) $n(119) 10.0Mb 1.4248497902509707ms $qtype
	$ns duplex-link $n(375) $n(98) 10.0Mb 0.4964168957788961ms $qtype
	$ns duplex-link $n(376) $n(345) 10.0Mb 1.3872457112750067ms $qtype
	$ns duplex-link $n(376) $n(24) 10.0Mb 0.3055709290885173ms $qtype
	$ns duplex-link $n(377) $n(43) 10.0Mb 1.970663814592846ms $qtype
	$ns duplex-link $n(377) $n(264) 10.0Mb 0.5750958434573651ms $qtype
	$ns duplex-link $n(378) $n(235) 10.0Mb 0.8106705592335703ms $qtype
	$ns duplex-link $n(378) $n(82) 10.0Mb 0.7994759688070687ms $qtype
	$ns duplex-link $n(379) $n(112) 10.0Mb 1.0299409257041876ms $qtype
	$ns duplex-link $n(379) $n(330) 10.0Mb 3.0787694942182053ms $qtype
	$ns duplex-link $n(380) $n(62) 10.0Mb 0.7175893295901317ms $qtype
	$ns duplex-link $n(380) $n(14) 10.0Mb 1.4923778399596157ms $qtype
	$ns duplex-link $n(381) $n(61) 10.0Mb 0.8000046492006168ms $qtype
	$ns duplex-link $n(381) $n(115) 10.0Mb 0.4788126398183825ms $qtype
	$ns duplex-link $n(382) $n(196) 10.0Mb 0.6892438377908452ms $qtype
	$ns duplex-link $n(382) $n(214) 10.0Mb 1.3211243835949245ms $qtype
	$ns duplex-link $n(383) $n(157) 10.0Mb 1.5152954458372299ms $qtype
	$ns duplex-link $n(383) $n(20) 10.0Mb 1.5549991087831156ms $qtype
	$ns duplex-link $n(384) $n(34) 10.0Mb 0.7782415637269875ms $qtype
	$ns duplex-link $n(384) $n(273) 10.0Mb 0.724110722828538ms $qtype
	$ns duplex-link $n(385) $n(208) 10.0Mb 0.27223816821623587ms $qtype
	$ns duplex-link $n(385) $n(204) 10.0Mb 0.7660363173914656ms $qtype
	$ns duplex-link $n(386) $n(43) 10.0Mb 1.1287091362177384ms $qtype
	$ns duplex-link $n(386) $n(328) 10.0Mb 1.8766649201246657ms $qtype
	$ns duplex-link $n(387) $n(45) 10.0Mb 0.5623004236426972ms $qtype
	$ns duplex-link $n(387) $n(366) 10.0Mb 0.5639107961549629ms $qtype
	$ns duplex-link $n(388) $n(161) 10.0Mb 0.7041600464239182ms $qtype
	$ns duplex-link $n(388) $n(96) 10.0Mb 1.2763088137534504ms $qtype
	$ns duplex-link $n(389) $n(313) 10.0Mb 2.233086433889451ms $qtype
	$ns duplex-link $n(389) $n(163) 10.0Mb 1.4145713533816342ms $qtype
	$ns duplex-link $n(390) $n(285) 10.0Mb 0.6862022323789768ms $qtype
	$ns duplex-link $n(390) $n(217) 10.0Mb 0.994826603915764ms $qtype
	$ns duplex-link $n(391) $n(323) 10.0Mb 2.498323816670574ms $qtype
	$ns duplex-link $n(391) $n(94) 10.0Mb 1.5660505675277367ms $qtype
	$ns duplex-link $n(392) $n(271) 10.0Mb 1.0242373286256239ms $qtype
	$ns duplex-link $n(392) $n(389) 10.0Mb 0.5661556571720594ms $qtype
	$ns duplex-link $n(393) $n(364) 10.0Mb 2.36454597294491ms $qtype
	$ns duplex-link $n(393) $n(345) 10.0Mb 1.84244876062149ms $qtype
	$ns duplex-link $n(394) $n(14) 10.0Mb 1.0034681363792894ms $qtype
	$ns duplex-link $n(394) $n(294) 10.0Mb 1.2244710409127415ms $qtype
	$ns duplex-link $n(395) $n(20) 10.0Mb 0.5815601753375298ms $qtype
	$ns duplex-link $n(395) $n(242) 10.0Mb 0.7044602032769736ms $qtype
	$ns duplex-link $n(396) $n(131) 10.0Mb 2.024734057852783ms $qtype
	$ns duplex-link $n(396) $n(339) 10.0Mb 0.48916921515452216ms $qtype
	$ns duplex-link $n(397) $n(153) 10.0Mb 2.812853277474985ms $qtype
	$ns duplex-link $n(397) $n(378) 10.0Mb 0.6626097736366087ms $qtype
	$ns duplex-link $n(398) $n(282) 10.0Mb 0.18566070865032563ms $qtype
	$ns duplex-link $n(398) $n(326) 10.0Mb 1.0619132287102282ms $qtype
	$ns duplex-link $n(399) $n(334) 10.0Mb 2.042153381628797ms $qtype
	$ns duplex-link $n(399) $n(76) 10.0Mb 1.4690232434234098ms $qtype
	$ns duplex-link $n(400) $n(155) 10.0Mb 2.2372803075756087ms $qtype
	$ns duplex-link $n(400) $n(198) 10.0Mb 0.8649542749131038ms $qtype
	$ns duplex-link $n(401) $n(57) 10.0Mb 0.6458838018685583ms $qtype
	$ns duplex-link $n(401) $n(175) 10.0Mb 0.11650892963139839ms $qtype
	$ns duplex-link $n(402) $n(263) 10.0Mb 1.6890237903060443ms $qtype
	$ns duplex-link $n(402) $n(302) 10.0Mb 2.1871149355907282ms $qtype
	$ns duplex-link $n(403) $n(324) 10.0Mb 0.2835294809184292ms $qtype
	$ns duplex-link $n(403) $n(4) 10.0Mb 0.5601990256238609ms $qtype
	$ns duplex-link $n(404) $n(238) 10.0Mb 1.2392478524766573ms $qtype
	$ns duplex-link $n(404) $n(370) 10.0Mb 0.5054789400876687ms $qtype
	$ns duplex-link $n(405) $n(145) 10.0Mb 1.5230589185462875ms $qtype
	$ns duplex-link $n(405) $n(278) 10.0Mb 2.254996903140917ms $qtype
	$ns duplex-link $n(406) $n(183) 10.0Mb 1.9906846978216133ms $qtype
	$ns duplex-link $n(406) $n(138) 10.0Mb 1.0399766761744802ms $qtype
	$ns duplex-link $n(407) $n(62) 10.0Mb 2.748025644429177ms $qtype
	$ns duplex-link $n(407) $n(185) 10.0Mb 1.795011884312433ms $qtype
	$ns duplex-link $n(408) $n(155) 10.0Mb 2.176425843242601ms $qtype
	$ns duplex-link $n(408) $n(243) 10.0Mb 0.15506246390186984ms $qtype
	$ns duplex-link $n(409) $n(239) 10.0Mb 2.263455447452096ms $qtype
	$ns duplex-link $n(409) $n(339) 10.0Mb 2.100068787607599ms $qtype
	$ns duplex-link $n(410) $n(122) 10.0Mb 0.4324128142409874ms $qtype
	$ns duplex-link $n(410) $n(384) 10.0Mb 0.9033430564355295ms $qtype
	$ns duplex-link $n(411) $n(243) 10.0Mb 1.539379326183548ms $qtype
	$ns duplex-link $n(411) $n(108) 10.0Mb 0.3256310033487442ms $qtype
	$ns duplex-link $n(412) $n(96) 10.0Mb 1.2219058816937538ms $qtype
	$ns duplex-link $n(412) $n(319) 10.0Mb 1.3461119475313637ms $qtype
	$ns duplex-link $n(413) $n(209) 10.0Mb 0.45032388257378986ms $qtype
	$ns duplex-link $n(413) $n(343) 10.0Mb 2.7007838402901463ms $qtype
	$ns duplex-link $n(414) $n(390) 10.0Mb 0.9840197344470394ms $qtype
	$ns duplex-link $n(414) $n(58) 10.0Mb 0.5737399402895558ms $qtype
	$ns duplex-link $n(415) $n(136) 10.0Mb 0.29355535566797747ms $qtype
	$ns duplex-link $n(415) $n(68) 10.0Mb 1.4124263417971419ms $qtype
	$ns duplex-link $n(416) $n(241) 10.0Mb 0.5411659830900986ms $qtype
	$ns duplex-link $n(416) $n(340) 10.0Mb 2.2895864764394425ms $qtype
	$ns duplex-link $n(417) $n(336) 10.0Mb 1.8804555679792079ms $qtype
	$ns duplex-link $n(417) $n(308) 10.0Mb 0.610048515077952ms $qtype
	$ns duplex-link $n(418) $n(43) 10.0Mb 0.2632410406661913ms $qtype
	$ns duplex-link $n(418) $n(92) 10.0Mb 0.8879636604176978ms $qtype
	$ns duplex-link $n(419) $n(342) 10.0Mb 1.384937877895103ms $qtype
	$ns duplex-link $n(419) $n(226) 10.0Mb 1.13655816484557ms $qtype
	$ns duplex-link $n(420) $n(412) 10.0Mb 0.6092546144265528ms $qtype
	$ns duplex-link $n(420) $n(210) 10.0Mb 1.2699333146850338ms $qtype
	$ns duplex-link $n(421) $n(407) 10.0Mb 0.3710966146945514ms $qtype
	$ns duplex-link $n(421) $n(369) 10.0Mb 0.8285560238059239ms $qtype
	$ns duplex-link $n(422) $n(267) 10.0Mb 0.5599606345953886ms $qtype
	$ns duplex-link $n(422) $n(249) 10.0Mb 0.3684335853835009ms $qtype
	$ns duplex-link $n(423) $n(40) 10.0Mb 1.319097339152593ms $qtype
	$ns duplex-link $n(423) $n(380) 10.0Mb 1.2562087597212044ms $qtype
	$ns duplex-link $n(424) $n(330) 10.0Mb 1.0564770594904684ms $qtype
	$ns duplex-link $n(424) $n(140) 10.0Mb 1.0414894558494345ms $qtype
	$ns duplex-link $n(425) $n(48) 10.0Mb 0.46066880205968647ms $qtype
	$ns duplex-link $n(425) $n(20) 10.0Mb 0.9752001755592076ms $qtype
	$ns duplex-link $n(426) $n(401) 10.0Mb 1.2431204834416936ms $qtype
	$ns duplex-link $n(426) $n(242) 10.0Mb 0.30884865113106247ms $qtype
	$ns duplex-link $n(427) $n(388) 10.0Mb 0.7445879866949218ms $qtype
	$ns duplex-link $n(427) $n(354) 10.0Mb 1.225819685231238ms $qtype
	$ns duplex-link $n(428) $n(40) 10.0Mb 2.075446951262377ms $qtype
	$ns duplex-link $n(428) $n(280) 10.0Mb 0.7823624791848192ms $qtype
	$ns duplex-link $n(429) $n(187) 10.0Mb 1.2363399184711865ms $qtype
	$ns duplex-link $n(429) $n(157) 10.0Mb 0.6038339369137601ms $qtype
	$ns duplex-link $n(430) $n(336) 10.0Mb 1.8246718249404426ms $qtype
	$ns duplex-link $n(430) $n(86) 10.0Mb 0.49647292667129195ms $qtype
	$ns duplex-link $n(431) $n(370) 10.0Mb 2.9483915100340314ms $qtype
	$ns duplex-link $n(431) $n(132) 10.0Mb 0.07787132209929547ms $qtype
	$ns duplex-link $n(432) $n(362) 10.0Mb 1.2050530974431206ms $qtype
	$ns duplex-link $n(432) $n(180) 10.0Mb 2.503660194153382ms $qtype
	$ns duplex-link $n(433) $n(254) 10.0Mb 2.164052178883069ms $qtype
	$ns duplex-link $n(433) $n(107) 10.0Mb 0.9832505447265154ms $qtype
	$ns duplex-link $n(434) $n(78) 10.0Mb 2.29740681441088ms $qtype
	$ns duplex-link $n(434) $n(179) 10.0Mb 0.2673719620705301ms $qtype
	$ns duplex-link $n(435) $n(181) 10.0Mb 1.537994557911903ms $qtype
	$ns duplex-link $n(435) $n(301) 10.0Mb 0.7470048568195595ms $qtype
	$ns duplex-link $n(436) $n(50) 10.0Mb 0.9504235624221078ms $qtype
	$ns duplex-link $n(436) $n(343) 10.0Mb 1.3329423250873311ms $qtype
	$ns duplex-link $n(437) $n(317) 10.0Mb 1.97564581760904ms $qtype
	$ns duplex-link $n(437) $n(309) 10.0Mb 2.259105776542909ms $qtype
	$ns duplex-link $n(438) $n(280) 10.0Mb 0.506754016202314ms $qtype
	$ns duplex-link $n(438) $n(31) 10.0Mb 2.4192596920041565ms $qtype
	$ns duplex-link $n(439) $n(214) 10.0Mb 0.7071558818200824ms $qtype
	$ns duplex-link $n(439) $n(426) 10.0Mb 0.3640130425897201ms $qtype
	$ns duplex-link $n(440) $n(311) 10.0Mb 1.271137447879286ms $qtype
	$ns duplex-link $n(440) $n(400) 10.0Mb 0.7726168229289123ms $qtype
	$ns duplex-link $n(441) $n(312) 10.0Mb 1.227996181170556ms $qtype
	$ns duplex-link $n(441) $n(152) 10.0Mb 0.2800349548728855ms $qtype
	$ns duplex-link $n(442) $n(273) 10.0Mb 0.449433522532503ms $qtype
	$ns duplex-link $n(442) $n(326) 10.0Mb 1.2122886729399156ms $qtype
	$ns duplex-link $n(443) $n(276) 10.0Mb 0.35252217626786064ms $qtype
	$ns duplex-link $n(443) $n(63) 10.0Mb 2.262754849722085ms $qtype
	$ns duplex-link $n(444) $n(62) 10.0Mb 0.9935115722661949ms $qtype
	$ns duplex-link $n(444) $n(326) 10.0Mb 0.16375245448814563ms $qtype
	$ns duplex-link $n(445) $n(114) 10.0Mb 0.4011654323438092ms $qtype
	$ns duplex-link $n(445) $n(79) 10.0Mb 0.8676001474881122ms $qtype
	$ns duplex-link $n(446) $n(16) 10.0Mb 0.6212715223193481ms $qtype
	$ns duplex-link $n(446) $n(124) 10.0Mb 0.8848695369635302ms $qtype
	$ns duplex-link $n(447) $n(115) 10.0Mb 1.0429680375259924ms $qtype
	$ns duplex-link $n(447) $n(400) 10.0Mb 2.0684336170252546ms $qtype
	$ns duplex-link $n(448) $n(394) 10.0Mb 1.4532067321581494ms $qtype
	$ns duplex-link $n(448) $n(59) 10.0Mb 0.35635200420005986ms $qtype
	$ns duplex-link $n(449) $n(50) 10.0Mb 2.168600208757084ms $qtype
	$ns duplex-link $n(449) $n(108) 10.0Mb 1.9360630193347714ms $qtype
	$ns duplex-link $n(450) $n(72) 10.0Mb 0.5857446297531833ms $qtype
	$ns duplex-link $n(450) $n(284) 10.0Mb 0.4284838220393013ms $qtype
	$ns duplex-link $n(451) $n(253) 10.0Mb 2.5569597170031186ms $qtype
	$ns duplex-link $n(451) $n(127) 10.0Mb 2.6202282428021975ms $qtype
	$ns duplex-link $n(452) $n(162) 10.0Mb 1.0056833005239467ms $qtype
	$ns duplex-link $n(452) $n(321) 10.0Mb 0.8264921348161748ms $qtype
	$ns duplex-link $n(453) $n(447) 10.0Mb 1.7812759934519142ms $qtype
	$ns duplex-link $n(453) $n(367) 10.0Mb 1.3816239318883807ms $qtype
	$ns duplex-link $n(454) $n(288) 10.0Mb 0.29292929577434734ms $qtype
	$ns duplex-link $n(454) $n(209) 10.0Mb 0.10034681363792897ms $qtype
	$ns duplex-link $n(455) $n(114) 10.0Mb 1.0984848591538026ms $qtype
	$ns duplex-link $n(455) $n(78) 10.0Mb 0.8196790447168804ms $qtype
	$ns duplex-link $n(456) $n(104) 10.0Mb 2.5056525774318654ms $qtype
	$ns duplex-link $n(456) $n(116) 10.0Mb 0.36578158679797923ms $qtype
	$ns duplex-link $n(457) $n(380) 10.0Mb 1.3915061121128103ms $qtype
	$ns duplex-link $n(457) $n(220) 10.0Mb 0.823842542111481ms $qtype
	$ns duplex-link $n(458) $n(135) 10.0Mb 1.6311318361912177ms $qtype
	$ns duplex-link $n(458) $n(107) 10.0Mb 1.6659581485803496ms $qtype
	$ns duplex-link $n(459) $n(359) 10.0Mb 0.5415770317104432ms $qtype
	$ns duplex-link $n(459) $n(205) 10.0Mb 0.38534955103245666ms $qtype
	$ns duplex-link $n(460) $n(314) 10.0Mb 1.1804823432412508ms $qtype
	$ns duplex-link $n(460) $n(299) 10.0Mb 0.986357546234267ms $qtype
	$ns duplex-link $n(461) $n(104) 10.0Mb 1.4777454131253709ms $qtype
	$ns duplex-link $n(461) $n(390) 10.0Mb 0.36578158679797923ms $qtype
	$ns duplex-link $n(462) $n(49) 10.0Mb 2.190896614246805ms $qtype
	$ns duplex-link $n(462) $n(131) 10.0Mb 0.3850462569213531ms $qtype
	$ns duplex-link $n(463) $n(151) 10.0Mb 0.29064134643162987ms $qtype
	$ns duplex-link $n(463) $n(292) 10.0Mb 0.5008906678503109ms $qtype
	$ns duplex-link $n(464) $n(43) 10.0Mb 0.21191167089691884ms $qtype
	$ns duplex-link $n(464) $n(367) 10.0Mb 0.7170929855365623ms $qtype
	$ns duplex-link $n(465) $n(139) 10.0Mb 1.3835312249575011ms $qtype
	$ns duplex-link $n(465) $n(270) 10.0Mb 0.40568854592094566ms $qtype
	$ns duplex-link $n(466) $n(0) 10.0Mb 0.7381043106811487ms $qtype
	$ns duplex-link $n(466) $n(231) 10.0Mb 1.781760021000299ms $qtype
	$ns duplex-link $n(467) $n(351) 10.0Mb 0.10302757657419455ms $qtype
	$ns duplex-link $n(467) $n(330) 10.0Mb 2.262105681393518ms $qtype
	$ns duplex-link $n(468) $n(134) 10.0Mb 1.550301708081824ms $qtype
	$ns duplex-link $n(468) $n(70) 10.0Mb 1.0450994821188242ms $qtype
	$ns duplex-link $n(469) $n(59) 10.0Mb 0.6079474447844081ms $qtype
	$ns duplex-link $n(469) $n(29) 10.0Mb 1.7256131776890373ms $qtype
	$ns duplex-link $n(470) $n(312) 10.0Mb 1.8330401718930005ms $qtype
	$ns duplex-link $n(470) $n(96) 10.0Mb 0.6731882112980283ms $qtype
	$ns duplex-link $n(471) $n(412) 10.0Mb 0.5586377070355338ms $qtype
	$ns duplex-link $n(471) $n(441) 10.0Mb 0.9404496422228151ms $qtype
	$ns duplex-link $n(472) $n(337) 10.0Mb 1.1934884171033426ms $qtype
	$ns duplex-link $n(472) $n(65) 10.0Mb 1.2069766851066355ms $qtype
	$ns duplex-link $n(473) $n(375) 10.0Mb 1.4130406593902032ms $qtype
	$ns duplex-link $n(473) $n(345) 10.0Mb 1.8221425300362206ms $qtype
	$ns duplex-link $n(474) $n(11) 10.0Mb 0.959598450597944ms $qtype
	$ns duplex-link $n(474) $n(471) 10.0Mb 2.9851657071146707ms $qtype
	$ns duplex-link $n(475) $n(179) 10.0Mb 1.5134549584953698ms $qtype
	$ns duplex-link $n(475) $n(468) 10.0Mb 0.3690370806043248ms $qtype
	$ns duplex-link $n(476) $n(280) 10.0Mb 0.564393997618322ms $qtype
	$ns duplex-link $n(476) $n(87) 10.0Mb 1.3240645984319963ms $qtype
	$ns duplex-link $n(477) $n(167) 10.0Mb 0.6634907645759767ms $qtype
	$ns duplex-link $n(477) $n(304) 10.0Mb 0.1721979209915989ms $qtype
	$ns duplex-link $n(478) $n(99) 10.0Mb 0.09061654050820801ms $qtype
	$ns duplex-link $n(478) $n(434) 10.0Mb 1.0016536003255962ms $qtype
	$ns duplex-link $n(479) $n(453) 10.0Mb 0.3860418999381047ms $qtype
	$ns duplex-link $n(479) $n(119) 10.0Mb 1.6784672159231717ms $qtype
	$ns duplex-link $n(480) $n(156) 10.0Mb 0.6091176304225971ms $qtype
	$ns duplex-link $n(480) $n(388) 10.0Mb 1.3488863494243541ms $qtype
	$ns duplex-link $n(481) $n(4) 10.0Mb 1.5095572023943356ms $qtype
	$ns duplex-link $n(481) $n(307) 10.0Mb 0.8186195711443344ms $qtype
	$ns duplex-link $n(482) $n(420) 10.0Mb 1.5330491143148341ms $qtype
	$ns duplex-link $n(482) $n(32) 10.0Mb 0.7595965636887287ms $qtype
	$ns duplex-link $n(483) $n(161) 10.0Mb 1.3991015844516548ms $qtype
	$ns duplex-link $n(483) $n(426) 10.0Mb 2.452667100842585ms $qtype
	$ns duplex-link $n(484) $n(77) 10.0Mb 2.181032246012304ms $qtype
	$ns duplex-link $n(484) $n(284) 10.0Mb 2.6918953151186242ms $qtype
	$ns duplex-link $n(485) $n(233) 10.0Mb 2.3916941061045023ms $qtype
	$ns duplex-link $n(485) $n(410) 10.0Mb 2.276153984686604ms $qtype
	$ns duplex-link $n(486) $n(433) 10.0Mb 2.3550475552335652ms $qtype
	$ns duplex-link $n(486) $n(328) 10.0Mb 0.6901553176611722ms $qtype
	$ns duplex-link $n(487) $n(408) 10.0Mb 1.1935909620854934ms $qtype
	$ns duplex-link $n(487) $n(268) 10.0Mb 0.14451450291277487ms $qtype
	$ns duplex-link $n(488) $n(202) 10.0Mb 1.2295129111388985ms $qtype
	$ns duplex-link $n(488) $n(105) 10.0Mb 1.7003067801565572ms $qtype
	$ns duplex-link $n(489) $n(85) 10.0Mb 0.8030585900102418ms $qtype
	$ns duplex-link $n(489) $n(441) 10.0Mb 1.5917474512754644ms $qtype
	$ns duplex-link $n(490) $n(332) 10.0Mb 0.18163169922122566ms $qtype
	$ns duplex-link $n(490) $n(79) 10.0Mb 0.8772989360953138ms $qtype
	$ns duplex-link $n(491) $n(438) 10.0Mb 0.19115289126979176ms $qtype
	$ns duplex-link $n(491) $n(80) 10.0Mb 2.1002807033176527ms $qtype
	$ns duplex-link $n(492) $n(293) 10.0Mb 0.714559382223063ms $qtype
	$ns duplex-link $n(492) $n(255) 10.0Mb 0.4356428813386783ms $qtype
	$ns duplex-link $n(493) $n(435) 10.0Mb 0.6029488198138871ms $qtype
	$ns duplex-link $n(493) $n(489) 10.0Mb 1.8569786104647565ms $qtype
	$ns duplex-link $n(494) $n(493) 10.0Mb 0.4948566972739087ms $qtype
	$ns duplex-link $n(494) $n(315) 10.0Mb 0.8049683305223541ms $qtype
	$ns duplex-link $n(495) $n(343) 10.0Mb 0.3575987569081335ms $qtype
	$ns duplex-link $n(495) $n(185) 10.0Mb 0.49732381901549705ms $qtype
	$ns duplex-link $n(496) $n(239) 10.0Mb 1.0166867275979419ms $qtype
	$ns duplex-link $n(496) $n(350) 10.0Mb 1.5364818199159809ms $qtype
	$ns duplex-link $n(497) $n(44) 10.0Mb 0.292568229328143ms $qtype
	$ns duplex-link $n(497) $n(111) 10.0Mb 0.4879279992927161ms $qtype
	$ns duplex-link $n(498) $n(458) 10.0Mb 0.9797306144328124ms $qtype
	$ns duplex-link $n(498) $n(195) 10.0Mb 1.2888270902966181ms $qtype
	$ns duplex-link $n(499) $n(460) 10.0Mb 0.6204650831388919ms $qtype
	$ns duplex-link $n(499) $n(78) 10.0Mb 0.46268117617287624ms $qtype
	$ns duplex-link $n(500) $n(483) 10.0Mb 0.8498490479994225ms $qtype
	$ns duplex-link $n(500) $n(465) 10.0Mb 2.323543895536766ms $qtype
	$ns duplex-link $n(501) $n(167) 10.0Mb 1.1677268615542724ms $qtype
	$ns duplex-link $n(501) $n(311) 10.0Mb 1.942901333617328ms $qtype
	$ns duplex-link $n(502) $n(458) 10.0Mb 2.134351509357577ms $qtype
	$ns duplex-link $n(502) $n(191) 10.0Mb 1.094766304230851ms $qtype
	$ns duplex-link $n(503) $n(66) 10.0Mb 0.4508054266955905ms $qtype
	$ns duplex-link $n(503) $n(179) 10.0Mb 1.0050856873382494ms $qtype
	$ns duplex-link $n(504) $n(20) 10.0Mb 1.5398129399211382ms $qtype
	$ns duplex-link $n(504) $n(362) 10.0Mb 2.545382565136483ms $qtype
	$ns duplex-link $n(505) $n(420) 10.0Mb 0.6372471192229033ms $qtype
	$ns duplex-link $n(505) $n(343) 10.0Mb 0.07161924851886663ms $qtype
	$ns duplex-link $n(506) $n(175) 10.0Mb 0.578106129821182ms $qtype
	$ns duplex-link $n(506) $n(103) 10.0Mb 1.5199290065274653ms $qtype
	$ns duplex-link $n(507) $n(285) 10.0Mb 1.3712568013428168ms $qtype
	$ns duplex-link $n(507) $n(184) 10.0Mb 0.4536471694694868ms $qtype
	$ns duplex-link $n(508) $n(12) 10.0Mb 0.2681822134730525ms $qtype
	$ns duplex-link $n(508) $n(453) 10.0Mb 1.6912225952234183ms $qtype
	$ns duplex-link $n(509) $n(153) 10.0Mb 0.3525852957269642ms $qtype
	$ns duplex-link $n(509) $n(161) 10.0Mb 1.1639092845866306ms $qtype
	$ns duplex-link $n(510) $n(229) 10.0Mb 0.5106037222097816ms $qtype
	$ns duplex-link $n(510) $n(234) 10.0Mb 0.08033287200835651ms $qtype
	$ns duplex-link $n(511) $n(463) 10.0Mb 0.6184533800287552ms $qtype
	$ns duplex-link $n(511) $n(186) 10.0Mb 1.9166356058377254ms $qtype
	$ns duplex-link $n(512) $n(270) 10.0Mb 1.642768457499659ms $qtype
	$ns duplex-link $n(512) $n(201) 10.0Mb 1.7758145440527868ms $qtype
	$ns duplex-link $n(513) $n(230) 10.0Mb 0.8453464526458941ms $qtype
	$ns duplex-link $n(513) $n(255) 10.0Mb 1.3935555801025177ms $qtype
	$ns duplex-link $n(514) $n(455) 10.0Mb 0.8676001474881122ms $qtype
	$ns duplex-link $n(514) $n(365) 10.0Mb 2.1948542810839515ms $qtype
	$ns duplex-link $n(515) $n(457) 10.0Mb 0.3223858584615158ms $qtype
	$ns duplex-link $n(515) $n(184) 10.0Mb 1.1161295873503005ms $qtype
	$ns duplex-link $n(516) $n(438) 10.0Mb 1.3332052398428886ms $qtype
	$ns duplex-link $n(516) $n(307) 10.0Mb 0.41588634410561615ms $qtype
	$ns duplex-link $n(517) $n(55) 10.0Mb 0.8790410746535777ms $qtype
	$ns duplex-link $n(517) $n(484) 10.0Mb 0.07851166353184122ms $qtype
	$ns duplex-link $n(518) $n(367) 10.0Mb 0.4810729795562755ms $qtype
	$ns duplex-link $n(518) $n(311) 10.0Mb 1.324669497233782ms $qtype
	$ns duplex-link $n(519) $n(306) 10.0Mb 1.267938510335526ms $qtype
	$ns duplex-link $n(519) $n(324) 10.0Mb 0.972932763189819ms $qtype
	$ns duplex-link $n(520) $n(226) 10.0Mb 1.2814115549745322ms $qtype
	$ns duplex-link $n(520) $n(174) 10.0Mb 0.5327218066655766ms $qtype
	$ns duplex-link $n(521) $n(124) 10.0Mb 2.3781529306209688ms $qtype
	$ns duplex-link $n(521) $n(195) 10.0Mb 0.7076120252124389ms $qtype
	$ns duplex-link $n(522) $n(259) 10.0Mb 1.2112005803769972ms $qtype
	$ns duplex-link $n(522) $n(139) 10.0Mb 0.9763917354360704ms $qtype
	$ns duplex-link $n(523) $n(265) 10.0Mb 0.6343070130225181ms $qtype
	$ns duplex-link $n(523) $n(517) 10.0Mb 0.27360390306296334ms $qtype
	$ns duplex-link $n(524) $n(474) 10.0Mb 0.29355535566797747ms $qtype
	$ns duplex-link $n(524) $n(493) 10.0Mb 1.1982753318151194ms $qtype
	$ns duplex-link $n(525) $n(159) 10.0Mb 2.223974661315895ms $qtype
	$ns duplex-link $n(525) $n(200) 10.0Mb 0.08659827583619312ms $qtype
	$ns duplex-link $n(526) $n(282) 10.0Mb 0.7642767996132217ms $qtype
	$ns duplex-link $n(526) $n(273) 10.0Mb 0.24095244328472332ms $qtype
	$ns duplex-link $n(527) $n(310) 10.0Mb 1.7950986621460576ms $qtype
	$ns duplex-link $n(527) $n(182) 10.0Mb 0.7448643839324961ms $qtype
	$ns duplex-link $n(528) $n(200) 10.0Mb 1.8354210892091056ms $qtype
	$ns duplex-link $n(528) $n(40) 10.0Mb 1.1934884171033426ms $qtype
	$ns duplex-link $n(529) $n(54) 10.0Mb 1.9350455378717168ms $qtype
	$ns duplex-link $n(529) $n(135) 10.0Mb 2.70812141150869ms $qtype
	$ns duplex-link $n(530) $n(316) 10.0Mb 0.459544318471001ms $qtype
	$ns duplex-link $n(530) $n(321) 10.0Mb 0.5643545681088692ms $qtype
	$ns duplex-link $n(531) $n(513) 10.0Mb 0.8700589590002735ms $qtype
	$ns duplex-link $n(531) $n(33) 10.0Mb 1.2060544839595329ms $qtype
	$ns duplex-link $n(532) $n(25) 10.0Mb 0.8737596708831044ms $qtype
	$ns duplex-link $n(532) $n(291) 10.0Mb 0.9099638298938607ms $qtype
	$ns duplex-link $n(533) $n(140) 10.0Mb 1.302084012617013ms $qtype
	$ns duplex-link $n(533) $n(322) 10.0Mb 1.8187809788839915ms $qtype
	$ns duplex-link $n(534) $n(408) 10.0Mb 0.7972461003483364ms $qtype
	$ns duplex-link $n(534) $n(154) 10.0Mb 1.2868831895048618ms $qtype
	$ns duplex-link $n(535) $n(504) 10.0Mb 1.8655867391622296ms $qtype
	$ns duplex-link $n(535) $n(392) 10.0Mb 0.7491466400334751ms $qtype
	$ns duplex-link $n(536) $n(426) 10.0Mb 0.9924582923838491ms $qtype
	$ns duplex-link $n(536) $n(341) 10.0Mb 1.6915909773515034ms $qtype
	$ns duplex-link $n(537) $n(364) 10.0Mb 0.5378766285823003ms $qtype
	$ns duplex-link $n(537) $n(157) 10.0Mb 0.501123854602135ms $qtype
	$ns duplex-link $n(538) $n(93) 10.0Mb 0.3349787428375231ms $qtype
	$ns duplex-link $n(538) $n(367) 10.0Mb 0.2830385204099621ms $qtype
	$ns duplex-link $n(539) $n(442) 10.0Mb 0.05274111432396974ms $qtype
	$ns duplex-link $n(539) $n(411) 10.0Mb 0.1304743111023023ms $qtype
	$ns duplex-link $n(540) $n(278) 10.0Mb 0.4716011235191852ms $qtype
	$ns duplex-link $n(540) $n(417) 10.0Mb 0.7823909220066774ms $qtype
	$ns duplex-link $n(541) $n(420) 10.0Mb 0.7753123195093493ms $qtype
	$ns duplex-link $n(541) $n(36) 10.0Mb 1.5644298308963371ms $qtype
	$ns duplex-link $n(542) $n(460) 10.0Mb 0.4014011143695599ms $qtype
	$ns duplex-link $n(542) $n(37) 10.0Mb 2.3683191701224846ms $qtype
	$ns duplex-link $n(543) $n(201) 10.0Mb 0.208524253243059ms $qtype
	$ns duplex-link $n(543) $n(254) 10.0Mb 0.08698287406820153ms $qtype
	$ns duplex-link $n(544) $n(260) 10.0Mb 2.5106122149874737ms $qtype
	$ns duplex-link $n(544) $n(361) 10.0Mb 0.9484547663535621ms $qtype
	$ns duplex-link $n(545) $n(97) 10.0Mb 1.2548839087073698ms $qtype
	$ns duplex-link $n(545) $n(168) 10.0Mb 1.094766304230851ms $qtype
	$ns duplex-link $n(546) $n(249) 10.0Mb 0.26218222758797466ms $qtype
	$ns duplex-link $n(546) $n(234) 10.0Mb 1.809787341928923ms $qtype
	$ns duplex-link $n(547) $n(381) 10.0Mb 2.1072619662036116ms $qtype
	$ns duplex-link $n(547) $n(44) 10.0Mb 2.9200293105644834ms $qtype
	$ns duplex-link $n(548) $n(136) 10.0Mb 1.4490547975431112ms $qtype
	$ns duplex-link $n(548) $n(125) 10.0Mb 1.4353182008832182ms $qtype
	$ns duplex-link $n(549) $n(384) 10.0Mb 0.5074122810602905ms $qtype
	$ns duplex-link $n(549) $n(523) 10.0Mb 1.9358446220688967ms $qtype
	$ns duplex-link $n(550) $n(96) 10.0Mb 2.2565432300371695ms $qtype
	$ns duplex-link $n(550) $n(226) 10.0Mb 0.45406393314899557ms $qtype
	$ns duplex-link $n(551) $n(413) 10.0Mb 0.7221335252369951ms $qtype
	$ns duplex-link $n(551) $n(143) 10.0Mb 0.40083246886217ms $qtype
	$ns duplex-link $n(552) $n(418) 10.0Mb 2.458856137940354ms $qtype
	$ns duplex-link $n(552) $n(380) 10.0Mb 0.881518462170729ms $qtype
	$ns duplex-link $n(553) $n(413) 10.0Mb 0.41739519136769604ms $qtype
	$ns duplex-link $n(553) $n(347) 10.0Mb 0.6160198276984655ms $qtype
	$ns duplex-link $n(554) $n(156) 10.0Mb 0.5971635814123168ms $qtype
	$ns duplex-link $n(554) $n(212) 10.0Mb 2.1683744449176534ms $qtype
	$ns duplex-link $n(555) $n(287) 10.0Mb 0.8598516358925352ms $qtype
	$ns duplex-link $n(555) $n(548) 10.0Mb 0.07216094693344133ms $qtype
	$ns duplex-link $n(556) $n(252) 10.0Mb 0.5401781902299106ms $qtype
	$ns duplex-link $n(556) $n(8) 10.0Mb 1.6414132949173998ms $qtype
	$ns duplex-link $n(557) $n(225) 10.0Mb 0.9107277223655651ms $qtype
	$ns duplex-link $n(557) $n(111) 10.0Mb 2.1709154970720146ms $qtype
	$ns duplex-link $n(558) $n(445) 10.0Mb 2.1697363676653407ms $qtype
	$ns duplex-link $n(558) $n(400) 10.0Mb 3.4987677711877234ms $qtype
	$ns duplex-link $n(559) $n(262) 10.0Mb 2.920751293463402ms $qtype
	$ns duplex-link $n(559) $n(299) 10.0Mb 0.9080911091644818ms $qtype
	$ns duplex-link $n(560) $n(10) 10.0Mb 2.0706782116031994ms $qtype
	$ns duplex-link $n(560) $n(435) 10.0Mb 0.16180437515389268ms $qtype
	$ns duplex-link $n(561) $n(23) 10.0Mb 0.4952949468334013ms $qtype
	$ns duplex-link $n(561) $n(42) 10.0Mb 0.8208252645616533ms $qtype
	$ns duplex-link $n(562) $n(166) 10.0Mb 2.3353417624097808ms $qtype
	$ns duplex-link $n(562) $n(437) 10.0Mb 2.1668268166916196ms $qtype
	$ns duplex-link $n(563) $n(22) 10.0Mb 2.2954251443780587ms $qtype
	$ns duplex-link $n(563) $n(124) 10.0Mb 0.07606431680807246ms $qtype
	$ns duplex-link $n(564) $n(351) 10.0Mb 0.891583818856616ms $qtype
	$ns duplex-link $n(564) $n(96) 10.0Mb 0.11108235288125035ms $qtype
	$ns duplex-link $n(565) $n(80) 10.0Mb 1.462384710067039ms $qtype
	$ns duplex-link $n(565) $n(472) 10.0Mb 0.4238364679329242ms $qtype
	$ns duplex-link $n(566) $n(459) 10.0Mb 1.074821985353552ms $qtype
	$ns duplex-link $n(566) $n(386) 10.0Mb 0.823842542111481ms $qtype
	$ns duplex-link $n(567) $n(429) 10.0Mb 0.3580962425943332ms $qtype
	$ns duplex-link $n(567) $n(341) 10.0Mb 0.9533924744258698ms $qtype
	$ns duplex-link $n(568) $n(79) 10.0Mb 0.6706712396250758ms $qtype
	$ns duplex-link $n(568) $n(173) 10.0Mb 1.157352051011337ms $qtype
	$ns duplex-link $n(569) $n(308) 10.0Mb 0.33655278294237645ms $qtype
	$ns duplex-link $n(569) $n(508) 10.0Mb 1.1723484898869585ms $qtype
	$ns duplex-link $n(570) $n(368) 10.0Mb 0.25686601239552803ms $qtype
	$ns duplex-link $n(570) $n(431) 10.0Mb 2.497742556048786ms $qtype
	$ns duplex-link $n(571) $n(92) 10.0Mb 1.6449580696231973ms $qtype
	$ns duplex-link $n(571) $n(450) 10.0Mb 0.4718252040906759ms $qtype
	$ns duplex-link $n(572) $n(473) 10.0Mb 0.8223014605756851ms $qtype
	$ns duplex-link $n(572) $n(1) 10.0Mb 0.4307628696255771ms $qtype
	$ns duplex-link $n(573) $n(186) 10.0Mb 1.9876893831886295ms $qtype
	$ns duplex-link $n(573) $n(146) 10.0Mb 1.614870567066398ms $qtype
	$ns duplex-link $n(574) $n(34) 10.0Mb 0.2516143640364176ms $qtype
	$ns duplex-link $n(574) $n(57) 10.0Mb 0.9221162070675994ms $qtype
	$ns duplex-link $n(575) $n(69) 10.0Mb 1.368019515314817ms $qtype
	$ns duplex-link $n(575) $n(176) 10.0Mb 0.8437787138033226ms $qtype
	$ns duplex-link $n(576) $n(47) 10.0Mb 1.5358226980450276ms $qtype
	$ns duplex-link $n(576) $n(391) 10.0Mb 2.0026100440525667ms $qtype
	$ns duplex-link $n(577) $n(21) 10.0Mb 2.0144868882531357ms $qtype
	$ns duplex-link $n(577) $n(180) 10.0Mb 0.8950526056378841ms $qtype
	$ns duplex-link $n(578) $n(324) 10.0Mb 1.8107861098672953ms $qtype
	$ns duplex-link $n(578) $n(397) 10.0Mb 0.43728713522509993ms $qtype
	$ns duplex-link $n(579) $n(318) 10.0Mb 2.4306776936989887ms $qtype
	$ns duplex-link $n(579) $n(308) 10.0Mb 1.5471801631013484ms $qtype
	$ns duplex-link $n(580) $n(213) 10.0Mb 0.47307338994560333ms $qtype
	$ns duplex-link $n(580) $n(492) 10.0Mb 0.9874004312420483ms $qtype
	$ns duplex-link $n(581) $n(324) 10.0Mb 0.28090771077939924ms $qtype
	$ns duplex-link $n(581) $n(533) 10.0Mb 0.504520518238244ms $qtype
	$ns duplex-link $n(582) $n(397) 10.0Mb 1.208832783356283ms $qtype
	$ns duplex-link $n(582) $n(173) 10.0Mb 2.5937069794816736ms $qtype
	$ns duplex-link $n(583) $n(381) 10.0Mb 0.7796342726699046ms $qtype
	$ns duplex-link $n(583) $n(276) 10.0Mb 1.6958872301512844ms $qtype
	$ns duplex-link $n(584) $n(294) 10.0Mb 0.17511320779666428ms $qtype
	$ns duplex-link $n(584) $n(129) 10.0Mb 1.9547567493168805ms $qtype
	$ns duplex-link $n(585) $n(580) 10.0Mb 1.648798921019724ms $qtype
	$ns duplex-link $n(585) $n(131) 10.0Mb 3.2486882503086125ms $qtype
	$ns duplex-link $n(586) $n(161) 10.0Mb 0.65064667318544ms $qtype
	$ns duplex-link $n(586) $n(155) 10.0Mb 1.7256647597442054ms $qtype
	$ns duplex-link $n(587) $n(48) 10.0Mb 0.33770790743702744ms $qtype
	$ns duplex-link $n(587) $n(364) 10.0Mb 0.6984484881336265ms $qtype
	$ns duplex-link $n(588) $n(516) 10.0Mb 0.5517940628885678ms $qtype
	$ns duplex-link $n(588) $n(292) 10.0Mb 0.7649098195054076ms $qtype
	$ns duplex-link $n(589) $n(39) 10.0Mb 1.3015156362250402ms $qtype
	$ns duplex-link $n(589) $n(577) 10.0Mb 0.8811712896009593ms $qtype
	$ns duplex-link $n(590) $n(554) 10.0Mb 0.7518892827277455ms $qtype
	$ns duplex-link $n(590) $n(37) 10.0Mb 1.105527229005282ms $qtype
	$ns duplex-link $n(591) $n(77) 10.0Mb 0.9223333743050368ms $qtype
	$ns duplex-link $n(591) $n(322) 10.0Mb 1.9912994240606927ms $qtype
	$ns duplex-link $n(592) $n(230) 10.0Mb 0.9640464020580269ms $qtype
	$ns duplex-link $n(592) $n(157) 10.0Mb 0.5457622376141039ms $qtype
	$ns duplex-link $n(593) $n(385) 10.0Mb 1.2294043121137146ms $qtype
	$ns duplex-link $n(593) $n(493) 10.0Mb 1.3609619472314052ms $qtype
	$ns duplex-link $n(594) $n(550) 10.0Mb 1.9263290397649153ms $qtype
	$ns duplex-link $n(594) $n(92) 10.0Mb 0.9338424569664545ms $qtype
	$ns duplex-link $n(595) $n(225) 10.0Mb 1.079686743332239ms $qtype
	$ns duplex-link $n(595) $n(563) 10.0Mb 3.0408772090215166ms $qtype
	$ns duplex-link $n(596) $n(76) 10.0Mb 1.6797461189552576ms $qtype
	$ns duplex-link $n(596) $n(227) 10.0Mb 1.8654107906316206ms $qtype
	$ns duplex-link $n(597) $n(433) 10.0Mb 0.143781215885373ms $qtype
	$ns duplex-link $n(597) $n(223) 10.0Mb 0.9627239981908959ms $qtype
	$ns duplex-link $n(598) $n(570) 10.0Mb 0.6749873665135042ms $qtype
	$ns duplex-link $n(598) $n(102) 10.0Mb 0.476798342544178ms $qtype
	$ns duplex-link $n(599) $n(576) 10.0Mb 1.3473016764808523ms $qtype
	$ns duplex-link $n(599) $n(531) 10.0Mb 1.4048751908730934ms $qtype
	$ns duplex-link $n(600) $n(244) 10.0Mb 0.6516036075637249ms $qtype
	$ns duplex-link $n(600) $n(281) 10.0Mb 2.391505686932317ms $qtype
	$ns duplex-link $n(601) $n(319) 10.0Mb 2.765849837191385ms $qtype
	$ns duplex-link $n(601) $n(342) 10.0Mb 1.331405531685573ms $qtype
	$ns duplex-link $n(602) $n(158) 10.0Mb 0.19094905691539057ms $qtype
	$ns duplex-link $n(602) $n(5) 10.0Mb 0.17729174849246288ms $qtype
	$ns duplex-link $n(603) $n(403) 10.0Mb 1.1911414575850732ms $qtype
	$ns duplex-link $n(603) $n(432) 10.0Mb 0.5321680362134947ms $qtype
	$ns duplex-link $n(604) $n(189) 10.0Mb 1.6374056331800013ms $qtype
	$ns duplex-link $n(604) $n(49) 10.0Mb 2.785953202947664ms $qtype
	$ns duplex-link $n(605) $n(102) 10.0Mb 1.3931722832374511ms $qtype
	$ns duplex-link $n(605) $n(390) 10.0Mb 2.097333155248631ms $qtype
	$ns duplex-link $n(606) $n(108) 10.0Mb 0.5428902958683669ms $qtype
	$ns duplex-link $n(606) $n(591) 10.0Mb 1.4105462878739856ms $qtype
	$ns duplex-link $n(607) $n(516) 10.0Mb 0.4937762719927208ms $qtype
	$ns duplex-link $n(607) $n(176) 10.0Mb 2.3042230091685356ms $qtype
	$ns duplex-link $n(608) $n(128) 10.0Mb 0.9036078337057439ms $qtype
	$ns duplex-link $n(608) $n(511) 10.0Mb 0.49449681780462823ms $qtype
	$ns duplex-link $n(609) $n(48) 10.0Mb 1.2922541687408375ms $qtype
	$ns duplex-link $n(609) $n(114) 10.0Mb 1.6662887133917579ms $qtype
	$ns duplex-link $n(610) $n(464) 10.0Mb 1.0318566848838016ms $qtype
	$ns duplex-link $n(610) $n(575) 10.0Mb 0.35653929503509973ms $qtype
	$ns duplex-link $n(611) $n(387) 10.0Mb 1.7994074845956467ms $qtype
	$ns duplex-link $n(611) $n(279) 10.0Mb 1.656447189387378ms $qtype
	$ns duplex-link $n(612) $n(202) 10.0Mb 2.144944225097844ms $qtype
	$ns duplex-link $n(612) $n(13) 10.0Mb 0.22027861663016293ms $qtype
	$ns duplex-link $n(613) $n(464) 10.0Mb 0.3948615609992869ms $qtype
	$ns duplex-link $n(613) $n(570) 10.0Mb 0.33820175304440986ms $qtype
	$ns duplex-link $n(614) $n(157) 10.0Mb 1.0743871155930091ms $qtype
	$ns duplex-link $n(614) $n(218) 10.0Mb 1.5404486859506987ms $qtype
	$ns duplex-link $n(615) $n(349) 10.0Mb 2.4839261953265934ms $qtype
	$ns duplex-link $n(615) $n(383) 10.0Mb 2.332455134633121ms $qtype
	$ns duplex-link $n(616) $n(200) 10.0Mb 1.624333850358856ms $qtype
	$ns duplex-link $n(616) $n(502) 10.0Mb 0.7744220468926881ms $qtype
	$ns duplex-link $n(617) $n(53) 10.0Mb 0.8716815492363114ms $qtype
	$ns duplex-link $n(617) $n(305) 10.0Mb 0.7571978432909259ms $qtype
	$ns duplex-link $n(618) $n(199) 10.0Mb 2.6546379504599713ms $qtype
	$ns duplex-link $n(618) $n(366) 10.0Mb 1.2934590278725582ms $qtype
	$ns duplex-link $n(619) $n(142) 10.0Mb 0.5184105463232698ms $qtype
	$ns duplex-link $n(619) $n(203) 10.0Mb 1.100599774225151ms $qtype
	$ns duplex-link $n(620) $n(591) 10.0Mb 1.2004090807280994ms $qtype
	$ns duplex-link $n(620) $n(533) 10.0Mb 1.0327620588662034ms $qtype
	$ns duplex-link $n(621) $n(62) 10.0Mb 0.7312056697232628ms $qtype
	$ns duplex-link $n(621) $n(111) 10.0Mb 2.8658824641413116ms $qtype
	$ns duplex-link $n(622) $n(340) 10.0Mb 0.664872820372515ms $qtype
	$ns duplex-link $n(622) $n(343) 10.0Mb 1.6042074972235032ms $qtype
	$ns duplex-link $n(623) $n(33) 10.0Mb 0.3392692858169552ms $qtype
	$ns duplex-link $n(623) $n(500) 10.0Mb 1.9055971125711204ms $qtype
	$ns duplex-link $n(624) $n(389) 10.0Mb 0.6529767438280686ms $qtype
	$ns duplex-link $n(624) $n(162) 10.0Mb 0.2217636861110717ms $qtype
	$ns duplex-link $n(625) $n(481) 10.0Mb 0.48421972937105634ms $qtype
	$ns duplex-link $n(625) $n(157) 10.0Mb 1.487897784301692ms $qtype
	$ns duplex-link $n(626) $n(15) 10.0Mb 1.495394290030747ms $qtype
	$ns duplex-link $n(626) $n(552) 10.0Mb 1.6741927195537891ms $qtype
	$ns duplex-link $n(627) $n(593) 10.0Mb 0.9805876699416208ms $qtype
	$ns duplex-link $n(627) $n(549) 10.0Mb 0.4359620196474449ms $qtype
	$ns duplex-link $n(628) $n(423) 10.0Mb 0.2317010254715915ms $qtype
	$ns duplex-link $n(628) $n(522) 10.0Mb 1.9194809565647768ms $qtype
	$ns duplex-link $n(629) $n(601) 10.0Mb 0.1917630943444856ms $qtype
	$ns duplex-link $n(629) $n(545) 10.0Mb 1.8465838371934706ms $qtype
	$ns duplex-link $n(630) $n(249) 10.0Mb 0.7779198152682593ms $qtype
	$ns duplex-link $n(630) $n(453) 10.0Mb 0.5000013410928891ms $qtype
	$ns duplex-link $n(631) $n(13) 10.0Mb 1.6016113984761766ms $qtype
	$ns duplex-link $n(631) $n(152) 10.0Mb 1.01660464516222ms $qtype
	$ns duplex-link $n(632) $n(541) 10.0Mb 1.4765741310001157ms $qtype
	$ns duplex-link $n(632) $n(317) 10.0Mb 1.3423250825615196ms $qtype
	$ns duplex-link $n(633) $n(561) 10.0Mb 0.7974902958909583ms $qtype
	$ns duplex-link $n(633) $n(562) 10.0Mb 0.16880452581472205ms $qtype
	$ns duplex-link $n(634) $n(581) 10.0Mb 3.1522636483326028ms $qtype
	$ns duplex-link $n(634) $n(622) 10.0Mb 1.0705069134447402ms $qtype
	$ns duplex-link $n(635) $n(467) 10.0Mb 0.6425331145541802ms $qtype
	$ns duplex-link $n(635) $n(537) 10.0Mb 1.6602815668946147ms $qtype
	$ns duplex-link $n(636) $n(277) 10.0Mb 1.7394176223448472ms $qtype
	$ns duplex-link $n(636) $n(73) 10.0Mb 0.36784422425352903ms $qtype
	$ns duplex-link $n(637) $n(456) 10.0Mb 1.1301277566464898ms $qtype
	$ns duplex-link $n(637) $n(382) 10.0Mb 0.28729145681355966ms $qtype
	$ns duplex-link $n(638) $n(237) 10.0Mb 2.4457073230127286ms $qtype
	$ns duplex-link $n(638) $n(614) 10.0Mb 0.49286282091229605ms $qtype
	$ns duplex-link $n(639) $n(397) 10.0Mb 0.7250013882609397ms $qtype
	$ns duplex-link $n(639) $n(80) 10.0Mb 0.3956075794072985ms $qtype
	$ns duplex-link $n(640) $n(138) 10.0Mb 2.116660659673227ms $qtype
	$ns duplex-link $n(640) $n(301) 10.0Mb 2.1889150974583034ms $qtype
	$ns duplex-link $n(641) $n(254) 10.0Mb 0.41622063106908624ms $qtype
	$ns duplex-link $n(641) $n(615) 10.0Mb 1.193977757045205ms $qtype
	$ns duplex-link $n(642) $n(273) 10.0Mb 1.5136791694174871ms $qtype
	$ns duplex-link $n(642) $n(223) 10.0Mb 0.4014565488559959ms $qtype
	$ns duplex-link $n(643) $n(344) 10.0Mb 0.8681962799237992ms $qtype
	$ns duplex-link $n(643) $n(253) 10.0Mb 2.3077452993777463ms $qtype
	$ns duplex-link $n(644) $n(188) 10.0Mb 0.9357468752886734ms $qtype
	$ns duplex-link $n(644) $n(287) 10.0Mb 1.0578242582646344ms $qtype
	$ns duplex-link $n(645) $n(342) 10.0Mb 1.101115237421419ms $qtype
	$ns duplex-link $n(645) $n(586) 10.0Mb 1.5446034710219225ms $qtype
	$ns duplex-link $n(646) $n(484) 10.0Mb 0.7092062167233436ms $qtype
	$ns duplex-link $n(646) $n(89) 10.0Mb 0.9340271173528749ms $qtype
	$ns duplex-link $n(647) $n(380) 10.0Mb 2.01445374852268ms $qtype
	$ns duplex-link $n(647) $n(565) 10.0Mb 1.1548834898779157ms $qtype
	$ns duplex-link $n(648) $n(574) 10.0Mb 1.4183732112355152ms $qtype
	$ns duplex-link $n(648) $n(266) 10.0Mb 2.0750930941599477ms $qtype
	$ns duplex-link $n(649) $n(261) 10.0Mb 1.2357593112872063ms $qtype
	$ns duplex-link $n(649) $n(119) 10.0Mb 1.896581031016703ms $qtype
	$ns duplex-link $n(650) $n(472) 10.0Mb 1.466718915599519ms $qtype
	$ns duplex-link $n(650) $n(190) 10.0Mb 0.9026283861840718ms $qtype
	$ns duplex-link $n(651) $n(126) 10.0Mb 0.779891116208994ms $qtype
	$ns duplex-link $n(651) $n(621) 10.0Mb 1.0866051996849722ms $qtype
	$ns duplex-link $n(652) $n(313) 10.0Mb 3.161534853207877ms $qtype
	$ns duplex-link $n(652) $n(573) 10.0Mb 0.3859121791324767ms $qtype
	$ns duplex-link $n(653) $n(177) 10.0Mb 2.260189056219894ms $qtype
	$ns duplex-link $n(653) $n(263) 10.0Mb 1.0638655413250595ms $qtype
	$ns duplex-link $n(654) $n(500) 10.0Mb 0.34716315194981157ms $qtype
	$ns duplex-link $n(654) $n(49) 10.0Mb 2.062893699730345ms $qtype
	$ns duplex-link $n(655) $n(342) 10.0Mb 0.4318592390996255ms $qtype
	$ns duplex-link $n(655) $n(652) 10.0Mb 0.6096836316700596ms $qtype
	$ns duplex-link $n(656) $n(134) 10.0Mb 0.8569676440786026ms $qtype
	$ns duplex-link $n(656) $n(417) 10.0Mb 1.8759384930719842ms $qtype
	$ns duplex-link $n(657) $n(406) 10.0Mb 0.4103380715734211ms $qtype
	$ns duplex-link $n(657) $n(61) 10.0Mb 0.26167247552912337ms $qtype
	$ns duplex-link $n(658) $n(300) 10.0Mb 1.2586863343638028ms $qtype
	$ns duplex-link $n(658) $n(335) 10.0Mb 1.212013298815153ms $qtype
	$ns duplex-link $n(659) $n(203) 10.0Mb 1.7858518250880755ms $qtype
	$ns duplex-link $n(659) $n(532) 10.0Mb 1.0033849725903397ms $qtype
	$ns duplex-link $n(660) $n(301) 10.0Mb 0.35098805422158835ms $qtype
	$ns duplex-link $n(660) $n(357) 10.0Mb 1.6641338538456616ms $qtype
	$ns duplex-link $n(661) $n(430) 10.0Mb 1.1117346514638644ms $qtype
	$ns duplex-link $n(661) $n(296) 10.0Mb 2.1591081087689354ms $qtype
	$ns duplex-link $n(662) $n(233) 10.0Mb 2.8381776919022146ms $qtype
	$ns duplex-link $n(662) $n(68) 10.0Mb 1.8207222679492199ms $qtype
	$ns duplex-link $n(663) $n(577) 10.0Mb 1.2705814990900335ms $qtype
	$ns duplex-link $n(663) $n(403) 10.0Mb 0.9430960724168782ms $qtype
	$ns duplex-link $n(664) $n(57) 10.0Mb 0.9280158384352186ms $qtype
	$ns duplex-link $n(664) $n(146) 10.0Mb 1.8216783941414023ms $qtype
	$ns duplex-link $n(665) $n(302) 10.0Mb 1.003983598113363ms $qtype
	$ns duplex-link $n(665) $n(279) 10.0Mb 2.2682971634479343ms $qtype
	$ns duplex-link $n(666) $n(135) 10.0Mb 2.3812294799449227ms $qtype
	$ns duplex-link $n(666) $n(34) 10.0Mb 0.4009712372474463ms $qtype
	$ns duplex-link $n(667) $n(568) 10.0Mb 0.17931978870149712ms $qtype
	$ns duplex-link $n(667) $n(374) 10.0Mb 2.07844962763899ms $qtype
	$ns duplex-link $n(668) $n(451) 10.0Mb 1.3562898232576717ms $qtype
	$ns duplex-link $n(668) $n(212) 10.0Mb 1.68786398623304ms $qtype
	$ns duplex-link $n(669) $n(329) 10.0Mb 2.0516903578671055ms $qtype
	$ns duplex-link $n(669) $n(339) 10.0Mb 1.9250810167885062ms $qtype
	$ns duplex-link $n(670) $n(133) 10.0Mb 0.7959051805416312ms $qtype
	$ns duplex-link $n(670) $n(479) 10.0Mb 1.899245533421602ms $qtype
	$ns duplex-link $n(671) $n(506) 10.0Mb 0.1676138834206578ms $qtype
	$ns duplex-link $n(671) $n(646) 10.0Mb 2.718727453584025ms $qtype
	$ns duplex-link $n(672) $n(493) 10.0Mb 2.974533388321801ms $qtype
	$ns duplex-link $n(672) $n(12) 10.0Mb 0.5750958434573651ms $qtype
	$ns duplex-link $n(673) $n(554) 10.0Mb 2.53400061286264ms $qtype
	$ns duplex-link $n(673) $n(170) 10.0Mb 1.3628736640181396ms $qtype
	$ns duplex-link $n(674) $n(260) 10.0Mb 0.5171211796783484ms $qtype
	$ns duplex-link $n(674) $n(635) 10.0Mb 1.107618652021209ms $qtype
	$ns duplex-link $n(675) $n(140) 10.0Mb 2.1258267727327587ms $qtype
	$ns duplex-link $n(675) $n(668) 10.0Mb 1.3986840104384815ms $qtype
	$ns duplex-link $n(676) $n(312) 10.0Mb 1.5112257449019773ms $qtype
	$ns duplex-link $n(676) $n(417) 10.0Mb 0.21214781348712708ms $qtype
	$ns duplex-link $n(677) $n(414) 10.0Mb 0.3438947142047099ms $qtype
	$ns duplex-link $n(677) $n(358) 10.0Mb 0.6734113032506756ms $qtype
	$ns duplex-link $n(678) $n(128) 10.0Mb 1.036440059345916ms $qtype
	$ns duplex-link $n(678) $n(127) 10.0Mb 0.7471388981455191ms $qtype
	$ns duplex-link $n(679) $n(144) 10.0Mb 2.7425136026856336ms $qtype
	$ns duplex-link $n(679) $n(105) 10.0Mb 1.070454943810051ms $qtype
	$ns duplex-link $n(680) $n(406) 10.0Mb 1.7265929732234115ms $qtype
	$ns duplex-link $n(680) $n(299) 10.0Mb 0.962446582759666ms $qtype
	$ns duplex-link $n(681) $n(386) 10.0Mb 2.357974946454406ms $qtype
	$ns duplex-link $n(681) $n(176) 10.0Mb 0.17008498304492986ms $qtype
	$ns duplex-link $n(682) $n(365) 10.0Mb 0.9134785361670913ms $qtype
	$ns duplex-link $n(682) $n(376) 10.0Mb 0.7568891998574739ms $qtype
	$ns duplex-link $n(683) $n(569) 10.0Mb 0.3449285005531051ms $qtype
	$ns duplex-link $n(683) $n(14) 10.0Mb 0.2362896100398208ms $qtype
	$ns duplex-link $n(684) $n(415) 10.0Mb 0.6181834584103458ms $qtype
	$ns duplex-link $n(684) $n(347) 10.0Mb 0.361805581900982ms $qtype
	$ns duplex-link $n(685) $n(485) 10.0Mb 1.1342405509026716ms $qtype
	$ns duplex-link $n(685) $n(280) 10.0Mb 1.880934777241043ms $qtype
	$ns duplex-link $n(686) $n(214) 10.0Mb 0.5107453432404164ms $qtype
	$ns duplex-link $n(686) $n(36) 10.0Mb 0.596856070126364ms $qtype
	$ns duplex-link $n(687) $n(569) 10.0Mb 1.0595898572379145ms $qtype
	$ns duplex-link $n(687) $n(142) 10.0Mb 0.9215670283738058ms $qtype
	$ns duplex-link $n(688) $n(433) 10.0Mb 0.8281127553347354ms $qtype
	$ns duplex-link $n(688) $n(56) 10.0Mb 1.2553360217048903ms $qtype
	$ns duplex-link $n(689) $n(160) 10.0Mb 1.6071594421916178ms $qtype
	$ns duplex-link $n(689) $n(512) 10.0Mb 1.6245085130433186ms $qtype
	$ns duplex-link $n(690) $n(137) 10.0Mb 1.8811891226782642ms $qtype
	$ns duplex-link $n(690) $n(85) 10.0Mb 1.921621613775477ms $qtype
	$ns duplex-link $n(691) $n(558) 10.0Mb 1.4628411466407147ms $qtype
	$ns duplex-link $n(691) $n(366) 10.0Mb 0.6943663649614046ms $qtype
	$ns duplex-link $n(692) $n(452) 10.0Mb 0.6139029459014524ms $qtype
	$ns duplex-link $n(692) $n(281) 10.0Mb 1.1095256412171302ms $qtype
	$ns duplex-link $n(693) $n(141) 10.0Mb 2.1680588492481ms $qtype
	$ns duplex-link $n(693) $n(569) 10.0Mb 1.0128271548883323ms $qtype
	$ns duplex-link $n(694) $n(363) 10.0Mb 2.601699443729784ms $qtype
	$ns duplex-link $n(694) $n(570) 10.0Mb 0.4668110040242209ms $qtype
	$ns duplex-link $n(695) $n(176) 10.0Mb 0.8713432267191313ms $qtype
	$ns duplex-link $n(695) $n(593) 10.0Mb 1.2949033790107134ms $qtype
	$ns duplex-link $n(696) $n(259) 10.0Mb 0.194270661452878ms $qtype
	$ns duplex-link $n(696) $n(585) 10.0Mb 0.7434289894425115ms $qtype
	$ns duplex-link $n(697) $n(103) 10.0Mb 0.2565843015788234ms $qtype
	$ns duplex-link $n(697) $n(490) 10.0Mb 0.2003884740272631ms $qtype
	$ns duplex-link $n(698) $n(591) 10.0Mb 1.6826977930232299ms $qtype
	$ns duplex-link $n(698) $n(308) 10.0Mb 1.4295391232675514ms $qtype
	$ns duplex-link $n(699) $n(494) 10.0Mb 1.1592732077488737ms $qtype
	$ns duplex-link $n(699) $n(681) 10.0Mb 0.5299051751457534ms $qtype
	$ns duplex-link $n(700) $n(134) 10.0Mb 3.136256471978655ms $qtype
	$ns duplex-link $n(700) $n(639) 10.0Mb 0.5542887875269404ms $qtype
	$ns duplex-link $n(701) $n(81) 10.0Mb 1.6378540550499587ms $qtype
	$ns duplex-link $n(701) $n(127) 10.0Mb 0.1939267178462326ms $qtype
	$ns duplex-link $n(702) $n(491) 10.0Mb 1.7939454140608757ms $qtype
	$ns duplex-link $n(702) $n(427) 10.0Mb 0.9282975503107648ms $qtype
	$ns duplex-link $n(703) $n(149) 10.0Mb 0.6751604264651527ms $qtype
	$ns duplex-link $n(703) $n(592) 10.0Mb 0.4176083928584819ms $qtype
	$ns duplex-link $n(704) $n(363) 10.0Mb 2.85273757301398ms $qtype
	$ns duplex-link $n(704) $n(114) 10.0Mb 1.163048602873528ms $qtype
	$ns duplex-link $n(705) $n(450) 10.0Mb 0.7289195986302498ms $qtype
	$ns duplex-link $n(705) $n(300) 10.0Mb 1.244949507040976ms $qtype
	$ns duplex-link $n(706) $n(46) 10.0Mb 1.5732666446585584ms $qtype
	$ns duplex-link $n(706) $n(553) 10.0Mb 1.374854736954668ms $qtype
	$ns duplex-link $n(707) $n(26) 10.0Mb 0.8829435929177628ms $qtype
	$ns duplex-link $n(707) $n(307) 10.0Mb 1.819637235634389ms $qtype
	$ns duplex-link $n(708) $n(701) 10.0Mb 2.6616868151437734ms $qtype
	$ns duplex-link $n(708) $n(16) 10.0Mb 1.809787341928923ms $qtype
	$ns duplex-link $n(709) $n(625) 10.0Mb 1.330398137088238ms $qtype
	$ns duplex-link $n(709) $n(278) 10.0Mb 0.22588964467327613ms $qtype
	$ns duplex-link $n(710) $n(587) 10.0Mb 0.36729935923780377ms $qtype
	$ns duplex-link $n(710) $n(290) 10.0Mb 1.1508154653201623ms $qtype
	$ns duplex-link $n(711) $n(631) 10.0Mb 1.3976136563462345ms $qtype
	$ns duplex-link $n(711) $n(205) 10.0Mb 1.3289253835225456ms $qtype
	$ns duplex-link $n(712) $n(353) 10.0Mb 2.5896477912743223ms $qtype
	$ns duplex-link $n(712) $n(19) 10.0Mb 0.47141234147568645ms $qtype
	$ns duplex-link $n(713) $n(60) 10.0Mb 1.0418793217961813ms $qtype
	$ns duplex-link $n(713) $n(427) 10.0Mb 1.614729315351142ms $qtype
	$ns duplex-link $n(714) $n(224) 10.0Mb 0.13516550566028454ms $qtype
	$ns duplex-link $n(714) $n(651) 10.0Mb 1.032271746529251ms $qtype
	$ns duplex-link $n(715) $n(337) 10.0Mb 0.44777175000312613ms $qtype
	$ns duplex-link $n(715) $n(537) 10.0Mb 1.3581261932984896ms $qtype
	$ns duplex-link $n(716) $n(102) 10.0Mb 0.8344237685832497ms $qtype
	$ns duplex-link $n(716) $n(549) 10.0Mb 1.7255938340208257ms $qtype
	$ns duplex-link $n(717) $n(587) 10.0Mb 0.9426712543446856ms $qtype
	$ns duplex-link $n(717) $n(309) 10.0Mb 1.2742192096716494ms $qtype
	$ns duplex-link $n(718) $n(384) 10.0Mb 1.4173923032140443ms $qtype
	$ns duplex-link $n(718) $n(490) 10.0Mb 1.4441514872297931ms $qtype
	$ns duplex-link $n(719) $n(487) 10.0Mb 0.7597649959563925ms $qtype
	$ns duplex-link $n(719) $n(687) 10.0Mb 0.2207831491661196ms $qtype
	$ns duplex-link $n(720) $n(258) 10.0Mb 3.027110244794197ms $qtype
	$ns duplex-link $n(720) $n(35) 10.0Mb 3.496922815283701ms $qtype
	$ns duplex-link $n(721) $n(64) 10.0Mb 1.7931513501337666ms $qtype
	$ns duplex-link $n(721) $n(44) 10.0Mb 0.6593778400155043ms $qtype
	$ns duplex-link $n(722) $n(483) 10.0Mb 0.5003906160334207ms $qtype
	$ns duplex-link $n(722) $n(660) 10.0Mb 3.104972918753352ms $qtype
	$ns duplex-link $n(723) $n(108) 10.0Mb 1.3485976155340493ms $qtype
	$ns duplex-link $n(723) $n(485) 10.0Mb 0.7272003290986355ms $qtype
	$ns duplex-link $n(724) $n(205) 10.0Mb 1.2987128602855673ms $qtype
	$ns duplex-link $n(724) $n(447) 10.0Mb 0.37241351947409684ms $qtype
	$ns duplex-link $n(725) $n(627) 10.0Mb 2.295890433263455ms $qtype
	$ns duplex-link $n(725) $n(662) 10.0Mb 3.039142358925475ms $qtype
	$ns duplex-link $n(726) $n(701) 10.0Mb 0.35879466479506583ms $qtype
	$ns duplex-link $n(726) $n(500) 10.0Mb 0.6910897456633369ms $qtype
	$ns duplex-link $n(727) $n(130) 10.0Mb 0.7713124259801013ms $qtype
	$ns duplex-link $n(727) $n(228) 10.0Mb 2.0211479530944927ms $qtype
	$ns duplex-link $n(728) $n(2) 10.0Mb 1.9851211759050833ms $qtype
	$ns duplex-link $n(728) $n(402) 10.0Mb 1.6321649416362232ms $qtype
	$ns duplex-link $n(729) $n(685) 10.0Mb 1.231063925370861ms $qtype
	$ns duplex-link $n(729) $n(566) 10.0Mb 1.6931458500147434ms $qtype
	$ns duplex-link $n(730) $n(648) 10.0Mb 1.8426570934534574ms $qtype
	$ns duplex-link $n(730) $n(97) 10.0Mb 0.27997534971668026ms $qtype
	$ns duplex-link $n(731) $n(422) 10.0Mb 0.9330736390343665ms $qtype
	$ns duplex-link $n(731) $n(414) 10.0Mb 0.8504249152246494ms $qtype
	$ns duplex-link $n(732) $n(370) 10.0Mb 0.6407557028101937ms $qtype
	$ns duplex-link $n(732) $n(26) 10.0Mb 1.4265940104068833ms $qtype
	$ns duplex-link $n(733) $n(609) 10.0Mb 2.1675661202591656ms $qtype
	$ns duplex-link $n(733) $n(38) 10.0Mb 1.2424937932536466ms $qtype
	$ns duplex-link $n(734) $n(575) 10.0Mb 2.4617595198976447ms $qtype
	$ns duplex-link $n(734) $n(466) 10.0Mb 1.7981549051435515ms $qtype
	$ns duplex-link $n(735) $n(377) 10.0Mb 1.7701822579506452ms $qtype
	$ns duplex-link $n(735) $n(583) 10.0Mb 1.0038949353750553ms $qtype
	$ns duplex-link $n(736) $n(577) 10.0Mb 2.0845220708608956ms $qtype
	$ns duplex-link $n(736) $n(552) 10.0Mb 2.021673616067915ms $qtype
	$ns duplex-link $n(737) $n(5) 10.0Mb 2.6141914204561165ms $qtype
	$ns duplex-link $n(737) $n(266) 10.0Mb 2.6253210798346434ms $qtype
	$ns duplex-link $n(738) $n(334) 10.0Mb 1.8895309291905367ms $qtype
	$ns duplex-link $n(738) $n(131) 10.0Mb 3.046117837092575ms $qtype
	$ns duplex-link $n(739) $n(515) 10.0Mb 1.624974188418526ms $qtype
	$ns duplex-link $n(739) $n(455) 10.0Mb 0.04669897332774129ms $qtype
	$ns duplex-link $n(740) $n(238) 10.0Mb 1.5961242371271884ms $qtype
	$ns duplex-link $n(740) $n(396) 10.0Mb 0.5145543774359704ms $qtype
	$ns duplex-link $n(741) $n(287) 10.0Mb 0.362956976288855ms $qtype
	$ns duplex-link $n(741) $n(347) 10.0Mb 2.238515813087814ms $qtype
	$ns duplex-link $n(742) $n(332) 10.0Mb 0.7858603015883682ms $qtype
	$ns duplex-link $n(742) $n(251) 10.0Mb 2.528270618234313ms $qtype
	$ns duplex-link $n(743) $n(569) 10.0Mb 1.0108973459172035ms $qtype
	$ns duplex-link $n(743) $n(153) 10.0Mb 2.4271573124303853ms $qtype
	$ns duplex-link $n(744) $n(360) 10.0Mb 0.3761591519933267ms $qtype
	$ns duplex-link $n(744) $n(414) 10.0Mb 0.22576647020276563ms $qtype
	$ns duplex-link $n(745) $n(286) 10.0Mb 1.6800673482630457ms $qtype
	$ns duplex-link $n(745) $n(97) 10.0Mb 0.8543734951846156ms $qtype
	$ns duplex-link $n(746) $n(688) 10.0Mb 0.5423981944301965ms $qtype
	$ns duplex-link $n(746) $n(454) 10.0Mb 0.043491437034100765ms $qtype
	$ns duplex-link $n(747) $n(424) 10.0Mb 1.2542054336299633ms $qtype
	$ns duplex-link $n(747) $n(458) 10.0Mb 0.9346761174394151ms $qtype
	$ns duplex-link $n(748) $n(281) 10.0Mb 0.6472175006155707ms $qtype
	$ns duplex-link $n(748) $n(255) 10.0Mb 1.6819305914677942ms $qtype
	$ns duplex-link $n(749) $n(101) 10.0Mb 1.8619988796087383ms $qtype
	$ns duplex-link $n(749) $n(61) 10.0Mb 1.1304624489035202ms $qtype
	$ns duplex-link $n(750) $n(646) 10.0Mb 1.6177996168729816ms $qtype
	$ns duplex-link $n(750) $n(701) 10.0Mb 1.1825164738584009ms $qtype
	$ns duplex-link $n(751) $n(278) 10.0Mb 0.940893201749838ms $qtype
	$ns duplex-link $n(751) $n(193) 10.0Mb 0.538817018222393ms $qtype
	$ns duplex-link $n(752) $n(142) 10.0Mb 0.10388794705700993ms $qtype
	$ns duplex-link $n(752) $n(28) 10.0Mb 1.0554813445171285ms $qtype
	$ns duplex-link $n(753) $n(209) 10.0Mb 0.7088531338110977ms $qtype
	$ns duplex-link $n(753) $n(28) 10.0Mb 0.5738272018547987ms $qtype
	$ns duplex-link $n(754) $n(639) 10.0Mb 0.6244690477883369ms $qtype
	$ns duplex-link $n(754) $n(455) 10.0Mb 0.4663459873915935ms $qtype
	$ns duplex-link $n(755) $n(32) 10.0Mb 0.6914518993294038ms $qtype
	$ns duplex-link $n(755) $n(309) 10.0Mb 0.5520057466646918ms $qtype
	$ns duplex-link $n(756) $n(0) 10.0Mb 0.4503609427093052ms $qtype
	$ns duplex-link $n(756) $n(371) 10.0Mb 0.6104587482164855ms $qtype
	$ns duplex-link $n(757) $n(173) 10.0Mb 0.9309068138956555ms $qtype
	$ns duplex-link $n(757) $n(239) 10.0Mb 0.27687829250790735ms $qtype
	$ns duplex-link $n(758) $n(419) 10.0Mb 1.1361224421369565ms $qtype
	$ns duplex-link $n(758) $n(120) 10.0Mb 0.9731443069806843ms $qtype
	$ns duplex-link $n(759) $n(708) 10.0Mb 2.7869374972881418ms $qtype
	$ns duplex-link $n(759) $n(33) 10.0Mb 1.6013091725772535ms $qtype
	$ns duplex-link $n(760) $n(89) 10.0Mb 1.0550332298444631ms $qtype
	$ns duplex-link $n(760) $n(117) 10.0Mb 0.9340807215950697ms $qtype
	$ns duplex-link $n(761) $n(737) 10.0Mb 1.4373632561334664ms $qtype
	$ns duplex-link $n(761) $n(452) 10.0Mb 2.0695656270764067ms $qtype
	$ns duplex-link $n(762) $n(29) 10.0Mb 0.4291584366857483ms $qtype
	$ns duplex-link $n(762) $n(607) 10.0Mb 1.725690550193606ms $qtype
	$ns duplex-link $n(763) $n(517) 10.0Mb 0.6837331698488003ms $qtype
	$ns duplex-link $n(763) $n(572) 10.0Mb 0.6291022372701214ms $qtype
	$ns duplex-link $n(764) $n(443) 10.0Mb 0.7714566666265319ms $qtype
	$ns duplex-link $n(764) $n(205) 10.0Mb 1.8361483967392365ms $qtype
	$ns duplex-link $n(765) $n(753) 10.0Mb 2.6418887024476305ms $qtype
	$ns duplex-link $n(765) $n(691) 10.0Mb 2.3376632531871953ms $qtype
	$ns duplex-link $n(766) $n(737) 10.0Mb 0.2977888672658422ms $qtype
	$ns duplex-link $n(766) $n(683) 10.0Mb 1.2281864410556775ms $qtype
	$ns duplex-link $n(767) $n(297) 10.0Mb 0.8550504226841081ms $qtype
	$ns duplex-link $n(767) $n(573) 10.0Mb 2.460247204028832ms $qtype
	$ns duplex-link $n(768) $n(473) 10.0Mb 1.0167742748923088ms $qtype
	$ns duplex-link $n(768) $n(37) 10.0Mb 1.5566439601187327ms $qtype
	$ns duplex-link $n(769) $n(748) 10.0Mb 1.5377449501227285ms $qtype
	$ns duplex-link $n(769) $n(443) 10.0Mb 1.5769081638678617ms $qtype
	$ns duplex-link $n(770) $n(669) 10.0Mb 1.076673389380467ms $qtype
	$ns duplex-link $n(770) $n(495) 10.0Mb 0.5978618824672007ms $qtype
	$ns duplex-link $n(771) $n(17) 10.0Mb 0.8638022077363064ms $qtype
	$ns duplex-link $n(771) $n(51) 10.0Mb 1.361272579557268ms $qtype
	$ns duplex-link $n(772) $n(252) 10.0Mb 2.0016625219674467ms $qtype
	$ns duplex-link $n(772) $n(146) 10.0Mb 0.504476409082867ms $qtype
	$ns duplex-link $n(773) $n(556) 10.0Mb 0.3552888245628942ms $qtype
	$ns duplex-link $n(773) $n(429) 10.0Mb 1.372282849805662ms $qtype
	$ns duplex-link $n(774) $n(521) 10.0Mb 1.8865106597348194ms $qtype
	$ns duplex-link $n(774) $n(20) 10.0Mb 0.3061711404141765ms $qtype
	$ns duplex-link $n(775) $n(550) 10.0Mb 0.5629629134910333ms $qtype
	$ns duplex-link $n(775) $n(168) 10.0Mb 1.1949465245086452ms $qtype
	$ns duplex-link $n(776) $n(258) 10.0Mb 1.064341299381862ms $qtype
	$ns duplex-link $n(776) $n(39) 10.0Mb 1.324652698219182ms $qtype
	$ns duplex-link $n(777) $n(127) 10.0Mb 0.9492228481195656ms $qtype
	$ns duplex-link $n(777) $n(757) 10.0Mb 0.656977328181361ms $qtype
	$ns duplex-link $n(778) $n(131) 10.0Mb 1.4454529654255392ms $qtype
	$ns duplex-link $n(778) $n(538) 10.0Mb 0.8481715747665843ms $qtype
	$ns duplex-link $n(779) $n(223) 10.0Mb 1.21638893637689ms $qtype
	$ns duplex-link $n(779) $n(373) 10.0Mb 0.2670596723450341ms $qtype
	$ns duplex-link $n(780) $n(665) 10.0Mb 0.6887997607446038ms $qtype
	$ns duplex-link $n(780) $n(281) 10.0Mb 2.0526147863776085ms $qtype
	$ns duplex-link $n(781) $n(279) 10.0Mb 1.0815143879886047ms $qtype
	$ns duplex-link $n(781) $n(249) 10.0Mb 0.9018884761864947ms $qtype
	$ns duplex-link $n(782) $n(709) 10.0Mb 0.5039909535859552ms $qtype
	$ns duplex-link $n(782) $n(157) 10.0Mb 0.8816762226928095ms $qtype
	$ns duplex-link $n(783) $n(267) 10.0Mb 0.5315822934748085ms $qtype
	$ns duplex-link $n(783) $n(3) 10.0Mb 0.521524022651217ms $qtype
	$ns duplex-link $n(784) $n(552) 10.0Mb 0.3117887672726595ms $qtype
	$ns duplex-link $n(784) $n(489) 10.0Mb 1.9350656627466587ms $qtype
	$ns duplex-link $n(785) $n(95) 10.0Mb 0.9553278015832999ms $qtype
	$ns duplex-link $n(785) $n(646) 10.0Mb 0.32176402489369316ms $qtype
	$ns duplex-link $n(786) $n(279) 10.0Mb 0.28941371118127146ms $qtype
	$ns duplex-link $n(786) $n(294) 10.0Mb 1.4669919854647426ms $qtype
	$ns duplex-link $n(787) $n(155) 10.0Mb 0.7885951872345458ms $qtype
	$ns duplex-link $n(787) $n(640) 10.0Mb 0.626177195171858ms $qtype
	$ns duplex-link $n(788) $n(194) 10.0Mb 1.1888413408449878ms $qtype
	$ns duplex-link $n(788) $n(143) 10.0Mb 1.6241283407994564ms $qtype
	$ns duplex-link $n(789) $n(413) 10.0Mb 1.052525547580573ms $qtype
	$ns duplex-link $n(789) $n(181) 10.0Mb 0.592815755698628ms $qtype
	$ns duplex-link $n(790) $n(621) 10.0Mb 1.0966347674068853ms $qtype
	$ns duplex-link $n(790) $n(294) 10.0Mb 0.8496199014064502ms $qtype
	$ns duplex-link $n(791) $n(646) 10.0Mb 3.1336460514396727ms $qtype
	$ns duplex-link $n(791) $n(326) 10.0Mb 1.277881393074918ms $qtype
	$ns duplex-link $n(792) $n(394) 10.0Mb 1.0647384728713767ms $qtype
	$ns duplex-link $n(792) $n(578) 10.0Mb 0.9900506014244908ms $qtype
	$ns duplex-link $n(793) $n(702) 10.0Mb 0.8813732975504504ms $qtype
	$ns duplex-link $n(793) $n(89) 10.0Mb 1.3816360116428605ms $qtype
	$ns duplex-link $n(794) $n(772) 10.0Mb 1.3045810740389943ms $qtype
	$ns duplex-link $n(794) $n(761) 10.0Mb 0.6248431040422985ms $qtype
	$ns duplex-link $n(795) $n(679) 10.0Mb 0.6172738546994856ms $qtype
	$ns duplex-link $n(795) $n(359) 10.0Mb 0.6757863682460661ms $qtype
	$ns duplex-link $n(796) $n(370) 10.0Mb 0.33142240952236957ms $qtype
	$ns duplex-link $n(796) $n(432) 10.0Mb 0.6042760092835695ms $qtype
	$ns duplex-link $n(797) $n(539) 10.0Mb 0.29012407128753764ms $qtype
	$ns duplex-link $n(797) $n(147) 10.0Mb 3.0336806324404257ms $qtype
	$ns duplex-link $n(798) $n(357) 10.0Mb 0.43952053732678886ms $qtype
	$ns duplex-link $n(798) $n(749) 10.0Mb 0.02540348465291915ms $qtype
	$ns duplex-link $n(799) $n(513) 10.0Mb 0.30385473774705124ms $qtype
	$ns duplex-link $n(799) $n(497) 10.0Mb 1.8540943520178204ms $qtype
	$ns duplex-link $n(800) $n(241) 10.0Mb 0.8260544935877796ms $qtype
	$ns duplex-link $n(800) $n(755) 10.0Mb 0.7902864856898523ms $qtype
	$ns duplex-link $n(801) $n(575) 10.0Mb 0.9176650777512356ms $qtype
	$ns duplex-link $n(801) $n(628) 10.0Mb 1.731258710013393ms $qtype
	$ns duplex-link $n(802) $n(331) 10.0Mb 0.8682411335438143ms $qtype
	$ns duplex-link $n(802) $n(216) 10.0Mb 1.125970295509742ms $qtype
	$ns duplex-link $n(803) $n(648) 10.0Mb 1.49530872168381ms $qtype
	$ns duplex-link $n(803) $n(313) 10.0Mb 1.8627367160451442ms $qtype
	$ns duplex-link $n(804) $n(608) 10.0Mb 0.24368449579647375ms $qtype
	$ns duplex-link $n(804) $n(196) 10.0Mb 3.0205237231531994ms $qtype
	$ns duplex-link $n(805) $n(122) 10.0Mb 1.2747735719991338ms $qtype
	$ns duplex-link $n(805) $n(365) 10.0Mb 1.996045984870569ms $qtype
	$ns duplex-link $n(806) $n(115) 10.0Mb 0.9988782765009567ms $qtype
	$ns duplex-link $n(806) $n(154) 10.0Mb 1.1787845530471466ms $qtype
	$ns duplex-link $n(807) $n(194) 10.0Mb 0.6046717579974936ms $qtype
	$ns duplex-link $n(807) $n(578) 10.0Mb 0.359538153069058ms $qtype
	$ns duplex-link $n(808) $n(570) 10.0Mb 0.4423467405300838ms $qtype
	$ns duplex-link $n(808) $n(198) 10.0Mb 1.699442776470681ms $qtype
	$ns duplex-link $n(809) $n(720) 10.0Mb 0.25534543913048857ms $qtype
	$ns duplex-link $n(809) $n(198) 10.0Mb 2.356351165620483ms $qtype
	$ns duplex-link $n(810) $n(445) 10.0Mb 0.8982726872448499ms $qtype
	$ns duplex-link $n(810) $n(574) 10.0Mb 0.20897730666295927ms $qtype
	$ns duplex-link $n(811) $n(663) 10.0Mb 0.6803154002494899ms $qtype
	$ns duplex-link $n(811) $n(295) 10.0Mb 0.28272385825552815ms $qtype
	$ns duplex-link $n(812) $n(296) 10.0Mb 1.0061091598310297ms $qtype
	$ns duplex-link $n(812) $n(232) 10.0Mb 1.56077345560548ms $qtype
	$ns duplex-link $n(813) $n(593) 10.0Mb 0.9140995236270207ms $qtype
	$ns duplex-link $n(813) $n(137) 10.0Mb 0.6330076339876081ms $qtype
	$ns duplex-link $n(814) $n(788) 10.0Mb 1.4200979637324964ms $qtype
	$ns duplex-link $n(814) $n(808) 10.0Mb 0.3441534519177567ms $qtype
	$ns duplex-link $n(815) $n(651) 10.0Mb 1.8028545338557935ms $qtype
	$ns duplex-link $n(815) $n(153) 10.0Mb 2.3092755778936445ms $qtype
	$ns duplex-link $n(816) $n(376) 10.0Mb 0.8375714061152078ms $qtype
	$ns duplex-link $n(816) $n(147) 10.0Mb 0.3756115375059701ms $qtype
	$ns duplex-link $n(817) $n(595) 10.0Mb 0.6674116596528004ms $qtype
	$ns duplex-link $n(817) $n(350) 10.0Mb 1.1925791102272996ms $qtype
	$ns duplex-link $n(818) $n(128) 10.0Mb 0.4800774235588948ms $qtype
	$ns duplex-link $n(818) $n(749) 10.0Mb 1.396407033330772ms $qtype
	$ns duplex-link $n(819) $n(294) 10.0Mb 0.7348107369940234ms $qtype
	$ns duplex-link $n(819) $n(487) 10.0Mb 0.5363747989920705ms $qtype
	$ns duplex-link $n(820) $n(36) 10.0Mb 0.05347439241410602ms $qtype
	$ns duplex-link $n(820) $n(260) 10.0Mb 0.3566796986221261ms $qtype
	$ns duplex-link $n(821) $n(664) 10.0Mb 1.3534853840324543ms $qtype
	$ns duplex-link $n(821) $n(640) 10.0Mb 0.2725445243297681ms $qtype
	$ns duplex-link $n(822) $n(312) 10.0Mb 1.366005042635173ms $qtype
	$ns duplex-link $n(822) $n(224) 10.0Mb 0.4376813454452354ms $qtype
	$ns duplex-link $n(823) $n(180) 10.0Mb 1.1535773028023255ms $qtype
	$ns duplex-link $n(823) $n(733) 10.0Mb 1.383889052266218ms $qtype
	$ns duplex-link $n(824) $n(288) 10.0Mb 1.1194293750078153ms $qtype
	$ns duplex-link $n(824) $n(175) 10.0Mb 0.47098730521682847ms $qtype
	$ns duplex-link $n(825) $n(304) 10.0Mb 0.24386706521395202ms $qtype
	$ns duplex-link $n(825) $n(104) 10.0Mb 1.558890306412452ms $qtype
	$ns duplex-link $n(826) $n(66) 10.0Mb 0.97812232220631ms $qtype
	$ns duplex-link $n(826) $n(307) 10.0Mb 0.8196247460536396ms $qtype
	$ns duplex-link $n(827) $n(695) 10.0Mb 1.9981046162881846ms $qtype
	$ns duplex-link $n(827) $n(240) 10.0Mb 0.4800774235588948ms $qtype
	$ns duplex-link $n(828) $n(109) 10.0Mb 0.9967261319184698ms $qtype
	$ns duplex-link $n(828) $n(736) 10.0Mb 0.06704555336826312ms $qtype
	$ns duplex-link $n(829) $n(77) 10.0Mb 1.952774924206516ms $qtype
	$ns duplex-link $n(829) $n(308) 10.0Mb 1.4090941338423075ms $qtype
	$ns duplex-link $n(830) $n(708) 10.0Mb 3.018978043669906ms $qtype
	$ns duplex-link $n(830) $n(342) 10.0Mb 1.5549239762137932ms $qtype
	$ns duplex-link $n(831) $n(31) 10.0Mb 1.616165372908389ms $qtype
	$ns duplex-link $n(831) $n(20) 10.0Mb 1.7268507217560243ms $qtype
	$ns duplex-link $n(832) $n(148) 10.0Mb 2.800707118776756ms $qtype
	$ns duplex-link $n(832) $n(701) 10.0Mb 2.431062175827678ms $qtype
	$ns duplex-link $n(833) $n(420) 10.0Mb 1.1319231065083102ms $qtype
	$ns duplex-link $n(833) $n(86) 10.0Mb 1.7701916861924663ms $qtype
	$ns duplex-link $n(834) $n(455) 10.0Mb 0.16880452581472205ms $qtype
	$ns duplex-link $n(834) $n(84) 10.0Mb 1.1547726900475699ms $qtype
	$ns duplex-link $n(835) $n(267) 10.0Mb 0.3044948754428357ms $qtype
	$ns duplex-link $n(835) $n(474) 10.0Mb 0.6210834468356318ms $qtype
	$ns duplex-link $n(836) $n(226) 10.0Mb 0.3841204549789952ms $qtype
	$ns duplex-link $n(836) $n(400) 10.0Mb 1.3451569252905764ms $qtype
	$ns duplex-link $n(837) $n(774) 10.0Mb 1.3589329187027122ms $qtype
	$ns duplex-link $n(837) $n(299) 10.0Mb 0.6408685631165506ms $qtype
	$ns duplex-link $n(838) $n(674) 10.0Mb 0.2215126801606729ms $qtype
	$ns duplex-link $n(838) $n(354) 10.0Mb 0.9777070331430298ms $qtype
	$ns duplex-link $n(839) $n(381) 10.0Mb 0.8313712857806118ms $qtype
	$ns duplex-link $n(839) $n(708) 10.0Mb 2.7386587294424394ms $qtype
	$ns duplex-link $n(840) $n(90) 10.0Mb 0.7411205706029679ms $qtype
	$ns duplex-link $n(840) $n(436) 10.0Mb 1.1077542569633458ms $qtype
	$ns duplex-link $n(841) $n(461) 10.0Mb 2.101519982058421ms $qtype
	$ns duplex-link $n(841) $n(186) 10.0Mb 0.9660237341873599ms $qtype
	$ns duplex-link $n(842) $n(183) 10.0Mb 0.27868077420687376ms $qtype
	$ns duplex-link $n(842) $n(746) 10.0Mb 0.5640784843704404ms $qtype
	$ns duplex-link $n(843) $n(327) 10.0Mb 1.2008770701662574ms $qtype
	$ns duplex-link $n(843) $n(565) 10.0Mb 1.927625318414681ms $qtype
	$ns duplex-link $n(844) $n(357) 10.0Mb 2.077057311279874ms $qtype
	$ns duplex-link $n(844) $n(717) 10.0Mb 1.404055239766114ms $qtype
	$ns duplex-link $n(845) $n(256) 10.0Mb 1.4738136130218211ms $qtype
	$ns duplex-link $n(845) $n(498) 10.0Mb 1.138998062270888ms $qtype
	$ns duplex-link $n(846) $n(215) 10.0Mb 1.2106492744962556ms $qtype
	$ns duplex-link $n(846) $n(542) 10.0Mb 0.6576036578257449ms $qtype
	$ns duplex-link $n(847) $n(744) 10.0Mb 0.6048833312570878ms $qtype
	$ns duplex-link $n(847) $n(300) 10.0Mb 1.6986569372194755ms $qtype
	$ns duplex-link $n(848) $n(714) 10.0Mb 1.1920378601728703ms $qtype
	$ns duplex-link $n(848) $n(127) 10.0Mb 1.5413585021624556ms $qtype
	$ns duplex-link $n(849) $n(666) 10.0Mb 1.665483890568045ms $qtype
	$ns duplex-link $n(849) $n(268) 10.0Mb 0.32552848007286034ms $qtype
	$ns duplex-link $n(850) $n(556) 10.0Mb 0.2741929325995529ms $qtype
	$ns duplex-link $n(850) $n(451) 10.0Mb 1.3213728090369277ms $qtype
	$ns duplex-link $n(851) $n(402) 10.0Mb 0.9299501363340268ms $qtype
	$ns duplex-link $n(851) $n(180) 10.0Mb 0.6394694274168436ms $qtype
	$ns duplex-link $n(852) $n(353) 10.0Mb 0.5569621491876705ms $qtype
	$ns duplex-link $n(852) $n(304) 10.0Mb 1.6701837710358303ms $qtype
	$ns duplex-link $n(853) $n(619) 10.0Mb 1.4647262421978886ms $qtype
	$ns duplex-link $n(853) $n(264) 10.0Mb 1.4534708579563764ms $qtype
	$ns duplex-link $n(854) $n(167) 10.0Mb 1.1585051273579576ms $qtype
	$ns duplex-link $n(854) $n(2) 10.0Mb 1.7161734927964865ms $qtype
	$ns duplex-link $n(855) $n(725) 10.0Mb 1.6004994818960248ms $qtype
	$ns duplex-link $n(855) $n(232) 10.0Mb 0.12305757702348014ms $qtype
	$ns duplex-link $n(856) $n(774) 10.0Mb 0.9074476183145351ms $qtype
	$ns duplex-link $n(856) $n(157) 10.0Mb 0.1808028170324105ms $qtype
	$ns duplex-link $n(857) $n(849) 10.0Mb 2.7599380276096555ms $qtype
	$ns duplex-link $n(857) $n(417) 10.0Mb 0.8487289159617888ms $qtype
	$ns duplex-link $n(858) $n(350) 10.0Mb 1.0184417061146618ms $qtype
	$ns duplex-link $n(858) $n(215) 10.0Mb 1.3455042845358323ms $qtype
	$ns duplex-link $n(859) $n(230) 10.0Mb 0.4105142841484094ms $qtype
	$ns duplex-link $n(859) $n(794) 10.0Mb 0.505842004375527ms $qtype
	$ns duplex-link $n(860) $n(355) 10.0Mb 0.563723320884877ms $qtype
	$ns duplex-link $n(860) $n(690) 10.0Mb 2.4939041766539227ms $qtype
	$ns duplex-link $n(861) $n(104) 10.0Mb 0.030020768567833686ms $qtype
	$ns duplex-link $n(861) $n(215) 10.0Mb 0.3438299993538914ms $qtype
	$ns duplex-link $n(862) $n(377) 10.0Mb 0.3373617853784341ms $qtype
	$ns duplex-link $n(862) $n(307) 10.0Mb 0.34512199075187866ms $qtype
	$ns duplex-link $n(863) $n(377) 10.0Mb 2.4615583834751504ms $qtype
	$ns duplex-link $n(863) $n(703) 10.0Mb 0.6343859434717906ms $qtype
	$ns duplex-link $n(864) $n(744) 10.0Mb 1.8831133442116346ms $qtype
	$ns duplex-link $n(864) $n(298) 10.0Mb 0.47037268590582726ms $qtype
	$ns duplex-link $n(865) $n(193) 10.0Mb 0.5225896633673122ms $qtype
	$ns duplex-link $n(865) $n(515) 10.0Mb 1.4413713300755906ms $qtype
	$ns duplex-link $n(866) $n(706) 10.0Mb 1.7533196266995876ms $qtype
	$ns duplex-link $n(866) $n(195) 10.0Mb 0.9626373144566213ms $qtype
	$ns duplex-link $n(867) $n(155) 10.0Mb 0.5660770408199242ms $qtype
	$ns duplex-link $n(867) $n(215) 10.0Mb 1.3181354058030796ms $qtype
	$ns duplex-link $n(868) $n(430) 10.0Mb 1.0167140869372344ms $qtype
	$ns duplex-link $n(868) $n(432) 10.0Mb 1.8568018462373805ms $qtype
	$ns duplex-link $n(869) $n(360) 10.0Mb 1.220083351043516ms $qtype
	$ns duplex-link $n(869) $n(295) 10.0Mb 0.24925966205953595ms $qtype
	$ns duplex-link $n(870) $n(687) 10.0Mb 0.7972251658213932ms $qtype
	$ns duplex-link $n(870) $n(411) 10.0Mb 1.027750980400107ms $qtype
	$ns duplex-link $n(871) $n(456) 10.0Mb 0.4226139929033666ms $qtype
	$ns duplex-link $n(871) $n(317) 10.0Mb 0.16561045824983908ms $qtype
	$ns duplex-link $n(872) $n(454) 10.0Mb 1.5157249383514915ms $qtype
	$ns duplex-link $n(872) $n(198) 10.0Mb 0.4400644751126047ms $qtype
	$ns duplex-link $n(873) $n(756) 10.0Mb 2.5073305472583214ms $qtype
	$ns duplex-link $n(873) $n(43) 10.0Mb 0.8069562846309458ms $qtype
	$ns duplex-link $n(874) $n(560) 10.0Mb 2.1481242852703772ms $qtype
	$ns duplex-link $n(874) $n(512) 10.0Mb 1.7564422325889657ms $qtype
	$ns duplex-link $n(875) $n(836) 10.0Mb 0.8375714061152078ms $qtype
	$ns duplex-link $n(875) $n(436) 10.0Mb 2.3489094743001484ms $qtype
	$ns duplex-link $n(876) $n(210) 10.0Mb 1.8387491941071161ms $qtype
	$ns duplex-link $n(876) $n(156) 10.0Mb 1.7486204902839693ms $qtype
	$ns duplex-link $n(877) $n(272) 10.0Mb 1.012327187290841ms $qtype
	$ns duplex-link $n(877) $n(374) 10.0Mb 0.41679497747891764ms $qtype
	$ns duplex-link $n(878) $n(137) 10.0Mb 1.0133598157779724ms $qtype
	$ns duplex-link $n(878) $n(642) 10.0Mb 0.9999136664581504ms $qtype
	$ns duplex-link $n(879) $n(43) 10.0Mb 1.7606181576826982ms $qtype
	$ns duplex-link $n(879) $n(594) 10.0Mb 0.5689199427916002ms $qtype
	$ns duplex-link $n(880) $n(117) 10.0Mb 0.8679078798745288ms $qtype
	$ns duplex-link $n(880) $n(449) 10.0Mb 0.9544888644700175ms $qtype
	$ns duplex-link $n(881) $n(98) 10.0Mb 1.572400058050707ms $qtype
	$ns duplex-link $n(881) $n(244) 10.0Mb 1.9409016705595203ms $qtype
	$ns duplex-link $n(882) $n(52) 10.0Mb 1.906624473680305ms $qtype
	$ns duplex-link $n(882) $n(28) 10.0Mb 0.951032125674746ms $qtype
	$ns duplex-link $n(883) $n(304) 10.0Mb 0.6450995070259893ms $qtype
	$ns duplex-link $n(883) $n(463) 10.0Mb 1.705439204142722ms $qtype
	$ns duplex-link $n(884) $n(39) 10.0Mb 1.3789597790712371ms $qtype
	$ns duplex-link $n(884) $n(716) 10.0Mb 1.8233633757402872ms $qtype
	$ns duplex-link $n(885) $n(368) 10.0Mb 2.3554467444640568ms $qtype
	$ns duplex-link $n(885) $n(27) 10.0Mb 1.3742881203183759ms $qtype
	$ns duplex-link $n(886) $n(765) 10.0Mb 0.08575906290599507ms $qtype
	$ns duplex-link $n(886) $n(55) 10.0Mb 1.3575566924977873ms $qtype
	$ns duplex-link $n(887) $n(318) 10.0Mb 0.2745173733964967ms $qtype
	$ns duplex-link $n(887) $n(837) 10.0Mb 1.16184257733344ms $qtype
	$ns duplex-link $n(888) $n(265) 10.0Mb 2.1481760809997814ms $qtype
	$ns duplex-link $n(888) $n(742) 10.0Mb 0.7890324533022971ms $qtype
	$ns duplex-link $n(889) $n(462) 10.0Mb 0.15365687159856464ms $qtype
	$ns duplex-link $n(889) $n(550) 10.0Mb 0.554740256789887ms $qtype
	$ns duplex-link $n(890) $n(235) 10.0Mb 0.3608047346672066ms $qtype
	$ns duplex-link $n(890) $n(810) 10.0Mb 1.879194841921725ms $qtype
	$ns duplex-link $n(891) $n(875) 10.0Mb 0.4747872169261332ms $qtype
	$ns duplex-link $n(891) $n(168) 10.0Mb 1.4593648362535505ms $qtype
	$ns duplex-link $n(892) $n(683) 10.0Mb 1.4363759509403045ms $qtype
	$ns duplex-link $n(892) $n(757) 10.0Mb 1.4926573969751291ms $qtype
	$ns duplex-link $n(893) $n(331) 10.0Mb 2.2268320287610024ms $qtype
	$ns duplex-link $n(893) $n(385) 10.0Mb 0.5680587727134142ms $qtype
	$ns duplex-link $n(894) $n(463) 10.0Mb 2.1881423280286163ms $qtype
	$ns duplex-link $n(894) $n(568) 10.0Mb 1.4927021212389613ms $qtype
	$ns duplex-link $n(895) $n(289) 10.0Mb 2.612556531513888ms $qtype
	$ns duplex-link $n(895) $n(894) 10.0Mb 2.2261124077984937ms $qtype
	$ns duplex-link $n(896) $n(92) 10.0Mb 0.7749749978267829ms $qtype
	$ns duplex-link $n(896) $n(782) 10.0Mb 1.2459634788824314ms $qtype
	$ns duplex-link $n(897) $n(482) 10.0Mb 1.2527496867144163ms $qtype
	$ns duplex-link $n(897) $n(203) 10.0Mb 0.33122091649967816ms $qtype
	$ns duplex-link $n(898) $n(15) 10.0Mb 0.7136712756298269ms $qtype
	$ns duplex-link $n(898) $n(515) 10.0Mb 0.5141866454114311ms $qtype
	$ns duplex-link $n(899) $n(242) 10.0Mb 0.8071561892357859ms $qtype
	$ns duplex-link $n(899) $n(84) 10.0Mb 0.947398371181782ms $qtype
	$ns duplex-link $n(900) $n(740) 10.0Mb 0.05014567904297615ms $qtype
	$ns duplex-link $n(900) $n(807) 10.0Mb 1.0067061654506932ms $qtype
	$ns duplex-link $n(901) $n(632) 10.0Mb 0.6134859476472929ms $qtype
	$ns duplex-link $n(901) $n(489) 10.0Mb 2.4524221181303663ms $qtype
	$ns duplex-link $n(902) $n(477) 10.0Mb 0.8073973874996466ms $qtype
	$ns duplex-link $n(902) $n(377) 10.0Mb 2.605827391556629ms $qtype
	$ns duplex-link $n(903) $n(405) 10.0Mb 2.3748381495645936ms $qtype
	$ns duplex-link $n(903) $n(412) 10.0Mb 0.9613650550446164ms $qtype
	$ns duplex-link $n(904) $n(479) 10.0Mb 0.38533511386889646ms $qtype
	$ns duplex-link $n(904) $n(364) 10.0Mb 1.7826496641501774ms $qtype
	$ns duplex-link $n(905) $n(715) 10.0Mb 0.8414282403556695ms $qtype
	$ns duplex-link $n(905) $n(624) 10.0Mb 0.8001228588486464ms $qtype
	$ns duplex-link $n(906) $n(879) 10.0Mb 2.028982954067556ms $qtype
	$ns duplex-link $n(906) $n(129) 10.0Mb 1.2255019566125442ms $qtype
	$ns duplex-link $n(907) $n(243) 10.0Mb 1.6797361830488646ms $qtype
	$ns duplex-link $n(907) $n(192) 10.0Mb 1.7013273097265105ms $qtype
	$ns duplex-link $n(908) $n(735) 10.0Mb 2.8182849945743027ms $qtype
	$ns duplex-link $n(908) $n(722) 10.0Mb 1.8071325499316353ms $qtype
	$ns duplex-link $n(909) $n(660) 10.0Mb 2.386438389192121ms $qtype
	$ns duplex-link $n(909) $n(584) 10.0Mb 0.8020673347101733ms $qtype
	$ns duplex-link $n(910) $n(442) 10.0Mb 1.960485902558327ms $qtype
	$ns duplex-link $n(910) $n(606) 10.0Mb 2.659913801128689ms $qtype
	$ns duplex-link $n(911) $n(736) 10.0Mb 0.8535722053259645ms $qtype
	$ns duplex-link $n(911) $n(685) 10.0Mb 0.3987870014327745ms $qtype
	$ns duplex-link $n(912) $n(856) 10.0Mb 0.9573754418592996ms $qtype
	$ns duplex-link $n(912) $n(548) 10.0Mb 0.5126262676051078ms $qtype
	$ns duplex-link $n(913) $n(488) 10.0Mb 1.1443387743457727ms $qtype
	$ns duplex-link $n(913) $n(768) 10.0Mb 0.683537864011962ms $qtype
	$ns duplex-link $n(914) $n(263) 10.0Mb 2.070637911007093ms $qtype
	$ns duplex-link $n(914) $n(555) 10.0Mb 2.1581803180341477ms $qtype
	$ns duplex-link $n(915) $n(186) 10.0Mb 0.9443104685026064ms $qtype
	$ns duplex-link $n(915) $n(908) 10.0Mb 2.3044161507910292ms $qtype
	$ns duplex-link $n(916) $n(157) 10.0Mb 0.32133148803342604ms $qtype
	$ns duplex-link $n(916) $n(213) 10.0Mb 1.5464320693058988ms $qtype
	$ns duplex-link $n(917) $n(836) 10.0Mb 0.7671974189557497ms $qtype
	$ns duplex-link $n(917) $n(79) 10.0Mb 0.41179970257776044ms $qtype
	$ns duplex-link $n(918) $n(279) 10.0Mb 1.502275811792161ms $qtype
	$ns duplex-link $n(918) $n(703) 10.0Mb 1.9868355496542311ms $qtype
	$ns duplex-link $n(919) $n(13) 10.0Mb 1.0260444581190489ms $qtype
	$ns duplex-link $n(919) $n(387) 10.0Mb 0.924026731222872ms $qtype
	$ns duplex-link $n(920) $n(413) 10.0Mb 1.8705125268933878ms $qtype
	$ns duplex-link $n(920) $n(488) 10.0Mb 2.757947798670712ms $qtype
	$ns duplex-link $n(921) $n(45) 10.0Mb 0.623800532304704ms $qtype
	$ns duplex-link $n(921) $n(835) 10.0Mb 0.7547472750515706ms $qtype
	$ns duplex-link $n(922) $n(349) 10.0Mb 2.124240289686572ms $qtype
	$ns duplex-link $n(922) $n(819) 10.0Mb 3.0250420031806797ms $qtype
	$ns duplex-link $n(923) $n(537) 10.0Mb 2.8289539252483387ms $qtype
	$ns duplex-link $n(923) $n(120) 10.0Mb 1.1579047100450925ms $qtype
	$ns duplex-link $n(924) $n(529) 10.0Mb 0.35382959783934576ms $qtype
	$ns duplex-link $n(924) $n(919) 10.0Mb 0.39267167553556803ms $qtype
	$ns duplex-link $n(925) $n(745) 10.0Mb 2.3320901784645134ms $qtype
	$ns duplex-link $n(925) $n(115) 10.0Mb 0.4401276800644729ms $qtype
	$ns duplex-link $n(926) $n(293) 10.0Mb 0.9630706551059981ms $qtype
	$ns duplex-link $n(926) $n(495) 10.0Mb 1.8226767506513306ms $qtype
	$ns duplex-link $n(927) $n(105) 10.0Mb 1.5183469750493186ms $qtype
	$ns duplex-link $n(927) $n(909) 10.0Mb 0.3417363748321033ms $qtype
	$ns duplex-link $n(928) $n(76) 10.0Mb 0.5676864999587096ms $qtype
	$ns duplex-link $n(928) $n(338) 10.0Mb 0.32494690384659525ms $qtype
	$ns duplex-link $n(929) $n(411) 10.0Mb 1.0932203824979083ms $qtype
	$ns duplex-link $n(929) $n(255) 10.0Mb 0.9246406345557178ms $qtype
	$ns duplex-link $n(930) $n(721) 10.0Mb 1.6769352258420462ms $qtype
	$ns duplex-link $n(930) $n(586) 10.0Mb 0.6805443305416031ms $qtype
	$ns duplex-link $n(931) $n(538) 10.0Mb 0.4349143703410076ms $qtype
	$ns duplex-link $n(931) $n(922) 10.0Mb 2.7810525111259428ms $qtype
	$ns duplex-link $n(932) $n(279) 10.0Mb 1.5269586433373366ms $qtype
	$ns duplex-link $n(932) $n(656) 10.0Mb 3.1208571199549904ms $qtype
	$ns duplex-link $n(933) $n(213) 10.0Mb 1.1688363862517268ms $qtype
	$ns duplex-link $n(933) $n(166) 10.0Mb 2.0089532835091437ms $qtype
	$ns duplex-link $n(934) $n(424) 10.0Mb 1.0794393876918102ms $qtype
	$ns duplex-link $n(934) $n(476) 10.0Mb 0.42657096732783956ms $qtype
	$ns duplex-link $n(935) $n(79) 10.0Mb 0.6112601862737059ms $qtype
	$ns duplex-link $n(935) $n(332) 10.0Mb 0.8043045872616507ms $qtype
	$ns duplex-link $n(936) $n(535) 10.0Mb 0.45965325969041226ms $qtype
	$ns duplex-link $n(936) $n(539) 10.0Mb 0.710248746858162ms $qtype
	$ns duplex-link $n(937) $n(28) 10.0Mb 1.3069286440160346ms $qtype
	$ns duplex-link $n(937) $n(168) 10.0Mb 1.9621339074985709ms $qtype
	$ns duplex-link $n(938) $n(523) 10.0Mb 1.1557358114170422ms $qtype
	$ns duplex-link $n(938) $n(339) 10.0Mb 0.8491679741530701ms $qtype
	$ns duplex-link $n(939) $n(107) 10.0Mb 0.2688659036430681ms $qtype
	$ns duplex-link $n(939) $n(103) 10.0Mb 0.13216885366848657ms $qtype
	$ns duplex-link $n(940) $n(41) 10.0Mb 0.9093522538923237ms $qtype
	$ns duplex-link $n(940) $n(566) 10.0Mb 1.0061755112815194ms $qtype
	$ns duplex-link $n(941) $n(897) 10.0Mb 0.8164147328894306ms $qtype
	$ns duplex-link $n(941) $n(578) 10.0Mb 0.8370332214413015ms $qtype
	$ns duplex-link $n(942) $n(519) 10.0Mb 0.21720120252124164ms $qtype
	$ns duplex-link $n(942) $n(21) 10.0Mb 1.8893542659686726ms $qtype
	$ns duplex-link $n(943) $n(844) 10.0Mb 1.380991610611268ms $qtype
	$ns duplex-link $n(943) $n(438) 10.0Mb 0.8043530037204175ms $qtype
	$ns duplex-link $n(944) $n(758) 10.0Mb 1.292964310884319ms $qtype
	$ns duplex-link $n(944) $n(707) 10.0Mb 0.5192469177404069ms $qtype
	$ns duplex-link $n(945) $n(210) 10.0Mb 1.6449310133905286ms $qtype
	$ns duplex-link $n(945) $n(177) 10.0Mb 0.8032248346525962ms $qtype
	$ns duplex-link $n(946) $n(319) 10.0Mb 1.1219114830995607ms $qtype
	$ns duplex-link $n(946) $n(930) 10.0Mb 0.5216946714422869ms $qtype
	$ns duplex-link $n(947) $n(18) 10.0Mb 1.1597146236276976ms $qtype
	$ns duplex-link $n(947) $n(714) 10.0Mb 1.1482068852858933ms $qtype
	$ns duplex-link $n(948) $n(829) 10.0Mb 2.2447079240611094ms $qtype
	$ns duplex-link $n(948) $n(328) 10.0Mb 0.788827955797705ms $qtype
	$ns duplex-link $n(949) $n(218) 10.0Mb 2.236964485434318ms $qtype
	$ns duplex-link $n(949) $n(521) 10.0Mb 0.6958629925456122ms $qtype
	$ns duplex-link $n(950) $n(459) 10.0Mb 1.9289495669795487ms $qtype
	$ns duplex-link $n(950) $n(497) 10.0Mb 0.036080473466720664ms $qtype
	$ns duplex-link $n(951) $n(918) 10.0Mb 0.9590533328951443ms $qtype
	$ns duplex-link $n(951) $n(173) 10.0Mb 0.6961507440308556ms $qtype
	$ns duplex-link $n(952) $n(498) 10.0Mb 0.7567274792476849ms $qtype
	$ns duplex-link $n(952) $n(847) 10.0Mb 1.5201925183751976ms $qtype
	$ns duplex-link $n(953) $n(297) 10.0Mb 1.7476785101599863ms $qtype
	$ns duplex-link $n(953) $n(908) 10.0Mb 0.5012348577831625ms $qtype
	$ns duplex-link $n(954) $n(794) 10.0Mb 0.6517401977774805ms $qtype
	$ns duplex-link $n(954) $n(90) 10.0Mb 0.8957484774879306ms $qtype
	$ns duplex-link $n(955) $n(429) 10.0Mb 0.9011170905647783ms $qtype
	$ns duplex-link $n(955) $n(323) 10.0Mb 0.49655135929879585ms $qtype
	$ns duplex-link $n(956) $n(94) 10.0Mb 0.27070118708954954ms $qtype
	$ns duplex-link $n(956) $n(655) 10.0Mb 0.35801855602381405ms $qtype
	$ns duplex-link $n(957) $n(919) 10.0Mb 0.8745551869560995ms $qtype
	$ns duplex-link $n(957) $n(607) 10.0Mb 2.5166410712636815ms $qtype
	$ns duplex-link $n(958) $n(791) 10.0Mb 1.244949507040976ms $qtype
	$ns duplex-link $n(958) $n(441) 10.0Mb 1.2109525237907992ms $qtype
	$ns duplex-link $n(959) $n(204) 10.0Mb 0.9737558101335744ms $qtype
	$ns duplex-link $n(959) $n(399) 10.0Mb 0.5084637322608356ms $qtype
	$ns duplex-link $n(960) $n(762) 10.0Mb 1.1817070080396808ms $qtype
	$ns duplex-link $n(960) $n(108) 10.0Mb 1.4407690922130558ms $qtype
	$ns duplex-link $n(961) $n(236) 10.0Mb 1.5404197940959956ms $qtype
	$ns duplex-link $n(961) $n(869) 10.0Mb 1.0728221991471765ms $qtype
	$ns duplex-link $n(962) $n(287) 10.0Mb 0.711938625539214ms $qtype
	$ns duplex-link $n(962) $n(480) 10.0Mb 0.8867348352876026ms $qtype
	$ns duplex-link $n(963) $n(625) 10.0Mb 0.41909776645625807ms $qtype
	$ns duplex-link $n(963) $n(879) 10.0Mb 0.8406146109241098ms $qtype
	$ns duplex-link $n(964) $n(414) 10.0Mb 0.18503038189651405ms $qtype
	$ns duplex-link $n(964) $n(106) 10.0Mb 0.16936386404738846ms $qtype
	$ns duplex-link $n(965) $n(426) 10.0Mb 1.1533506179884514ms $qtype
	$ns duplex-link $n(965) $n(546) 10.0Mb 0.3674810706733446ms $qtype
	$ns duplex-link $n(966) $n(192) 10.0Mb 1.0968376694424633ms $qtype
	$ns duplex-link $n(966) $n(350) 10.0Mb 1.125970295509742ms $qtype
	$ns duplex-link $n(967) $n(367) 10.0Mb 1.1415545857078226ms $qtype
	$ns duplex-link $n(967) $n(200) 10.0Mb 0.9754682608558081ms $qtype
	$ns duplex-link $n(968) $n(878) 10.0Mb 1.0593535637530276ms $qtype
	$ns duplex-link $n(968) $n(615) 10.0Mb 2.5051995993686016ms $qtype
	$ns duplex-link $n(969) $n(877) 10.0Mb 0.5264081082773647ms $qtype
	$ns duplex-link $n(969) $n(640) 10.0Mb 1.3779104405404783ms $qtype
	$ns duplex-link $n(970) $n(659) 10.0Mb 0.7549167892626731ms $qtype
	$ns duplex-link $n(970) $n(616) 10.0Mb 1.1552158256063108ms $qtype
	$ns duplex-link $n(971) $n(262) 10.0Mb 0.8230115276372266ms $qtype
	$ns duplex-link $n(971) $n(354) 10.0Mb 0.7013576760692826ms $qtype
	$ns duplex-link $n(972) $n(99) 10.0Mb 1.6007775334487568ms $qtype
	$ns duplex-link $n(972) $n(389) 10.0Mb 1.9776047231502627ms $qtype
	$ns duplex-link $n(973) $n(655) 10.0Mb 0.49069081113263474ms $qtype
	$ns duplex-link $n(973) $n(520) 10.0Mb 0.3409051163517503ms $qtype
	$ns duplex-link $n(974) $n(212) 10.0Mb 0.3705415184793959ms $qtype
	$ns duplex-link $n(974) $n(306) 10.0Mb 1.5725061963549405ms $qtype
	$ns duplex-link $n(975) $n(633) 10.0Mb 1.373105567494553ms $qtype
	$ns duplex-link $n(975) $n(940) 10.0Mb 1.374105943922444ms $qtype
	$ns duplex-link $n(976) $n(637) 10.0Mb 0.8914652559333409ms $qtype
	$ns duplex-link $n(976) $n(134) 10.0Mb 1.782200215748506ms $qtype
	$ns duplex-link $n(977) $n(751) 10.0Mb 0.7339092352838982ms $qtype
	$ns duplex-link $n(977) $n(614) 10.0Mb 0.3860418999381047ms $qtype
	$ns duplex-link $n(978) $n(87) 10.0Mb 0.6404517492865223ms $qtype
	$ns duplex-link $n(978) $n(212) 10.0Mb 1.3360064445657494ms $qtype
	$ns duplex-link $n(979) $n(332) 10.0Mb 2.0171776721425223ms $qtype
	$ns duplex-link $n(979) $n(622) 10.0Mb 0.463402050943183ms $qtype
	$ns duplex-link $n(980) $n(22) 10.0Mb 0.9952794674883915ms $qtype
	$ns duplex-link $n(980) $n(467) 10.0Mb 0.040166436004178255ms $qtype
	$ns duplex-link $n(981) $n(479) 10.0Mb 1.6195146569679677ms $qtype
	$ns duplex-link $n(981) $n(855) 10.0Mb 0.94941623638461ms $qtype
	$ns duplex-link $n(982) $n(688) 10.0Mb 0.48807619999450874ms $qtype
	$ns duplex-link $n(982) $n(513) 10.0Mb 0.284234974220368ms $qtype
	$ns duplex-link $n(983) $n(873) 10.0Mb 0.9114116261865162ms $qtype
	$ns duplex-link $n(983) $n(694) 10.0Mb 0.20372002133025602ms $qtype
	$ns duplex-link $n(984) $n(400) 10.0Mb 1.3974703497338723ms $qtype
	$ns duplex-link $n(984) $n(756) 10.0Mb 1.2262144617680784ms $qtype
	$ns duplex-link $n(985) $n(388) 10.0Mb 1.2777072414073076ms $qtype
	$ns duplex-link $n(985) $n(223) 10.0Mb 1.225964905174022ms $qtype
	$ns duplex-link $n(986) $n(55) 10.0Mb 1.6166300102880014ms $qtype
	$ns duplex-link $n(986) $n(662) 10.0Mb 0.38268394319304444ms $qtype
	$ns duplex-link $n(987) $n(854) 10.0Mb 0.4522961853763729ms $qtype
	$ns duplex-link $n(987) $n(455) 10.0Mb 1.1512552917450891ms $qtype
	$ns duplex-link $n(988) $n(476) 10.0Mb 1.6337593454877946ms $qtype
	$ns duplex-link $n(988) $n(962) 10.0Mb 0.8820295038677848ms $qtype
	$ns duplex-link $n(989) $n(553) 10.0Mb 1.417345202554299ms $qtype
	$ns duplex-link $n(989) $n(506) 10.0Mb 0.522323457011407ms $qtype
	$ns duplex-link $n(990) $n(565) 10.0Mb 1.3174768362078346ms $qtype
	$ns duplex-link $n(990) $n(358) 10.0Mb 0.48756300564732713ms $qtype
	$ns duplex-link $n(991) $n(449) 10.0Mb 0.5695649658669264ms $qtype
	$ns duplex-link $n(991) $n(197) 10.0Mb 1.4779938616415391ms $qtype
	$ns duplex-link $n(992) $n(30) 10.0Mb 2.3681876208481167ms $qtype
	$ns duplex-link $n(992) $n(31) 10.0Mb 0.7588051643914839ms $qtype
	$ns duplex-link $n(993) $n(292) 10.0Mb 0.6417707310631795ms $qtype
	$ns duplex-link $n(993) $n(299) 10.0Mb 1.589771516861852ms $qtype
	$ns duplex-link $n(994) $n(969) 10.0Mb 1.1469173476187506ms $qtype
	$ns duplex-link $n(994) $n(182) 10.0Mb 1.7266928553456855ms $qtype
	$ns duplex-link $n(995) $n(174) 10.0Mb 0.3915650363913875ms $qtype
	$ns duplex-link $n(995) $n(784) 10.0Mb 2.4087392931359757ms $qtype
	$ns duplex-link $n(996) $n(503) 10.0Mb 0.37528555007522874ms $qtype
	$ns duplex-link $n(996) $n(539) 10.0Mb 2.605154802868777ms $qtype
	$ns duplex-link $n(997) $n(160) 10.0Mb 1.1696880530407807ms $qtype
	$ns duplex-link $n(997) $n(557) 10.0Mb 2.858580073334792ms $qtype
	$ns duplex-link $n(998) $n(595) 10.0Mb 0.7170464356667405ms $qtype
	$ns duplex-link $n(998) $n(285) 10.0Mb 1.9715698001403748ms $qtype
	$ns duplex-link $n(999) $n(186) 10.0Mb 0.49718956440519985ms $qtype
	$ns duplex-link $n(999) $n(600) 10.0Mb 0.3908540043240722ms $qtype

}   #end function create_topology

#-------------  extract_leaf_nodes:  array with smallest degree nodes -----
proc extract_leaf_nodes{} {

	# minimum degree in this graph is: 2. 
	set leaf(0)  67
	set leaf(1)  91
	set leaf(2)  123
	set leaf(3)  206
	set leaf(4)  245
	set leaf(5)  246
	set leaf(6)  250
	set leaf(7)  257
	set leaf(8)  269
	set leaf(9)  275
	set leaf(10)  283
	set leaf(11)  303
	set leaf(12)  320
	set leaf(13)  325
	set leaf(14)  346
	set leaf(15)  352
	set leaf(16)  356
	set leaf(17)  372
	set leaf(18)  379
	set leaf(19)  393
	set leaf(20)  395
	set leaf(21)  398
	set leaf(22)  404
	set leaf(23)  409
	set leaf(24)  416
	set leaf(25)  421
	set leaf(26)  425
	set leaf(27)  428
	set leaf(28)  439
	set leaf(29)  440
	set leaf(30)  444
	set leaf(31)  446
	set leaf(32)  448
	set leaf(33)  469
	set leaf(34)  470
	set leaf(35)  475
	set leaf(36)  478
	set leaf(37)  486
	set leaf(38)  496
	set leaf(39)  499
	set leaf(40)  501
	set leaf(41)  505
	set leaf(42)  507
	set leaf(43)  509
	set leaf(44)  510
	set leaf(45)  514
	set leaf(46)  518
	set leaf(47)  524
	set leaf(48)  525
	set leaf(49)  526
	set leaf(50)  527
	set leaf(51)  528
	set leaf(52)  530
	set leaf(53)  534
	set leaf(54)  536
	set leaf(55)  540
	set leaf(56)  543
	set leaf(57)  544
	set leaf(58)  547
	set leaf(59)  551
	set leaf(60)  559
	set leaf(61)  564
	set leaf(62)  567
	set leaf(63)  571
	set leaf(64)  579
	set leaf(65)  582
	set leaf(66)  588
	set leaf(67)  589
	set leaf(68)  590
	set leaf(69)  596
	set leaf(70)  597
	set leaf(71)  598
	set leaf(72)  599
	set leaf(73)  602
	set leaf(74)  603
	set leaf(75)  604
	set leaf(76)  605
	set leaf(77)  610
	set leaf(78)  611
	set leaf(79)  612
	set leaf(80)  613
	set leaf(81)  617
	set leaf(82)  618
	set leaf(83)  620
	set leaf(84)  623
	set leaf(85)  626
	set leaf(86)  629
	set leaf(87)  630
	set leaf(88)  634
	set leaf(89)  636
	set leaf(90)  638
	set leaf(91)  641
	set leaf(92)  643
	set leaf(93)  644
	set leaf(94)  647
	set leaf(95)  649
	set leaf(96)  650
	set leaf(97)  653
	set leaf(98)  654
	set leaf(99)  657
	set leaf(100)  658
	set leaf(101)  661
	set leaf(102)  667
	set leaf(103)  670
	set leaf(104)  671
	set leaf(105)  672
	set leaf(106)  673
	set leaf(107)  675
	set leaf(108)  676
	set leaf(109)  677
	set leaf(110)  678
	set leaf(111)  680
	set leaf(112)  682
	set leaf(113)  684
	set leaf(114)  686
	set leaf(115)  689
	set leaf(116)  692
	set leaf(117)  693
	set leaf(118)  696
	set leaf(119)  697
	set leaf(120)  698
	set leaf(121)  699
	set leaf(122)  700
	set leaf(123)  704
	set leaf(124)  705
	set leaf(125)  710
	set leaf(126)  711
	set leaf(127)  712
	set leaf(128)  713
	set leaf(129)  718
	set leaf(130)  719
	set leaf(131)  723
	set leaf(132)  724
	set leaf(133)  726
	set leaf(134)  727
	set leaf(135)  728
	set leaf(136)  729
	set leaf(137)  730
	set leaf(138)  731
	set leaf(139)  732
	set leaf(140)  734
	set leaf(141)  738
	set leaf(142)  739
	set leaf(143)  741
	set leaf(144)  743
	set leaf(145)  747
	set leaf(146)  750
	set leaf(147)  752
	set leaf(148)  754
	set leaf(149)  759
	set leaf(150)  760
	set leaf(151)  763
	set leaf(152)  764
	set leaf(153)  766
	set leaf(154)  767
	set leaf(155)  769
	set leaf(156)  770
	set leaf(157)  771
	set leaf(158)  773
	set leaf(159)  775
	set leaf(160)  776
	set leaf(161)  777
	set leaf(162)  778
	set leaf(163)  779
	set leaf(164)  780
	set leaf(165)  781
	set leaf(166)  783
	set leaf(167)  785
	set leaf(168)  786
	set leaf(169)  787
	set leaf(170)  789
	set leaf(171)  790
	set leaf(172)  792
	set leaf(173)  793
	set leaf(174)  795
	set leaf(175)  796
	set leaf(176)  797
	set leaf(177)  798
	set leaf(178)  799
	set leaf(179)  800
	set leaf(180)  801
	set leaf(181)  802
	set leaf(182)  803
	set leaf(183)  804
	set leaf(184)  805
	set leaf(185)  806
	set leaf(186)  809
	set leaf(187)  811
	set leaf(188)  812
	set leaf(189)  813
	set leaf(190)  814
	set leaf(191)  815
	set leaf(192)  816
	set leaf(193)  817
	set leaf(194)  818
	set leaf(195)  820
	set leaf(196)  821
	set leaf(197)  822
	set leaf(198)  823
	set leaf(199)  824
	set leaf(200)  825
	set leaf(201)  826
	set leaf(202)  827
	set leaf(203)  828
	set leaf(204)  830
	set leaf(205)  831
	set leaf(206)  832
	set leaf(207)  833
	set leaf(208)  834
	set leaf(209)  838
	set leaf(210)  839
	set leaf(211)  840
	set leaf(212)  841
	set leaf(213)  842
	set leaf(214)  843
	set leaf(215)  845
	set leaf(216)  846
	set leaf(217)  848
	set leaf(218)  850
	set leaf(219)  851
	set leaf(220)  852
	set leaf(221)  853
	set leaf(222)  857
	set leaf(223)  858
	set leaf(224)  859
	set leaf(225)  860
	set leaf(226)  861
	set leaf(227)  862
	set leaf(228)  863
	set leaf(229)  864
	set leaf(230)  865
	set leaf(231)  866
	set leaf(232)  867
	set leaf(233)  868
	set leaf(234)  870
	set leaf(235)  871
	set leaf(236)  872
	set leaf(237)  874
	set leaf(238)  876
	set leaf(239)  880
	set leaf(240)  881
	set leaf(241)  882
	set leaf(242)  883
	set leaf(243)  884
	set leaf(244)  885
	set leaf(245)  886
	set leaf(246)  887
	set leaf(247)  888
	set leaf(248)  889
	set leaf(249)  890
	set leaf(250)  891
	set leaf(251)  892
	set leaf(252)  893
	set leaf(253)  895
	set leaf(254)  896
	set leaf(255)  898
	set leaf(256)  899
	set leaf(257)  900
	set leaf(258)  901
	set leaf(259)  902
	set leaf(260)  903
	set leaf(261)  904
	set leaf(262)  905
	set leaf(263)  906
	set leaf(264)  907
	set leaf(265)  910
	set leaf(266)  911
	set leaf(267)  912
	set leaf(268)  913
	set leaf(269)  914
	set leaf(270)  915
	set leaf(271)  916
	set leaf(272)  917
	set leaf(273)  920
	set leaf(274)  921
	set leaf(275)  923
	set leaf(276)  924
	set leaf(277)  925
	set leaf(278)  926
	set leaf(279)  927
	set leaf(280)  928
	set leaf(281)  929
	set leaf(282)  931
	set leaf(283)  932
	set leaf(284)  933
	set leaf(285)  934
	set leaf(286)  935
	set leaf(287)  936
	set leaf(288)  937
	set leaf(289)  938
	set leaf(290)  939
	set leaf(291)  941
	set leaf(292)  942
	set leaf(293)  943
	set leaf(294)  944
	set leaf(295)  945
	set leaf(296)  946
	set leaf(297)  947
	set leaf(298)  948
	set leaf(299)  949
	set leaf(300)  950
	set leaf(301)  951
	set leaf(302)  952
	set leaf(303)  953
	set leaf(304)  954
	set leaf(305)  955
	set leaf(306)  956
	set leaf(307)  957
	set leaf(308)  958
	set leaf(309)  959
	set leaf(310)  960
	set leaf(311)  961
	set leaf(312)  963
	set leaf(313)  964
	set leaf(314)  965
	set leaf(315)  966
	set leaf(316)  967
	set leaf(317)  968
	set leaf(318)  970
	set leaf(319)  971
	set leaf(320)  972
	set leaf(321)  973
	set leaf(322)  974
	set leaf(323)  975
	set leaf(324)  976
	set leaf(325)  977
	set leaf(326)  978
	set leaf(327)  979
	set leaf(328)  980
	set leaf(329)  981
	set leaf(330)  982
	set leaf(331)  983
	set leaf(332)  984
	set leaf(333)  985
	set leaf(334)  986
	set leaf(335)  987
	set leaf(336)  988
	set leaf(337)  989
	set leaf(338)  990
	set leaf(339)  991
	set leaf(340)  992
	set leaf(341)  993
	set leaf(342)  994
	set leaf(343)  995
	set leaf(344)  996
	set leaf(345)  997
	set leaf(346)  998
	set leaf(347)  999

}  #end function extract_leaf_nodes

#----------  extract_nonleaf_nodes:  array with nodes which have degree > 2  ---
proc extract_nonleaf_nodes{} {
	set non_leaf(0) 0	#deg=19
	set non_leaf(1) 1	#deg=14
	set non_leaf(2) 2	#deg=13
	set non_leaf(3) 3	#deg=13
	set non_leaf(4) 4	#deg=11
	set non_leaf(5) 5	#deg=9
	set non_leaf(6) 6	#deg=13
	set non_leaf(7) 7	#deg=9
	set non_leaf(8) 8	#deg=15
	set non_leaf(9) 9	#deg=13
	set non_leaf(10) 10	#deg=13
	set non_leaf(11) 11	#deg=4
	set non_leaf(12) 12	#deg=8
	set non_leaf(13) 13	#deg=11
	set non_leaf(14) 14	#deg=13
	set non_leaf(15) 15	#deg=10
	set non_leaf(16) 16	#deg=12
	set non_leaf(17) 17	#deg=11
	set non_leaf(18) 18	#deg=7
	set non_leaf(19) 19	#deg=10
	set non_leaf(20) 20	#deg=10
	set non_leaf(21) 21	#deg=6
	set non_leaf(22) 22	#deg=9
	set non_leaf(23) 23	#deg=7
	set non_leaf(24) 24	#deg=10
	set non_leaf(25) 25	#deg=5
	set non_leaf(26) 26	#deg=10
	set non_leaf(27) 27	#deg=9
	set non_leaf(28) 28	#deg=11
	set non_leaf(29) 29	#deg=9
	set non_leaf(30) 30	#deg=6
	set non_leaf(31) 31	#deg=6
	set non_leaf(32) 32	#deg=12
	set non_leaf(33) 33	#deg=12
	set non_leaf(34) 34	#deg=6
	set non_leaf(35) 35	#deg=5
	set non_leaf(36) 36	#deg=8
	set non_leaf(37) 37	#deg=11
	set non_leaf(38) 38	#deg=7
	set non_leaf(39) 39	#deg=10
	set non_leaf(40) 40	#deg=11
	set non_leaf(41) 41	#deg=9
	set non_leaf(42) 42	#deg=9
	set non_leaf(43) 43	#deg=12
	set non_leaf(44) 44	#deg=6
	set non_leaf(45) 45	#deg=8
	set non_leaf(46) 46	#deg=7
	set non_leaf(47) 47	#deg=6
	set non_leaf(48) 48	#deg=14
	set non_leaf(49) 49	#deg=12
	set non_leaf(50) 50	#deg=9
	set non_leaf(51) 51	#deg=6
	set non_leaf(52) 52	#deg=8
	set non_leaf(53) 53	#deg=6
	set non_leaf(54) 54	#deg=4
	set non_leaf(55) 55	#deg=12
	set non_leaf(56) 56	#deg=9
	set non_leaf(57) 57	#deg=13
	set non_leaf(58) 58	#deg=6
	set non_leaf(59) 59	#deg=6
	set non_leaf(60) 60	#deg=7
	set non_leaf(61) 61	#deg=12
	set non_leaf(62) 62	#deg=10
	set non_leaf(63) 63	#deg=7
	set non_leaf(64) 64	#deg=5
	set non_leaf(65) 65	#deg=8
	set non_leaf(66) 66	#deg=10
	set non_leaf(67) 68	#deg=7
	set non_leaf(68) 69	#deg=4
	set non_leaf(69) 70	#deg=4
	set non_leaf(70) 71	#deg=5
	set non_leaf(71) 72	#deg=5
	set non_leaf(72) 73	#deg=5
	set non_leaf(73) 74	#deg=8
	set non_leaf(74) 75	#deg=5
	set non_leaf(75) 76	#deg=8
	set non_leaf(76) 77	#deg=11
	set non_leaf(77) 78	#deg=8
	set non_leaf(78) 79	#deg=8
	set non_leaf(79) 80	#deg=7
	set non_leaf(80) 81	#deg=4
	set non_leaf(81) 82	#deg=6
	set non_leaf(82) 83	#deg=9
	set non_leaf(83) 84	#deg=8
	set non_leaf(84) 85	#deg=4
	set non_leaf(85) 86	#deg=7
	set non_leaf(86) 87	#deg=9
	set non_leaf(87) 88	#deg=4
	set non_leaf(88) 89	#deg=9
	set non_leaf(89) 90	#deg=8
	set non_leaf(90) 92	#deg=11
	set non_leaf(91) 93	#deg=9
	set non_leaf(92) 94	#deg=7
	set non_leaf(93) 95	#deg=5
	set non_leaf(94) 96	#deg=9
	set non_leaf(95) 97	#deg=9
	set non_leaf(96) 98	#deg=6
	set non_leaf(97) 99	#deg=6
	set non_leaf(98) 100	#deg=5
	set non_leaf(99) 101	#deg=5
	set non_leaf(100) 102	#deg=8
	set non_leaf(101) 103	#deg=11
	set non_leaf(102) 104	#deg=6
	set non_leaf(103) 105	#deg=9
	set non_leaf(104) 106	#deg=6
	set non_leaf(105) 107	#deg=8
	set non_leaf(106) 108	#deg=9
	set non_leaf(107) 109	#deg=4
	set non_leaf(108) 110	#deg=4
	set non_leaf(109) 111	#deg=6
	set non_leaf(110) 112	#deg=4
	set non_leaf(111) 113	#deg=4
	set non_leaf(112) 114	#deg=12
	set non_leaf(113) 115	#deg=9
	set non_leaf(114) 116	#deg=3
	set non_leaf(115) 117	#deg=7
	set non_leaf(116) 118	#deg=6
	set non_leaf(117) 119	#deg=7
	set non_leaf(118) 120	#deg=6
	set non_leaf(119) 121	#deg=4
	set non_leaf(120) 122	#deg=5
	set non_leaf(121) 124	#deg=9
	set non_leaf(122) 125	#deg=5
	set non_leaf(123) 126	#deg=3
	set non_leaf(124) 127	#deg=9
	set non_leaf(125) 128	#deg=7
	set non_leaf(126) 129	#deg=8
	set non_leaf(127) 130	#deg=5
	set non_leaf(128) 131	#deg=8
	set non_leaf(129) 132	#deg=3
	set non_leaf(130) 133	#deg=5
	set non_leaf(131) 134	#deg=7
	set non_leaf(132) 135	#deg=7
	set non_leaf(133) 136	#deg=6
	set non_leaf(134) 137	#deg=10
	set non_leaf(135) 138	#deg=5
	set non_leaf(136) 139	#deg=5
	set non_leaf(137) 140	#deg=5
	set non_leaf(138) 141	#deg=5
	set non_leaf(139) 142	#deg=7
	set non_leaf(140) 143	#deg=6
	set non_leaf(141) 144	#deg=5
	set non_leaf(142) 145	#deg=5
	set non_leaf(143) 146	#deg=6
	set non_leaf(144) 147	#deg=4
	set non_leaf(145) 148	#deg=3
	set non_leaf(146) 149	#deg=6
	set non_leaf(147) 150	#deg=3
	set non_leaf(148) 151	#deg=5
	set non_leaf(149) 152	#deg=4
	set non_leaf(150) 153	#deg=7
	set non_leaf(151) 154	#deg=6
	set non_leaf(152) 155	#deg=8
	set non_leaf(153) 156	#deg=8
	set non_leaf(154) 157	#deg=14
	set non_leaf(155) 158	#deg=5
	set non_leaf(156) 159	#deg=3
	set non_leaf(157) 160	#deg=5
	set non_leaf(158) 161	#deg=11
	set non_leaf(159) 162	#deg=6
	set non_leaf(160) 163	#deg=4
	set non_leaf(161) 164	#deg=3
	set non_leaf(162) 165	#deg=4
	set non_leaf(163) 166	#deg=5
	set non_leaf(164) 167	#deg=5
	set non_leaf(165) 168	#deg=10
	set non_leaf(166) 169	#deg=5
	set non_leaf(167) 170	#deg=5
	set non_leaf(168) 171	#deg=6
	set non_leaf(169) 172	#deg=5
	set non_leaf(170) 173	#deg=9
	set non_leaf(171) 174	#deg=5
	set non_leaf(172) 175	#deg=6
	set non_leaf(173) 176	#deg=7
	set non_leaf(174) 177	#deg=6
	set non_leaf(175) 178	#deg=7
	set non_leaf(176) 179	#deg=5
	set non_leaf(177) 180	#deg=6
	set non_leaf(178) 181	#deg=5
	set non_leaf(179) 182	#deg=4
	set non_leaf(180) 183	#deg=6
	set non_leaf(181) 184	#deg=5
	set non_leaf(182) 185	#deg=7
	set non_leaf(183) 186	#deg=8
	set non_leaf(184) 187	#deg=7
	set non_leaf(185) 188	#deg=5
	set non_leaf(186) 189	#deg=5
	set non_leaf(187) 190	#deg=3
	set non_leaf(188) 191	#deg=3
	set non_leaf(189) 192	#deg=4
	set non_leaf(190) 193	#deg=7
	set non_leaf(191) 194	#deg=6
	set non_leaf(192) 195	#deg=7
	set non_leaf(193) 196	#deg=4
	set non_leaf(194) 197	#deg=6
	set non_leaf(195) 198	#deg=6
	set non_leaf(196) 199	#deg=5
	set non_leaf(197) 200	#deg=7
	set non_leaf(198) 201	#deg=7
	set non_leaf(199) 202	#deg=7
	set non_leaf(200) 203	#deg=7
	set non_leaf(201) 204	#deg=6
	set non_leaf(202) 205	#deg=10
	set non_leaf(203) 207	#deg=3
	set non_leaf(204) 208	#deg=3
	set non_leaf(205) 209	#deg=5
	set non_leaf(206) 210	#deg=5
	set non_leaf(207) 211	#deg=3
	set non_leaf(208) 212	#deg=7
	set non_leaf(209) 213	#deg=7
	set non_leaf(210) 214	#deg=8
	set non_leaf(211) 215	#deg=6
	set non_leaf(212) 216	#deg=5
	set non_leaf(213) 217	#deg=4
	set non_leaf(214) 218	#deg=4
	set non_leaf(215) 219	#deg=5
	set non_leaf(216) 220	#deg=3
	set non_leaf(217) 221	#deg=4
	set non_leaf(218) 222	#deg=3
	set non_leaf(219) 223	#deg=9
	set non_leaf(220) 224	#deg=4
	set non_leaf(221) 225	#deg=4
	set non_leaf(222) 226	#deg=7
	set non_leaf(223) 227	#deg=3
	set non_leaf(224) 228	#deg=5
	set non_leaf(225) 229	#deg=4
	set non_leaf(226) 230	#deg=5
	set non_leaf(227) 231	#deg=4
	set non_leaf(228) 232	#deg=4
	set non_leaf(229) 233	#deg=4
	set non_leaf(230) 234	#deg=5
	set non_leaf(231) 235	#deg=6
	set non_leaf(232) 236	#deg=4
	set non_leaf(233) 237	#deg=6
	set non_leaf(234) 238	#deg=4
	set non_leaf(235) 239	#deg=5
	set non_leaf(236) 240	#deg=3
	set non_leaf(237) 241	#deg=5
	set non_leaf(238) 242	#deg=7
	set non_leaf(239) 243	#deg=8
	set non_leaf(240) 244	#deg=4
	set non_leaf(241) 247	#deg=3
	set non_leaf(242) 248	#deg=3
	set non_leaf(243) 249	#deg=7
	set non_leaf(244) 251	#deg=4
	set non_leaf(245) 252	#deg=4
	set non_leaf(246) 253	#deg=4
	set non_leaf(247) 254	#deg=5
	set non_leaf(248) 255	#deg=7
	set non_leaf(249) 256	#deg=3
	set non_leaf(250) 258	#deg=4
	set non_leaf(251) 259	#deg=5
	set non_leaf(252) 260	#deg=6
	set non_leaf(253) 261	#deg=5
	set non_leaf(254) 262	#deg=4
	set non_leaf(255) 263	#deg=6
	set non_leaf(256) 264	#deg=4
	set non_leaf(257) 265	#deg=6
	set non_leaf(258) 266	#deg=4
	set non_leaf(259) 267	#deg=5
	set non_leaf(260) 268	#deg=4
	set non_leaf(261) 270	#deg=5
	set non_leaf(262) 271	#deg=3
	set non_leaf(263) 272	#deg=4
	set non_leaf(264) 273	#deg=7
	set non_leaf(265) 274	#deg=3
	set non_leaf(266) 276	#deg=4
	set non_leaf(267) 277	#deg=3
	set non_leaf(268) 278	#deg=6
	set non_leaf(269) 279	#deg=8
	set non_leaf(270) 280	#deg=8
	set non_leaf(271) 281	#deg=7
	set non_leaf(272) 282	#deg=4
	set non_leaf(273) 284	#deg=4
	set non_leaf(274) 285	#deg=5
	set non_leaf(275) 286	#deg=5
	set non_leaf(276) 287	#deg=7
	set non_leaf(277) 288	#deg=5
	set non_leaf(278) 289	#deg=4
	set non_leaf(279) 290	#deg=4
	set non_leaf(280) 291	#deg=3
	set non_leaf(281) 292	#deg=5
	set non_leaf(282) 293	#deg=7
	set non_leaf(283) 294	#deg=8
	set non_leaf(284) 295	#deg=5
	set non_leaf(285) 296	#deg=5
	set non_leaf(286) 297	#deg=5
	set non_leaf(287) 298	#deg=4
	set non_leaf(288) 299	#deg=7
	set non_leaf(289) 300	#deg=5
	set non_leaf(290) 301	#deg=6
	set non_leaf(291) 302	#deg=5
	set non_leaf(292) 304	#deg=6
	set non_leaf(293) 305	#deg=3
	set non_leaf(294) 306	#deg=4
	set non_leaf(295) 307	#deg=7
	set non_leaf(296) 308	#deg=7
	set non_leaf(297) 309	#deg=7
	set non_leaf(298) 310	#deg=3
	set non_leaf(299) 311	#deg=5
	set non_leaf(300) 312	#deg=7
	set non_leaf(301) 313	#deg=5
	set non_leaf(302) 314	#deg=3
	set non_leaf(303) 315	#deg=3
	set non_leaf(304) 316	#deg=3
	set non_leaf(305) 317	#deg=5
	set non_leaf(306) 318	#deg=4
	set non_leaf(307) 319	#deg=7
	set non_leaf(308) 321	#deg=5
	set non_leaf(309) 322	#deg=5
	set non_leaf(310) 323	#deg=4
	set non_leaf(311) 324	#deg=6
	set non_leaf(312) 326	#deg=6
	set non_leaf(313) 327	#deg=3
	set non_leaf(314) 328	#deg=5
	set non_leaf(315) 329	#deg=3
	set non_leaf(316) 330	#deg=5
	set non_leaf(317) 331	#deg=4
	set non_leaf(318) 332	#deg=6
	set non_leaf(319) 333	#deg=3
	set non_leaf(320) 334	#deg=4
	set non_leaf(321) 335	#deg=3
	set non_leaf(322) 336	#deg=4
	set non_leaf(323) 337	#deg=4
	set non_leaf(324) 338	#deg=3
	set non_leaf(325) 339	#deg=6
	set non_leaf(326) 340	#deg=5
	set non_leaf(327) 341	#deg=4
	set non_leaf(328) 342	#deg=7
	set non_leaf(329) 343	#deg=7
	set non_leaf(330) 344	#deg=3
	set non_leaf(331) 345	#deg=5
	set non_leaf(332) 347	#deg=5
	set non_leaf(333) 348	#deg=3
	set non_leaf(334) 349	#deg=4
	set non_leaf(335) 350	#deg=6
	set non_leaf(336) 351	#deg=4
	set non_leaf(337) 353	#deg=4
	set non_leaf(338) 354	#deg=5
	set non_leaf(339) 355	#deg=3
	set non_leaf(340) 357	#deg=5
	set non_leaf(341) 358	#deg=4
	set non_leaf(342) 359	#deg=4
	set non_leaf(343) 360	#deg=4
	set non_leaf(344) 361	#deg=3
	set non_leaf(345) 362	#deg=4
	set non_leaf(346) 363	#deg=4
	set non_leaf(347) 364	#deg=7
	set non_leaf(348) 365	#deg=5
	set non_leaf(349) 366	#deg=5
	set non_leaf(350) 367	#deg=7
	set non_leaf(351) 368	#deg=4
	set non_leaf(352) 369	#deg=3
	set non_leaf(353) 370	#deg=6
	set non_leaf(354) 371	#deg=3
	set non_leaf(355) 373	#deg=3
	set non_leaf(356) 374	#deg=4
	set non_leaf(357) 375	#deg=3
	set non_leaf(358) 376	#deg=4
	set non_leaf(359) 377	#deg=6
	set non_leaf(360) 378	#deg=3
	set non_leaf(361) 380	#deg=6
	set non_leaf(362) 381	#deg=5
	set non_leaf(363) 382	#deg=3
	set non_leaf(364) 383	#deg=3
	set non_leaf(365) 384	#deg=5
	set non_leaf(366) 385	#deg=4
	set non_leaf(367) 386	#deg=4
	set non_leaf(368) 387	#deg=4
	set non_leaf(369) 388	#deg=5
	set non_leaf(370) 389	#deg=5
	set non_leaf(371) 390	#deg=5
	set non_leaf(372) 391	#deg=3
	set non_leaf(373) 392	#deg=3
	set non_leaf(374) 394	#deg=4
	set non_leaf(375) 396	#deg=3
	set non_leaf(376) 397	#deg=5
	set non_leaf(377) 399	#deg=3
	set non_leaf(378) 400	#deg=7
	set non_leaf(379) 401	#deg=3
	set non_leaf(380) 402	#deg=4
	set non_leaf(381) 403	#deg=4
	set non_leaf(382) 405	#deg=3
	set non_leaf(383) 406	#deg=4
	set non_leaf(384) 407	#deg=3
	set non_leaf(385) 408	#deg=4
	set non_leaf(386) 410	#deg=3
	set non_leaf(387) 411	#deg=5
	set non_leaf(388) 412	#deg=5
	set non_leaf(389) 413	#deg=6
	set non_leaf(390) 414	#deg=6
	set non_leaf(391) 415	#deg=3
	set non_leaf(392) 417	#deg=6
	set non_leaf(393) 418	#deg=3
	set non_leaf(394) 419	#deg=3
	set non_leaf(395) 420	#deg=6
	set non_leaf(396) 422	#deg=3
	set non_leaf(397) 423	#deg=3
	set non_leaf(398) 424	#deg=4
	set non_leaf(399) 426	#deg=6
	set non_leaf(400) 427	#deg=4
	set non_leaf(401) 429	#deg=5
	set non_leaf(402) 430	#deg=4
	set non_leaf(403) 431	#deg=3
	set non_leaf(404) 432	#deg=5
	set non_leaf(405) 433	#deg=5
	set non_leaf(406) 434	#deg=3
	set non_leaf(407) 435	#deg=4
	set non_leaf(408) 436	#deg=4
	set non_leaf(409) 437	#deg=3
	set non_leaf(410) 438	#deg=5
	set non_leaf(411) 441	#deg=5
	set non_leaf(412) 442	#deg=4
	set non_leaf(413) 443	#deg=4
	set non_leaf(414) 445	#deg=4
	set non_leaf(415) 447	#deg=4
	set non_leaf(416) 449	#deg=4
	set non_leaf(417) 450	#deg=4
	set non_leaf(418) 451	#deg=4
	set non_leaf(419) 452	#deg=4
	set non_leaf(420) 453	#deg=5
	set non_leaf(421) 454	#deg=4
	set non_leaf(422) 455	#deg=7
	set non_leaf(423) 456	#deg=4
	set non_leaf(424) 457	#deg=3
	set non_leaf(425) 458	#deg=5
	set non_leaf(426) 459	#deg=4
	set non_leaf(427) 460	#deg=4
	set non_leaf(428) 461	#deg=3
	set non_leaf(429) 462	#deg=3
	set non_leaf(430) 463	#deg=5
	set non_leaf(431) 464	#deg=4
	set non_leaf(432) 465	#deg=3
	set non_leaf(433) 466	#deg=3
	set non_leaf(434) 467	#deg=4
	set non_leaf(435) 468	#deg=3
	set non_leaf(436) 471	#deg=3
	set non_leaf(437) 472	#deg=4
	set non_leaf(438) 473	#deg=4
	set non_leaf(439) 474	#deg=4
	set non_leaf(440) 476	#deg=4
	set non_leaf(441) 477	#deg=3
	set non_leaf(442) 479	#deg=5
	set non_leaf(443) 480	#deg=3
	set non_leaf(444) 481	#deg=3
	set non_leaf(445) 482	#deg=3
	set non_leaf(446) 483	#deg=4
	set non_leaf(447) 484	#deg=4
	set non_leaf(448) 485	#deg=4
	set non_leaf(449) 487	#deg=4
	set non_leaf(450) 488	#deg=4
	set non_leaf(451) 489	#deg=5
	set non_leaf(452) 490	#deg=4
	set non_leaf(453) 491	#deg=3
	set non_leaf(454) 492	#deg=3
	set non_leaf(455) 493	#deg=6
	set non_leaf(456) 494	#deg=3
	set non_leaf(457) 495	#deg=4
	set non_leaf(458) 497	#deg=4
	set non_leaf(459) 498	#deg=4
	set non_leaf(460) 500	#deg=5
	set non_leaf(461) 502	#deg=3
	set non_leaf(462) 503	#deg=3
	set non_leaf(463) 504	#deg=3
	set non_leaf(464) 506	#deg=4
	set non_leaf(465) 508	#deg=3
	set non_leaf(466) 511	#deg=3
	set non_leaf(467) 512	#deg=4
	set non_leaf(468) 513	#deg=5
	set non_leaf(469) 515	#deg=5
	set non_leaf(470) 516	#deg=4
	set non_leaf(471) 517	#deg=4
	set non_leaf(472) 519	#deg=3
	set non_leaf(473) 520	#deg=3
	set non_leaf(474) 521	#deg=4
	set non_leaf(475) 522	#deg=3
	set non_leaf(476) 523	#deg=4
	set non_leaf(477) 529	#deg=3
	set non_leaf(478) 531	#deg=3
	set non_leaf(479) 532	#deg=3
	set non_leaf(480) 533	#deg=4
	set non_leaf(481) 535	#deg=3
	set non_leaf(482) 537	#deg=5
	set non_leaf(483) 538	#deg=4
	set non_leaf(484) 539	#deg=5
	set non_leaf(485) 541	#deg=3
	set non_leaf(486) 542	#deg=3
	set non_leaf(487) 545	#deg=3
	set non_leaf(488) 546	#deg=3
	set non_leaf(489) 548	#deg=4
	set non_leaf(490) 549	#deg=4
	set non_leaf(491) 550	#deg=5
	set non_leaf(492) 552	#deg=5
	set non_leaf(493) 553	#deg=4
	set non_leaf(494) 554	#deg=4
	set non_leaf(495) 555	#deg=3
	set non_leaf(496) 556	#deg=4
	set non_leaf(497) 557	#deg=3
	set non_leaf(498) 558	#deg=3
	set non_leaf(499) 560	#deg=3
	set non_leaf(500) 561	#deg=3
	set non_leaf(501) 562	#deg=3
	set non_leaf(502) 563	#deg=3
	set non_leaf(503) 565	#deg=5
	set non_leaf(504) 566	#deg=4
	set non_leaf(505) 568	#deg=4
	set non_leaf(506) 569	#deg=6
	set non_leaf(507) 570	#deg=6
	set non_leaf(508) 572	#deg=3
	set non_leaf(509) 573	#deg=4
	set non_leaf(510) 574	#deg=4
	set non_leaf(511) 575	#deg=5
	set non_leaf(512) 576	#deg=3
	set non_leaf(513) 577	#deg=5
	set non_leaf(514) 578	#deg=5
	set non_leaf(515) 580	#deg=3
	set non_leaf(516) 581	#deg=3
	set non_leaf(517) 583	#deg=3
	set non_leaf(518) 584	#deg=3
	set non_leaf(519) 585	#deg=3
	set non_leaf(520) 586	#deg=4
	set non_leaf(521) 587	#deg=4
	set non_leaf(522) 591	#deg=5
	set non_leaf(523) 592	#deg=3
	set non_leaf(524) 593	#deg=5
	set non_leaf(525) 594	#deg=3
	set non_leaf(526) 595	#deg=4
	set non_leaf(527) 600	#deg=3
	set non_leaf(528) 601	#deg=3
	set non_leaf(529) 606	#deg=3
	set non_leaf(530) 607	#deg=4
	set non_leaf(531) 608	#deg=3
	set non_leaf(532) 609	#deg=3
	set non_leaf(533) 614	#deg=4
	set non_leaf(534) 615	#deg=4
	set non_leaf(535) 616	#deg=3
	set non_leaf(536) 619	#deg=3
	set non_leaf(537) 621	#deg=4
	set non_leaf(538) 622	#deg=4
	set non_leaf(539) 624	#deg=3
	set non_leaf(540) 625	#deg=4
	set non_leaf(541) 627	#deg=3
	set non_leaf(542) 628	#deg=3
	set non_leaf(543) 631	#deg=3
	set non_leaf(544) 632	#deg=3
	set non_leaf(545) 633	#deg=3
	set non_leaf(546) 635	#deg=3
	set non_leaf(547) 637	#deg=3
	set non_leaf(548) 639	#deg=4
	set non_leaf(549) 640	#deg=5
	set non_leaf(550) 642	#deg=3
	set non_leaf(551) 645	#deg=3
	set non_leaf(552) 646	#deg=6
	set non_leaf(553) 648	#deg=4
	set non_leaf(554) 651	#deg=4
	set non_leaf(555) 652	#deg=3
	set non_leaf(556) 655	#deg=4
	set non_leaf(557) 656	#deg=3
	set non_leaf(558) 659	#deg=3
	set non_leaf(559) 660	#deg=4
	set non_leaf(560) 662	#deg=4
	set non_leaf(561) 663	#deg=3
	set non_leaf(562) 664	#deg=3
	set non_leaf(563) 665	#deg=3
	set non_leaf(564) 666	#deg=3
	set non_leaf(565) 668	#deg=3
	set non_leaf(566) 669	#deg=3
	set non_leaf(567) 674	#deg=3
	set non_leaf(568) 679	#deg=3
	set non_leaf(569) 681	#deg=3
	set non_leaf(570) 683	#deg=4
	set non_leaf(571) 685	#deg=4
	set non_leaf(572) 687	#deg=4
	set non_leaf(573) 688	#deg=4
	set non_leaf(574) 690	#deg=3
	set non_leaf(575) 691	#deg=3
	set non_leaf(576) 694	#deg=3
	set non_leaf(577) 695	#deg=3
	set non_leaf(578) 701	#deg=6
	set non_leaf(579) 702	#deg=3
	set non_leaf(580) 703	#deg=4
	set non_leaf(581) 706	#deg=3
	set non_leaf(582) 707	#deg=3
	set non_leaf(583) 708	#deg=5
	set non_leaf(584) 709	#deg=3
	set non_leaf(585) 714	#deg=4
	set non_leaf(586) 715	#deg=3
	set non_leaf(587) 716	#deg=3
	set non_leaf(588) 717	#deg=3
	set non_leaf(589) 720	#deg=3
	set non_leaf(590) 721	#deg=3
	set non_leaf(591) 722	#deg=3
	set non_leaf(592) 725	#deg=3
	set non_leaf(593) 733	#deg=3
	set non_leaf(594) 735	#deg=3
	set non_leaf(595) 736	#deg=4
	set non_leaf(596) 737	#deg=4
	set non_leaf(597) 740	#deg=3
	set non_leaf(598) 742	#deg=3
	set non_leaf(599) 744	#deg=4
	set non_leaf(600) 745	#deg=3
	set non_leaf(601) 746	#deg=3
	set non_leaf(602) 748	#deg=3
	set non_leaf(603) 749	#deg=4
	set non_leaf(604) 751	#deg=3
	set non_leaf(605) 753	#deg=3
	set non_leaf(606) 755	#deg=3
	set non_leaf(607) 756	#deg=4
	set non_leaf(608) 757	#deg=4
	set non_leaf(609) 758	#deg=3
	set non_leaf(610) 761	#deg=3
	set non_leaf(611) 762	#deg=3
	set non_leaf(612) 765	#deg=3
	set non_leaf(613) 768	#deg=3
	set non_leaf(614) 772	#deg=3
	set non_leaf(615) 774	#deg=4
	set non_leaf(616) 782	#deg=3
	set non_leaf(617) 784	#deg=3
	set non_leaf(618) 788	#deg=3
	set non_leaf(619) 791	#deg=3
	set non_leaf(620) 794	#deg=4
	set non_leaf(621) 807	#deg=3
	set non_leaf(622) 808	#deg=3
	set non_leaf(623) 810	#deg=3
	set non_leaf(624) 819	#deg=3
	set non_leaf(625) 829	#deg=3
	set non_leaf(626) 835	#deg=3
	set non_leaf(627) 836	#deg=4
	set non_leaf(628) 837	#deg=3
	set non_leaf(629) 844	#deg=3
	set non_leaf(630) 847	#deg=3
	set non_leaf(631) 849	#deg=3
	set non_leaf(632) 854	#deg=3
	set non_leaf(633) 855	#deg=3
	set non_leaf(634) 856	#deg=3
	set non_leaf(635) 869	#deg=3
	set non_leaf(636) 873	#deg=3
	set non_leaf(637) 875	#deg=3
	set non_leaf(638) 877	#deg=3
	set non_leaf(639) 878	#deg=3
	set non_leaf(640) 879	#deg=4
	set non_leaf(641) 894	#deg=3
	set non_leaf(642) 897	#deg=3
	set non_leaf(643) 908	#deg=4
	set non_leaf(644) 909	#deg=3
	set non_leaf(645) 918	#deg=3
	set non_leaf(646) 919	#deg=4
	set non_leaf(647) 922	#deg=3
	set non_leaf(648) 930	#deg=3
	set non_leaf(649) 940	#deg=3
	set non_leaf(650) 962	#deg=3
	set non_leaf(651) 969	#deg=3

}  #end function extract_nonleaf_nodes
