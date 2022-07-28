/* PRIMERA PROBLEMATICA */
/* Se crean las columnas nuevas */
ALTER TABLE cliente ADD COLUMN customer_type TEXT;
ALTER TABLE cuenta ADD COLUMN account_type TEXT;

DROP TABLE tarjeta;
DROP TABLE card_brand;
DROP TABLE direcciones;

/* Tabla de marcas de tarjetas */
CREATE TABLE card_brand(
	customer_id INTEGER NOT NULL,
	card_brand_description TEXT NOT NULL,
	card_brand_id INTEGER NOT NULL PRIMARY KEY,
	FOREIGN KEY(customer_id) REFERENCES cliente(customer_id)
)

/* Tablas de tarjetas */
CREATE TABLE tarjeta(
	card_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	card_number INTEGER NOT NULL UNIQUE CHECK(length(card_number)<=20),
	card_cvv INTEGER NOT NULL,
	card_granted_date INTEGER NOT NULL,
	card_expiration_date INTEGER NOT NULL,
	card_brand_id INTEGER NOT NULL,
	PRIMARY KEY(card_id, customer_id),
	FOREIGN KEY(customer_id) REFERENCES cliente(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
	FOREIGN KEY(card_brand_id) REFERENCES card_brand(card_brand_id) ON DELETE CASCADE ON UPDATE CASCADE
)

/* Tabla de direcciones */
CREATE TABLE direcciones(
	adress_id INTEGER NOT NULL PRIMARY KEY,
	adress_street TEXT NOT NULL,
	adress_city TEXT NOT NULL,
	adress_country TEXT NOT NULL,	
	adress_type_of_user TEXT
)

INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",1,1),
  ("Mastercard",2,2),
  ("American Express",3,3),
  ("Visa",4,4),
  ("Mastercard",5,5),
  ("American Express",6,6),
  ("Visa",7,7),
  ("Mastercard",8,8),
  ("American Express",9,9),
  ("Visa",10,10);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",11,11),
  ("American Express",12,12),
  ("Visa",13,13),
  ("Mastercard",14,14),
  ("American Express",15,15),
  ("Visa",16,16),
  ("Mastercard",17,17),
  ("American Express",18,18),
  ("Visa",19,19),
  ("Mastercard",20,20);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",21,21),
  ("Visa",22,22),
  ("Mastercard",23,23),
  ("American Express",24,24),
  ("Visa",25,25),
  ("Mastercard",26,26),
  ("American Express",27,27),
  ("Visa",28,28),
  ("Mastercard",29,29),
  ("American Express",30,30);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",31,31),
  ("Mastercard",32,32),
  ("American Express",33,33),
  ("Visa",34,34),
  ("Mastercard",35,35),
  ("American Express",36,36),
  ("Visa",37,37),
  ("Mastercard",38,38),
  ("American Express",39,39),
  ("Visa",40,40);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",41,41),
  ("American Express",42,42),
  ("Visa",43,43),
  ("Mastercard",44,44),
  ("American Express",45,45),
  ("Visa",46,46),
  ("Mastercard",47,47),
  ("American Express",48,48),
  ("Visa",49,49),
  ("Mastercard",50,50);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",51,51),
  ("Visa",52,52),
  ("Mastercard",53,53),
  ("American Express",54,54),
  ("Visa",55,55),
  ("Mastercard",56,56),
  ("American Express",57,57),
  ("Visa",58,58),
  ("Mastercard",59,59),
  ("American Express",60,60);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",61,61),
  ("Mastercard",62,62),
  ("American Express",63,63),
  ("Visa",64,64),
  ("Mastercard",65,65),
  ("American Express",66,66),
  ("Visa",67,67),
  ("Mastercard",68,68),
  ("American Express",69,69),
  ("Visa",70,70);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",71,71),
  ("American Express",72,72),
  ("Visa",73,73),
  ("Mastercard",74,74),
  ("American Express",75,75),
  ("Visa",76,76),
  ("Mastercard",77,77),
  ("American Express",78,78),
  ("Visa",79,79),
  ("Mastercard",80,80);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",81,81),
  ("Visa",82,82),
  ("Mastercard",83,83),
  ("American Express",84,84),
  ("Visa",85,85),
  ("Mastercard",86,86),
  ("American Express",87,87),
  ("Visa",88,88),
  ("Mastercard",89,89),
  ("American Express",90,90);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",91,91),
  ("Mastercard",92,92),
  ("American Express",93,93),
  ("Visa",94,94),
  ("Mastercard",95,95),
  ("American Express",96,96),
  ("Visa",97,97),
  ("Mastercard",98,98),
  ("American Express",99,99),
  ("Visa",100,100);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",101,101),
  ("American Express",102,102),
  ("Visa",103,103),
  ("Mastercard",104,104),
  ("American Express",105,105),
  ("Visa",106,106),
  ("Mastercard",107,107),
  ("American Express",108,108),
  ("Visa",109,109),
  ("Mastercard",110,110);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",111,111),
  ("Visa",112,112),
  ("Mastercard",113,113),
  ("American Express",114,114),
  ("Visa",115,115),
  ("Mastercard",116,116),
  ("American Express",117,117),
  ("Visa",118,118),
  ("Mastercard",119,119),
  ("American Express",120,120);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",121,121),
  ("Mastercard",122,122),
  ("American Express",123,123),
  ("Visa",124,124),
  ("Mastercard",125,125),
  ("American Express",126,126),
  ("Visa",127,127),
  ("Mastercard",128,128),
  ("American Express",129,129),
  ("Visa",130,130);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",131,131),
  ("American Express",132,132),
  ("Visa",133,133),
  ("Mastercard",134,134),
  ("American Express",135,135),
  ("Visa",136,136),
  ("Mastercard",137,137),
  ("American Express",138,138),
  ("Visa",139,139),
  ("Mastercard",140,140);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",141,141),
  ("Visa",142,142),
  ("Mastercard",143,143),
  ("American Express",144,144),
  ("Visa",145,145),
  ("Mastercard",146,146),
  ("American Express",147,147),
  ("Visa",148,148),
  ("Mastercard",149,149),
  ("American Express",150,150);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",151,151),
  ("Mastercard",152,152),
  ("American Express",153,153),
  ("Visa",154,154),
  ("Mastercard",155,155),
  ("American Express",156,156),
  ("Visa",157,157),
  ("Mastercard",158,158),
  ("American Express",159,159),
  ("Visa",160,160);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",161,161),
  ("American Express",162,162),
  ("Visa",163,163),
  ("Mastercard",164,164),
  ("American Express",165,165),
  ("Visa",166,166),
  ("Mastercard",167,167),
  ("American Express",168,168),
  ("Visa",169,169),
  ("Mastercard",170,170);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",171,171),
  ("Visa",172,172),
  ("Mastercard",173,173),
  ("American Express",174,174),
  ("Visa",175,175),
  ("Mastercard",176,176),
  ("American Express",177,177),
  ("Visa",178,178),
  ("Mastercard",179,179),
  ("American Express",180,180);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",181,181),
  ("Mastercard",182,182),
  ("American Express",183,183),
  ("Visa",184,184),
  ("Mastercard",185,185),
  ("American Express",186,186),
  ("Visa",187,187),
  ("Mastercard",188,188),
  ("American Express",189,189),
  ("Visa",190,190);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",191,191),
  ("American Express",192,192),
  ("Visa",193,193),
  ("Mastercard",194,194),
  ("American Express",195,195),
  ("Visa",196,196),
  ("Mastercard",197,197),
  ("American Express",198,198),
  ("Visa",199,199),
  ("Mastercard",200,200);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",201,201),
  ("Visa",202,202),
  ("Mastercard",203,203),
  ("American Express",204,204),
  ("Visa",205,205),
  ("Mastercard",206,206),
  ("American Express",207,207),
  ("Visa",208,208),
  ("Mastercard",209,209),
  ("American Express",210,210);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",211,211),
  ("Mastercard",212,212),
  ("American Express",213,213),
  ("Visa",214,214),
  ("Mastercard",215,215),
  ("American Express",216,216),
  ("Visa",217,217),
  ("Mastercard",218,218),
  ("American Express",219,219),
  ("Visa",220,220);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",221,221),
  ("American Express",222,222),
  ("Visa",223,223),
  ("Mastercard",224,224),
  ("American Express",225,225),
  ("Visa",226,226),
  ("Mastercard",227,227),
  ("American Express",228,228),
  ("Visa",229,229),
  ("Mastercard",230,230);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",231,231),
  ("Visa",232,232),
  ("Mastercard",233,233),
  ("American Express",234,234),
  ("Visa",235,235),
  ("Mastercard",236,236),
  ("American Express",237,237),
  ("Visa",238,238),
  ("Mastercard",239,239),
  ("American Express",240,240);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",241,241),
  ("Mastercard",242,242),
  ("American Express",243,243),
  ("Visa",244,244),
  ("Mastercard",245,245),
  ("American Express",246,246),
  ("Visa",247,247),
  ("Mastercard",248,248),
  ("American Express",249,249),
  ("Visa",250,250);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",251,251),
  ("American Express",252,252),
  ("Visa",253,253),
  ("Mastercard",254,254),
  ("American Express",255,255),
  ("Visa",256,256),
  ("Mastercard",257,257),
  ("American Express",258,258),
  ("Visa",259,259),
  ("Mastercard",260,260);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",261,261),
  ("Visa",262,262),
  ("Mastercard",263,263),
  ("American Express",264,264),
  ("Visa",265,265),
  ("Mastercard",266,266),
  ("American Express",267,267),
  ("Visa",268,268),
  ("Mastercard",269,269),
  ("American Express",270,270);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",271,271),
  ("Mastercard",272,272),
  ("American Express",273,273),
  ("Visa",274,274),
  ("Mastercard",275,275),
  ("American Express",276,276),
  ("Visa",277,277),
  ("Mastercard",278,278),
  ("American Express",279,279),
  ("Visa",280,280);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",281,281),
  ("American Express",282,282),
  ("Visa",283,283),
  ("Mastercard",284,284),
  ("American Express",285,285),
  ("Visa",286,286),
  ("Mastercard",287,287),
  ("American Express",288,288),
  ("Visa",289,289),
  ("Mastercard",290,290);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",291,291),
  ("Visa",292,292),
  ("Mastercard",293,293),
  ("American Express",294,294),
  ("Visa",295,295),
  ("Mastercard",296,296),
  ("American Express",297,297),
  ("Visa",298,298),
  ("Mastercard",299,299),
  ("American Express",300,300);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",301,301),
  ("Mastercard",302,302),
  ("American Express",303,303),
  ("Visa",304,304),
  ("Mastercard",305,305),
  ("American Express",306,306),
  ("Visa",307,307),
  ("Mastercard",308,308),
  ("American Express",309,309),
  ("Visa",310,310);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",311,311),
  ("American Express",312,312),
  ("Visa",313,313),
  ("Mastercard",314,314),
  ("American Express",315,315),
  ("Visa",316,316),
  ("Mastercard",317,317),
  ("American Express",318,318),
  ("Visa",319,319),
  ("Mastercard",320,320);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",321,321),
  ("Visa",322,322),
  ("Mastercard",323,323),
  ("American Express",324,324),
  ("Visa",325,325),
  ("Mastercard",326,326),
  ("American Express",327,327),
  ("Visa",328,328),
  ("Mastercard",329,329),
  ("American Express",330,330);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",331,331),
  ("Mastercard",332,332),
  ("American Express",333,333),
  ("Visa",334,334),
  ("Mastercard",335,335),
  ("American Express",336,336),
  ("Visa",337,337),
  ("Mastercard",338,338),
  ("American Express",339,339),
  ("Visa",340,340);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",341,341),
  ("American Express",342,342),
  ("Visa",343,343),
  ("Mastercard",344,344),
  ("American Express",345,345),
  ("Visa",346,346),
  ("Mastercard",347,347),
  ("American Express",348,348),
  ("Visa",349,349),
  ("Mastercard",350,350);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",351,351),
  ("Visa",352,352),
  ("Mastercard",353,353),
  ("American Express",354,354),
  ("Visa",355,355),
  ("Mastercard",356,356),
  ("American Express",357,357),
  ("Visa",358,358),
  ("Mastercard",359,359),
  ("American Express",360,360);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",361,361),
  ("Mastercard",362,362),
  ("American Express",363,363),
  ("Visa",364,364),
  ("Mastercard",365,365),
  ("American Express",366,366),
  ("Visa",367,367),
  ("Mastercard",368,368),
  ("American Express",369,369),
  ("Visa",370,370);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",371,371),
  ("American Express",372,372),
  ("Visa",373,373),
  ("Mastercard",374,374),
  ("American Express",375,375),
  ("Visa",376,376),
  ("Mastercard",377,377),
  ("American Express",378,378),
  ("Visa",379,379),
  ("Mastercard",380,380);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",381,381),
  ("Visa",382,382),
  ("Mastercard",383,383),
  ("American Express",384,384),
  ("Visa",385,385),
  ("Mastercard",386,386),
  ("American Express",387,387),
  ("Visa",388,388),
  ("Mastercard",389,389),
  ("American Express",390,390);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",391,391),
  ("Mastercard",392,392),
  ("American Express",393,393),
  ("Visa",394,394),
  ("Mastercard",395,395),
  ("American Express",396,396),
  ("Visa",397,397),
  ("Mastercard",398,398),
  ("American Express",399,399),
  ("Visa",400,400);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",401,401),
  ("American Express",402,402),
  ("Visa",403,403),
  ("Mastercard",404,404),
  ("American Express",405,405),
  ("Visa",406,406),
  ("Mastercard",407,407),
  ("American Express",408,408),
  ("Visa",409,409),
  ("Mastercard",410,410);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",411,411),
  ("Visa",412,412),
  ("Mastercard",413,413),
  ("American Express",414,414),
  ("Visa",415,415),
  ("Mastercard",416,416),
  ("American Express",417,417),
  ("Visa",418,418),
  ("Mastercard",419,419),
  ("American Express",420,420);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",421,421),
  ("Mastercard",422,422),
  ("American Express",423,423),
  ("Visa",424,424),
  ("Mastercard",425,425),
  ("American Express",426,426),
  ("Visa",427,427),
  ("Mastercard",428,428),
  ("American Express",429,429),
  ("Visa",430,430);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",431,431),
  ("American Express",432,432),
  ("Visa",433,433),
  ("Mastercard",434,434),
  ("American Express",435,435),
  ("Visa",436,436),
  ("Mastercard",437,437),
  ("American Express",438,438),
  ("Visa",439,439),
  ("Mastercard",440,440);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",441,441),
  ("Visa",442,442),
  ("Mastercard",443,443),
  ("American Express",444,444),
  ("Visa",445,445),
  ("Mastercard",446,446),
  ("American Express",447,447),
  ("Visa",448,448),
  ("Mastercard",449,449),
  ("American Express",450,450);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",451,451),
  ("Mastercard",452,452),
  ("American Express",453,453),
  ("Visa",454,454),
  ("Mastercard",455,455),
  ("American Express",456,456),
  ("Visa",457,457),
  ("Mastercard",458,458),
  ("American Express",459,459),
  ("Visa",460,460);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",461,461),
  ("American Express",462,462),
  ("Visa",463,463),
  ("Mastercard",464,464),
  ("American Express",465,465),
  ("Visa",466,466),
  ("Mastercard",467,467),
  ("American Express",468,468),
  ("Visa",469,469),
  ("Mastercard",470,470);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("American Express",471,471),
  ("Visa",472,472),
  ("Mastercard",473,473),
  ("American Express",474,474),
  ("Visa",475,475),
  ("Mastercard",476,476),
  ("American Express",477,477),
  ("Visa",478,478),
  ("Mastercard",479,479),
  ("American Express",480,480);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Visa",481,481),
  ("Mastercard",482,482),
  ("American Express",483,483),
  ("Visa",484,484),
  ("Mastercard",485,485),
  ("American Express",486,486),
  ("Visa",487,487),
  ("Mastercard",488,488),
  ("American Express",489,489),
  ("Visa",490,490);
INSERT INTO `card_brand` (`card_brand_description`,`card_brand_id`,`customer_id`)
VALUES
  ("Mastercard",491,491),
  ("American Express",492,492),
  ("Visa",493,493),
  ("Mastercard",494,494),
  ("American Express",495,495),
  ("Visa",496,496),
  ("Mastercard",497,497),
  ("American Express",498,498),
  ("Visa",499,499),
  ("Mastercard",500,500);

INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (1,1,"448565 8928672467","887","03-06-14","04-05-26",1),
  (2,2,"4532 743 26 9427","442","05-11-14","17-05-29",2),
  (3,3,"4656 443 82 8727","420","20-09-13","10-06-22",3),
  (4,4,"524956 964468 5427","135","17-07-14","08-01-25",4),
  (5,5,"555 31835 22644 439","310","16-03-16","01-12-27",5),
  (6,6,"544 82677 97687 345","958","27-03-15","21-11-25",6),
  (7,7,"5164 8935 6377 7580","710","03-08-22","27-07-27",7),
  (8,8,"3754 651538 44381","876","24-11-21","25-04-24",8),
  (9,9,"5233 9921 2822 6872","829","21-11-18","26-05-22",9),
  (10,10,"448 57676 58832 934","995","18-10-17","21-02-22",10);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (11,11,"525 38714 95216 531","506","20-09-11","29-07-22",11),
  (12,12,"5298265235644481","950","26-02-17","27-07-28",12),
  (13,13,"3436 658421 51671","674","08-08-18","13-10-26",13),
  (14,14,"379966379927468","608","19-01-20","30-12-22",14),
  (15,15,"5333 7681 5135 3943","340","29-03-19","10-04-25",15),
  (16,16,"453296 2283735288","188","26-09-11","14-06-27",16),
  (17,17,"3434 159337 63343","478","29-05-18","25-02-28",17),
  (18,18,"345229484546520","449","12-05-19","04-06-23",18),
  (19,19,"3715 193554 45357","150","15-08-11","05-07-25",19),
  (20,20,"557 25711 51423 827","709","08-05-18","18-10-24",20);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (21,21,"4485626472995279","411","24-03-15","31-12-24",21),
  (22,22,"535227 3262235754","441","30-11-19","02-01-27",22),
  (23,23,"378937457691442","660","14-10-15","25-12-21",23),
  (24,24,"492959 5462868867","376","21-06-23","02-06-29",24),
  (25,25,"3429 538289 41575","696","25-09-19","19-08-23",25),
  (26,26,"378813679881576","266","02-02-22","19-01-28",26),
  (27,27,"372131897663486","166","27-10-14","20-02-23",27),
  (28,28,"4024 007 17 8841","125","07-01-20","08-05-27",28),
  (29,29,"346285567423689","139","04-08-22","30-06-23",29),
  (30,30,"3725 353742 99368","582","29-05-18","15-10-27",30);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (31,31,"536728 9184311567","608","04-05-21","29-03-28",31),
  (32,32,"4916882483297","143","06-04-23","22-05-28",32),
  (33,33,"453 97686 65971 281","729","14-12-10","27-06-24",33),
  (34,34,"4556 6653 6434 6138","115","06-05-11","09-03-23",34),
  (35,35,"4916786243342","490","03-03-12","18-06-25",35),
  (36,36,"5436682362667239","534","01-02-13","11-01-23",36),
  (37,37,"3738 675885 64181","199","12-03-21","25-05-25",37),
  (38,38,"3769 766557 25265","734","14-06-18","26-01-23",38),
  (39,39,"5365 2224 2355 9185","716","05-09-10","21-09-26",39),
  (40,40,"544 56862 53426 380","939","25-04-22","22-04-24",40);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (41,41,"5356 9837 2333 2257","418","01-07-14","20-03-25",41),
  (42,42,"3443 666831 46826","486","16-11-19","03-10-28",42),
  (43,43,"4024007146676942","458","13-08-18","24-09-21",43),
  (44,44,"5378845523473470","413","14-02-21","27-09-21",44),
  (45,45,"455643 435723 8558","228","15-07-17","18-01-23",45),
  (46,46,"344338257886178","794","18-02-14","31-05-23",46),
  (47,47,"538885 2535337451","300","03-05-17","19-10-25",47),
  (48,48,"512 84764 64663 623","674","08-06-16","21-07-29",48),
  (49,49,"558456 175473 3355","484","04-03-22","05-11-28",49),
  (50,50,"3452 974746 18757","876","22-06-12","25-08-21",50);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (51,51,"4532 364 88 4553","526","01-07-12","04-12-27",51),
  (52,52,"4485 7484 7831 9542","537","20-04-12","23-12-25",52),
  (53,53,"4842 423 78 2676","653","07-08-13","08-05-29",53),
  (54,54,"551 45293 36656 597","290","01-01-13","16-09-25",54),
  (55,55,"3472 728647 47357","755","22-05-21","26-01-29",55),
  (56,56,"5294851973885628","277","10-02-16","13-06-24",56),
  (57,57,"448565 589737 8431","799","19-10-14","28-12-24",57),
  (58,58,"453266 375446 2861","961","14-07-21","21-06-24",58),
  (59,59,"4636778488842231","344","09-12-10","02-01-27",59),
  (60,60,"4916335756917699","894","07-05-22","08-05-22",60);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (61,61,"524567 587952 4670","299","17-09-21","13-01-25",61),
  (62,62,"5494764653594691","825","11-07-21","21-05-28",62),
  (63,63,"544322 714152 7543","414","26-07-15","12-12-26",63),
  (64,64,"545216 7764583761","578","23-11-11","15-05-22",64),
  (65,65,"3738 743547 22746","219","12-10-17","23-06-22",65),
  (66,66,"402400 716488 2695","435","01-09-13","05-04-28",66),
  (67,67,"471664 5779398236","501","18-06-20","09-07-25",67),
  (68,68,"4462 1969 7657 4670","906","11-12-15","11-06-29",68),
  (69,69,"346443886787561","623","20-03-15","23-05-27",69),
  (70,70,"4916 4873 6566 3253","471","23-03-17","06-04-24",70);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (71,71,"3782 357768 42360","988","04-07-14","18-06-26",71),
  (72,72,"542 56584 26743 227","199","17-09-21","28-05-27",72),
  (73,73,"5578765543444368","829","18-09-13","18-09-28",73),
  (74,74,"547865 3517537675","447","08-11-15","17-05-25",74),
  (75,75,"557982 4864251867","529","30-06-15","27-02-28",75),
  (76,76,"536 71637 14678 458","249","17-11-12","11-09-28",76),
  (77,77,"3748 416688 52674","189","16-05-13","31-08-28",77),
  (78,78,"347684244417750","226","30-03-16","31-08-23",78),
  (79,79,"4485 1472 4771 8565","675","02-10-12","11-05-26",79),
  (80,80,"448546 542353 1549","714","10-11-14","02-03-28",80);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (81,81,"4793653749275","607","28-03-20","09-03-25",81),
  (82,82,"5147687922742570","610","07-01-17","24-12-22",82),
  (83,83,"377755497756434","411","26-12-17","28-04-27",83),
  (84,84,"422 75251 31336 466","636","29-09-12","07-07-27",84),
  (85,85,"4024 007 13 8191","623","26-01-23","24-11-27",85),
  (86,86,"4929 677 76 8632","243","27-03-18","17-02-27",86),
  (87,87,"373384376636379","528","09-07-21","17-03-28",87),
  (88,88,"538 75144 59433 648","915","23-07-12","27-09-23",88),
  (89,89,"4539 241 42 3687","618","10-04-18","21-10-27",89),
  (90,90,"3794 688483 52170","749","22-07-19","13-09-24",90);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (91,91,"4532 4925 7442 7221","909","06-05-14","09-07-25",91),
  (92,92,"542329 4289669291","224","25-12-22","21-08-21",92),
  (93,93,"529298 7335332438","961","24-03-15","04-06-29",93),
  (94,94,"3732 728347 66559","541","20-03-11","08-06-27",94),
  (95,95,"3781 745452 38255","952","22-01-17","07-08-28",95),
  (96,96,"4916358942452678","916","11-04-18","02-05-24",96),
  (97,97,"3493 343635 79794","610","01-12-22","20-11-23",97),
  (98,98,"4485 7237 5246 1187","655","16-11-12","23-12-21",98),
  (99,99,"4539297265222","363","15-06-18","08-01-24",99),
  (100,100,"374528343735883","453","23-05-12","25-10-22",100);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (101,101,"5142932374547548","478","21-07-18","31-01-23",101),
  (102,102,"5132136544311692","469","21-05-20","22-07-25",102),
  (103,103,"3743 587563 22833","519","27-03-19","19-12-22",103),
  (104,104,"4235752328635","495","02-10-22","28-09-21",104),
  (105,105,"4916 663 78 5340","649","03-02-23","18-07-25",105),
  (106,106,"5426 1385 5589 3258","976","27-12-16","25-07-29",106),
  (107,107,"4929 4471 3611 4254","592","25-04-15","29-12-26",107),
  (108,108,"3415 656553 25861","963","15-02-22","12-07-22",108),
  (109,109,"487426 167966 4624","670","12-09-14","31-07-24",109),
  (110,110,"525721 335253 4332","308","13-07-23","30-12-22",110);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (111,111,"4916 446 87 5749","786","30-09-14","23-02-29",111),
  (112,112,"4929 349 39 6176","399","15-04-17","15-08-25",112),
  (113,113,"341682858778711","735","13-08-12","12-03-23",113),
  (114,114,"377264545277253","336","05-01-21","01-07-28",114),
  (115,115,"3721 523557 27381","704","12-02-18","16-07-27",115),
  (116,116,"3487 446288 37871","762","18-01-19","03-01-22",116),
  (117,117,"556 48582 81456 615","511","25-07-17","27-10-23",117),
  (118,118,"557538 4745432412","560","07-10-11","20-12-21",118),
  (119,119,"558 76878 58326 437","839","16-03-12","24-08-24",119),
  (120,120,"3432 393385 89487","294","14-05-15","09-12-23",120);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (121,121,"517753 583528 4284","818","15-09-20","02-02-28",121),
  (122,122,"343236773545479","558","08-07-15","26-08-25",122),
  (123,123,"4716556228449845","406","30-12-22","07-08-24",123),
  (124,124,"344143664786882","314","06-08-21","22-06-25",124),
  (125,125,"4539374616487","256","04-02-13","10-10-23",125),
  (126,126,"4539767534149","427","09-07-22","28-03-25",126),
  (127,127,"378824787186360","885","30-08-14","02-06-27",127),
  (128,128,"522554 7464659241","705","01-10-10","26-12-22",128),
  (129,129,"3766 273542 25392","413","19-04-21","06-01-25",129),
  (130,130,"4532 5295 2119 2299","995","09-06-23","16-02-27",130);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (131,131,"5128576442693251","153","08-12-18","18-12-28",131),
  (132,132,"523326 931425 5951","496","05-03-21","22-05-25",132),
  (133,133,"515 98624 45235 411","204","27-06-17","10-03-28",133),
  (134,134,"4716 1753 5446 3692","265","06-10-22","01-10-25",134),
  (135,135,"3724 127771 48560","932","14-10-14","12-08-28",135),
  (136,136,"4556456382226","343","13-10-11","05-10-24",136),
  (137,137,"527597 425441 1683","215","14-04-18","21-05-28",137),
  (138,138,"376422828734942","239","05-01-18","25-03-29",138),
  (139,139,"527765 4248266280","263","26-09-14","14-03-27",139),
  (140,140,"531193 839421 5870","586","17-07-11","04-12-24",140);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (141,141,"343134668654284","933","16-05-19","21-12-23",141),
  (142,142,"4485 2232 1345 3790","443","18-03-15","20-03-27",142),
  (143,143,"3432 567978 76759","442","13-12-13","25-04-27",143),
  (144,144,"534143 5382824346","645","08-07-13","15-08-27",144),
  (145,145,"4556 872 52 8980","345","01-10-11","28-12-27",145),
  (146,146,"453 93298 46784 182","787","10-11-10","05-05-27",146),
  (147,147,"377777858133821","143","10-03-16","10-02-27",147),
  (148,148,"4294576836356","471","06-06-16","27-06-27",148),
  (149,149,"349918283548739","831","21-03-23","02-11-24",149),
  (150,150,"4532 754 47 4619","178","11-05-13","22-07-25",150);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (151,151,"524736 258668 8225","881","19-01-14","02-05-22",151),
  (152,152,"4138 325 52 8840","910","22-02-18","22-09-26",152),
  (153,153,"4024 0071 9548 2853","483","14-10-12","01-03-27",153),
  (154,154,"4916 7535 2749 6662","351","02-04-17","16-01-24",154),
  (155,155,"4556932585228","167","28-04-20","11-01-27",155),
  (156,156,"342987322684323","156","20-11-22","21-02-29",156),
  (157,157,"453946 2498887662","922","31-12-18","14-06-27",157),
  (158,158,"545 47789 19868 671","588","29-01-22","13-10-24",158),
  (159,159,"448 53246 91533 598","590","20-02-20","18-09-27",159),
  (160,160,"371686357973726","788","17-08-10","27-01-22",160);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (161,161,"402 40071 58616 588","281","22-10-21","11-11-27",161),
  (162,162,"4929588653343774","843","16-12-11","20-06-27",162),
  (163,163,"519887 2734378478","281","04-05-20","17-09-23",163),
  (164,164,"5357825154245988","852","17-05-20","25-07-25",164),
  (165,165,"5478597535754459","626","08-02-11","26-12-26",165),
  (166,166,"5141143214237453","668","08-01-21","12-04-27",166),
  (167,167,"5184999752516493","259","05-11-16","19-09-26",167),
  (168,168,"556 78546 75367 382","743","19-05-15","24-08-21",168),
  (169,169,"5562223226259669","560","16-09-15","29-01-26",169),
  (170,170,"519 31995 48984 829","192","04-03-23","18-01-22",170);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (171,171,"538 76495 53698 868","902","12-05-19","03-08-26",171),
  (172,172,"453252 6642646153","498","10-07-19","28-09-23",172),
  (173,173,"542 32653 22782 440","333","09-04-11","26-04-24",173),
  (174,174,"4266647889648","585","15-02-20","20-10-24",174),
  (175,175,"5275232355386472","390","24-08-16","11-01-27",175),
  (176,176,"4024 0071 3641 5459","391","27-03-22","28-09-27",176),
  (177,177,"5262924644323366","858","28-06-22","03-04-27",177),
  (178,178,"455672 2175539185","508","02-11-11","16-09-25",178),
  (179,179,"4539787558623","938","13-04-14","28-12-23",179),
  (180,180,"491645 6833149815","901","12-02-20","09-09-28",180);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (181,181,"448563 762419 7458","776","16-03-19","10-10-25",181),
  (182,182,"3775 436536 23261","470","08-09-10","26-06-29",182),
  (183,183,"491 66574 21316 522","803","06-07-14","11-03-27",183),
  (184,184,"4532 362 33 6119","262","13-10-18","15-02-24",184),
  (185,185,"4539 1687 6854 3535","876","27-04-19","01-05-22",185),
  (186,186,"3473 548652 27124","160","04-03-17","31-03-25",186),
  (187,187,"4556 665 62 4558","265","21-01-19","02-07-29",187),
  (188,188,"453986 4894496941","890","23-01-13","04-08-22",188),
  (189,189,"448524 6858498242","497","30-05-17","21-04-24",189),
  (190,190,"537558 1352152280","147","13-11-20","14-02-29",190);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (191,191,"472 84889 86983 896","238","24-02-23","25-07-29",191),
  (192,192,"545 17846 41225 753","898","26-10-16","23-12-22",192),
  (193,193,"348247152735537","309","14-02-19","01-05-28",193),
  (194,194,"377764222766569","263","13-05-22","18-01-29",194),
  (195,195,"453 28574 77468 433","686","04-11-21","23-10-24",195),
  (196,196,"373554386672552","767","18-05-20","02-09-28",196),
  (197,197,"5519 1893 7688 7373","599","15-03-23","19-12-26",197),
  (198,198,"4539 2784 9657 2829","528","28-11-20","13-07-24",198),
  (199,199,"3732 664393 36420","672","25-10-19","10-08-21",199),
  (200,200,"4929 666 14 5370","877","03-06-11","27-12-28",200);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (201,201,"491671 614535 3938","160","17-06-11","14-03-29",201),
  (202,202,"4024007155914","453","24-05-13","06-08-24",202),
  (203,203,"372327871446480","297","25-12-14","23-03-22",203),
  (204,204,"532 74349 69164 844","974","14-12-15","21-12-24",204),
  (205,205,"516183 5486198728","200","20-12-11","20-10-24",205),
  (206,206,"5219482862862593","782","20-08-21","13-10-25",206),
  (207,207,"491 67974 38561 528","344","26-06-23","29-03-25",207),
  (208,208,"4716 884 45 2872","625","14-03-23","23-01-27",208),
  (209,209,"514729 9239241492","214","17-11-12","05-12-23",209),
  (210,210,"4716134883531735","389","22-04-11","21-08-28",210);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (211,211,"3471 491688 94392","722","20-10-15","21-02-27",211),
  (212,212,"5144 6545 6514 2842","194","19-09-22","05-11-23",212),
  (213,213,"343584283531541","604","21-07-13","11-12-21",213),
  (214,214,"527528 8585627861","448","16-11-13","03-02-24",214),
  (215,215,"529647 883869 1393","264","19-03-23","21-07-24",215),
  (216,216,"518888 384786 5584","789","18-08-22","04-10-26",216),
  (217,217,"5274968238457730","660","04-04-21","09-01-23",217),
  (218,218,"3428 215582 77694","661","18-08-18","20-12-28",218),
  (219,219,"3497 138359 79544","794","24-11-18","22-06-27",219),
  (220,220,"544 75844 44236 677","366","16-10-10","08-08-23",220);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (221,221,"3788 869225 76482","764","18-07-23","02-06-26",221),
  (222,222,"455 61566 82438 344","136","04-09-11","30-04-26",222),
  (223,223,"3455 662723 23616","772","11-09-14","08-01-26",223),
  (224,224,"3782 667777 75879","481","20-06-15","21-04-28",224),
  (225,225,"347642874221371","370","17-03-17","30-12-25",225),
  (226,226,"554686 748863 9686","413","23-02-21","02-04-29",226),
  (227,227,"3465 622646 32360","653","18-09-14","09-09-24",227),
  (228,228,"545224 329629 7756","834","23-07-13","15-11-25",228),
  (229,229,"526935 375714 7672","526","30-06-23","23-12-26",229),
  (230,230,"551465 8548414253","514","22-03-21","03-04-23",230);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (231,231,"525 55156 52527 788","886","10-01-15","07-07-24",231),
  (232,232,"3468 562642 48924","355","14-10-20","01-10-28",232),
  (233,233,"371382677888261","410","14-02-11","28-05-29",233),
  (234,234,"515365 368272 5180","215","10-09-18","15-01-28",234),
  (235,235,"3468 384287 66660","704","27-10-18","26-09-26",235),
  (236,236,"3713 244973 25371","438","26-01-15","30-09-28",236),
  (237,237,"3479 124347 56335","616","06-06-17","22-09-23",237),
  (238,238,"4748 7962 5236 5143","538","11-10-19","25-03-27",238),
  (239,239,"5332465318671744","631","01-06-23","02-01-29",239),
  (240,240,"5262627325822859","618","10-01-18","28-02-24",240);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (241,241,"4929 6212 1854 8411","892","04-12-14","03-02-29",241),
  (242,242,"512653 359865 7574","144","26-04-11","05-03-26",242),
  (243,243,"5522 7547 2428 3735","678","24-10-18","27-10-26",243),
  (244,244,"4716 4787 2916 4270","665","13-04-11","18-09-27",244),
  (245,245,"376934514824571","264","30-11-21","09-12-28",245),
  (246,246,"341164174526785","948","26-02-14","17-07-26",246),
  (247,247,"3738 654273 34766","694","14-04-19","17-03-29",247),
  (248,248,"3428 878744 78241","223","19-04-14","18-10-21",248),
  (249,249,"3444 587465 82764","468","28-02-14","30-03-27",249),
  (250,250,"3727 367576 53565","620","17-11-14","26-10-25",250);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (251,251,"3465 686844 68798","599","09-08-18","30-10-22",251),
  (252,252,"448547 733859 4132","129","17-10-18","30-11-27",252),
  (253,253,"455 67381 66646 748","370","03-05-11","30-07-24",253),
  (254,254,"511 69386 63662 973","265","12-01-23","10-12-24",254),
  (255,255,"4288925734924","587","25-08-11","06-07-29",255),
  (256,256,"4539415788255776","591","19-01-16","30-09-21",256),
  (257,257,"448 54116 38956 436","386","24-08-19","12-08-28",257),
  (258,258,"3741 931266 64246","240","22-08-21","14-11-21",258),
  (259,259,"559 75429 22627 344","903","24-04-11","15-11-28",259),
  (260,260,"446827 4748682560","882","03-08-17","12-11-21",260);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (261,261,"4929582972162","890","13-09-22","20-10-25",261),
  (262,262,"378625338567556","247","23-07-22","09-12-28",262),
  (263,263,"471691 987836 4625","791","06-01-18","05-12-24",263),
  (264,264,"4694 949 75 9328","561","17-03-20","17-12-25",264),
  (265,265,"373687324137351","460","11-05-16","05-02-27",265),
  (266,266,"4485452345781","166","25-06-21","12-01-23",266),
  (267,267,"5515932684837174","308","20-12-15","18-12-28",267),
  (268,268,"453211 565273 3422","677","12-04-11","27-10-24",268),
  (269,269,"4532376648467","958","27-12-21","26-10-27",269),
  (270,270,"5128 8852 5988 4758","363","24-05-13","09-07-26",270);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (271,271,"413 24277 44169 588","792","22-06-12","24-04-27",271),
  (272,272,"471 63516 37428 451","551","18-02-16","04-01-22",272),
  (273,273,"536 51326 26822 969","383","09-05-13","17-02-27",273),
  (274,274,"448543 267422 7896","512","11-03-18","12-06-25",274),
  (275,275,"4485768379649","282","10-01-19","01-07-27",275),
  (276,276,"3481 535265 72897","192","14-06-16","19-11-23",276),
  (277,277,"3465 654651 59315","739","14-02-16","16-09-26",277),
  (278,278,"5118626124639346","707","16-02-14","20-06-22",278),
  (279,279,"548 54845 48112 564","149","25-03-21","26-04-23",279),
  (280,280,"5351186852416652","873","20-03-12","22-02-27",280);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (281,281,"557783 529255 7834","243","01-04-13","11-06-28",281),
  (282,282,"528612 7728117249","259","11-06-11","24-05-22",282),
  (283,283,"3743 143355 76589","519","19-11-14","01-03-22",283),
  (284,284,"341831718517443","127","13-08-21","24-10-28",284),
  (285,285,"3437 162565 78899","905","02-04-18","07-02-28",285),
  (286,286,"5126 8686 4685 2276","546","30-07-16","03-12-23",286),
  (287,287,"374827169297386","540","21-02-13","19-11-28",287),
  (288,288,"521789 3123778273","896","19-07-18","28-06-24",288),
  (289,289,"515573 8595227255","921","16-02-11","25-01-24",289),
  (290,290,"5546 1711 4415 4341","146","12-08-19","09-08-21",290);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (291,291,"5242855834131216","307","19-07-18","31-03-28",291),
  (292,292,"492936 357244 8264","418","16-09-13","08-04-23",292),
  (293,293,"3766 763596 72397","483","23-08-13","26-03-29",293),
  (294,294,"3454 387528 71813","883","17-01-23","08-11-28",294),
  (295,295,"349517666215385","182","25-11-17","18-02-24",295),
  (296,296,"554574 2357748671","277","03-06-17","12-12-27",296),
  (297,297,"512227 872966 5872","467","18-05-14","23-10-22",297),
  (298,298,"455678 4166329620","966","09-11-22","14-09-23",298),
  (299,299,"3719 437843 95654","651","28-12-12","14-07-28",299),
  (300,300,"3728 335244 88886","737","20-01-20","17-08-27",300);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (301,301,"4368 537 59 6513","683","01-06-23","03-04-25",301),
  (302,302,"518374 379718 8277","773","10-07-19","15-04-24",302),
  (303,303,"5385226864515834","522","23-09-14","17-09-21",303),
  (304,304,"342838549229857","632","02-08-20","22-04-29",304),
  (305,305,"376832148824571","861","13-01-23","26-08-27",305),
  (306,306,"3485 627624 74883","682","03-10-21","24-12-26",306),
  (307,307,"3428 988579 94872","609","26-10-11","21-05-28",307),
  (308,308,"488725 5866354358","908","17-04-18","14-04-25",308),
  (309,309,"453957 6531523966","250","06-05-21","20-06-24",309),
  (310,310,"5224 5654 8686 9532","978","12-01-17","30-10-26",310);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (311,311,"444586 4645758535","288","03-02-22","22-06-28",311),
  (312,312,"373633367735370","260","20-12-11","09-08-25",312),
  (313,313,"427 67472 73783 244","170","05-05-12","31-05-25",313),
  (314,314,"4024 007 16 6325","332","15-07-19","10-11-28",314),
  (315,315,"3783 164434 88157","291","15-03-21","17-11-24",315),
  (316,316,"374574553174355","275","03-04-18","23-08-22",316),
  (317,317,"448 54382 45995 531","845","17-11-18","19-09-25",317),
  (318,318,"4916 5932 1243 5231","951","28-09-16","24-06-29",318),
  (319,319,"3757 846732 88451","779","20-03-21","07-06-29",319),
  (320,320,"4276 4741 2286 1531","845","11-12-11","14-05-23",320);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (321,321,"5243 5523 5856 6948","486","11-02-12","01-11-22",321),
  (322,322,"5388 5167 6724 8765","898","31-03-16","20-03-25",322),
  (323,323,"344237633248758","132","01-03-12","05-03-26",323),
  (324,324,"5334344684257222","788","08-09-18","03-09-27",324),
  (325,325,"3483 448465 57847","166","13-08-12","28-02-24",325),
  (326,326,"3446 283679 23527","451","27-12-15","30-01-23",326),
  (327,327,"529432 768318 9866","754","05-06-16","22-04-23",327),
  (328,328,"534124 1781518251","673","28-12-21","07-09-25",328),
  (329,329,"471684 729559 4658","489","31-07-19","24-03-24",329),
  (330,330,"3462 782846 89278","446","25-11-14","03-05-29",330);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (331,331,"376828272743447","781","26-10-15","30-12-27",331),
  (332,332,"5428236458911744","604","29-01-20","16-05-24",332),
  (333,333,"4929 4883 3272 3779","436","07-03-19","08-11-23",333),
  (334,334,"346524765783423","546","28-09-14","12-04-24",334),
  (335,335,"535542 7651524460","412","11-08-20","02-03-22",335),
  (336,336,"402400 7113552662","364","15-08-22","16-01-22",336),
  (337,337,"4532573736446","218","09-03-11","21-12-27",337),
  (338,338,"5338 9786 7559 7975","414","11-02-23","21-08-21",338),
  (339,339,"3745 122626 38526","198","02-06-12","20-01-26",339),
  (340,340,"471 63557 22125 328","671","17-08-11","12-05-22",340);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (341,341,"4365375434296633","401","25-12-10","04-04-25",341),
  (342,342,"544344 6638882761","878","01-03-23","23-06-22",342),
  (343,343,"555233 591564 4613","951","07-06-13","22-06-26",343),
  (344,344,"378848452687246","780","26-03-22","21-09-24",344),
  (345,345,"5425341735829835","906","13-04-19","13-12-25",345),
  (346,346,"349366148415563","566","14-12-14","17-06-24",346),
  (347,347,"558366 885338 5218","764","20-05-22","09-05-28",347),
  (348,348,"4485668578869511","774","30-04-18","23-06-25",348),
  (349,349,"4684841444996","429","11-11-16","11-11-23",349),
  (350,350,"555576 7321847223","452","04-09-17","22-06-28",350);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (351,351,"4469 5524 5741 1951","614","05-09-15","20-05-23",351),
  (352,352,"4916 1566 8379 8642","922","22-06-13","02-10-26",352),
  (353,353,"3418 465227 84963","484","01-07-13","01-12-26",353),
  (354,354,"515 86254 86976 420","998","24-03-16","07-08-27",354),
  (355,355,"373677614192547","519","10-02-15","18-11-26",355),
  (356,356,"4929486987134","962","23-07-20","07-01-22",356),
  (357,357,"4929 3874 8146 7511","362","09-02-23","07-12-22",357),
  (358,358,"349386321617488","209","03-12-15","01-01-22",358),
  (359,359,"5311144362863789","534","05-02-19","25-11-21",359),
  (360,360,"453284 4625451941","237","17-06-21","19-10-23",360);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (361,361,"3438 279543 63441","120","23-09-20","09-10-24",361),
  (362,362,"556 82383 43483 871","302","01-04-21","08-02-22",362),
  (363,363,"4024007176290","700","11-08-11","30-06-22",363),
  (364,364,"3763 223738 38876","812","15-08-12","10-02-22",364),
  (365,365,"379471714416384","579","23-10-16","03-07-25",365),
  (366,366,"402400 7154226473","508","18-04-22","08-06-29",366),
  (367,367,"491632 466641 8261","323","20-12-12","23-02-22",367),
  (368,368,"554557 184346 6170","412","11-03-14","18-02-25",368),
  (369,369,"3744 549726 43480","241","18-01-13","28-03-24",369),
  (370,370,"546687 3248422963","395","06-12-12","12-08-24",370);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (371,371,"3488 976893 53228","315","21-12-14","26-05-23",371),
  (372,372,"541 76522 38176 494","388","20-01-17","23-03-28",372),
  (373,373,"558328 1357313767","466","28-04-21","21-01-24",373),
  (374,374,"512368 6328766645","260","11-04-15","29-11-26",374),
  (375,375,"3422 227884 35667","693","12-06-11","29-10-22",375),
  (376,376,"3752 163286 74272","584","30-05-14","12-01-26",376),
  (377,377,"4485466242651","384","16-04-21","29-07-27",377),
  (378,378,"3744 752336 14937","196","17-12-17","18-04-26",378),
  (379,379,"471686 345328 7274","771","31-10-19","15-11-26",379),
  (380,380,"453275 8345332621","239","30-06-13","06-05-22",380);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (381,381,"5232745151826765","360","22-06-15","22-08-21",381),
  (382,382,"518629 953157 6365","477","11-02-15","03-02-24",382),
  (383,383,"4556578793225684","888","23-06-23","01-11-21",383),
  (384,384,"455 62767 88856 197","221","17-01-17","14-07-29",384),
  (385,385,"344717287717489","230","05-02-12","12-01-23",385),
  (386,386,"5557328748729870","938","20-10-18","15-07-23",386),
  (387,387,"425786 7787482134","134","24-05-16","18-11-21",387),
  (388,388,"521484 3838577760","688","15-09-17","09-02-23",388),
  (389,389,"453 97316 74388 640","295","19-03-21","16-05-24",389),
  (390,390,"4916 762 98 7359","947","30-04-12","21-04-24",390);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (391,391,"5412784874788335","888","23-03-15","24-10-21",391),
  (392,392,"3497 842553 79135","289","26-01-14","13-12-28",392),
  (393,393,"4485535464567","259","02-08-14","07-08-22",393),
  (394,394,"346378791593227","296","24-09-11","20-04-26",394),
  (395,395,"535824 263187 6469","666","22-02-15","17-11-27",395),
  (396,396,"5153 3694 9245 6359","383","04-12-17","24-05-29",396),
  (397,397,"377964256621280","355","04-10-15","26-02-28",397),
  (398,398,"481832 937278 2883","887","07-05-22","12-11-27",398),
  (399,399,"3758 826772 58817","482","18-12-17","04-02-22",399),
  (400,400,"544515 2737551459","195","28-02-13","20-04-28",400);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (401,401,"4556484868659","341","16-09-12","01-11-26",401),
  (402,402,"376574695197353","994","03-11-22","07-02-24",402),
  (403,403,"5562 5722 5922 4721","785","17-12-12","21-07-25",403),
  (404,404,"555224 911775 5939","195","07-08-19","14-09-26",404),
  (405,405,"4556 857 67 4122","491","17-07-23","24-08-28",405),
  (406,406,"533 85435 44842 117","975","19-05-22","14-08-21",406),
  (407,407,"4539493984887676","159","19-11-13","28-04-26",407),
  (408,408,"3745 596436 25318","887","08-07-18","22-01-24",408),
  (409,409,"545 58689 41436 263","864","09-11-18","07-05-22",409),
  (410,410,"347337366494780","499","28-08-22","12-11-22",410);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (411,411,"5353 1461 5163 2225","166","01-07-15","06-03-25",411),
  (412,412,"538 64452 28416 682","182","02-06-22","08-03-27",412),
  (413,413,"556323 759215 5821","851","05-09-13","10-12-22",413),
  (414,414,"4024007182744","958","17-12-12","17-02-27",414),
  (415,415,"5333663829793820","388","24-12-12","19-07-23",415),
  (416,416,"348886287585828","405","01-10-22","05-12-27",416),
  (417,417,"492936 3357351683","564","30-10-14","25-03-26",417),
  (418,418,"3462 927266 77312","922","31-08-14","08-08-28",418),
  (419,419,"542381 774231 6223","288","25-06-19","07-04-28",419),
  (420,420,"5438 7771 7552 3443","977","11-02-18","13-04-23",420);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (421,421,"5445556677487435","845","30-10-22","24-08-28",421),
  (422,422,"541512 584843 8887","205","04-11-18","13-09-23",422),
  (423,423,"4556868381534971","669","18-06-23","03-02-23",423),
  (424,424,"448 59562 23536 522","558","23-05-22","13-09-23",424),
  (425,425,"4485434239886331","268","27-06-13","28-03-27",425),
  (426,426,"376125471856462","510","29-08-11","24-01-26",426),
  (427,427,"518 84455 22188 557","519","14-01-15","16-09-25",427),
  (428,428,"374889737595170","562","15-05-11","04-05-27",428),
  (429,429,"519349 768278 7721","461","23-01-12","10-02-27",429),
  (430,430,"3738 275574 88531","292","26-01-23","23-03-27",430);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (431,431,"533 42378 48678 459","623","11-02-12","06-09-23",431),
  (432,432,"379633932274271","437","09-05-13","29-12-25",432),
  (433,433,"372243672326997","532","31-12-19","01-11-27",433),
  (434,434,"4716857466263363","624","19-10-10","25-08-25",434),
  (435,435,"378536925575672","156","06-01-17","25-04-25",435),
  (436,436,"5279978496635989","161","12-02-18","12-08-25",436),
  (437,437,"3747 664958 75137","969","10-06-15","06-03-29",437),
  (438,438,"5478655755456484","254","25-05-20","12-12-27",438),
  (439,439,"4532 8274 2433 7585","743","20-08-11","11-03-26",439),
  (440,440,"529 93457 36353 839","161","11-01-21","22-10-22",440);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (441,441,"376865861573512","595","23-10-17","22-06-26",441),
  (442,442,"4716467588489852","826","03-02-23","12-10-21",442),
  (443,443,"3464 232982 76452","138","16-10-13","03-09-28",443),
  (444,444,"5335 4664 5327 8813","316","21-10-18","30-07-27",444),
  (445,445,"534 98398 69483 850","137","06-03-12","30-06-28",445),
  (446,446,"5434 8454 6282 2358","248","29-08-16","27-12-26",446),
  (447,447,"3446 777672 64396","746","14-02-23","07-11-24",447),
  (448,448,"517235 175773 2861","202","06-09-13","24-05-22",448),
  (449,449,"4929 8589 8546 8387","644","14-06-21","06-06-28",449),
  (450,450,"345848728427898","473","06-10-21","24-05-22",450);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (451,451,"529214 728613 3927","861","06-06-15","19-01-22",451),
  (452,452,"3779 798866 95371","472","14-01-18","19-08-28",452),
  (453,453,"345567356787460","396","26-03-16","24-09-28",453),
  (454,454,"371477744918743","324","21-05-22","04-07-24",454),
  (455,455,"3725 542564 36410","785","11-05-21","04-06-28",455),
  (456,456,"3745 276243 33681","343","18-09-15","26-10-21",456),
  (457,457,"5557537434938476","485","18-09-19","17-05-28",457),
  (458,458,"5121255322835533","371","02-05-15","28-09-27",458),
  (459,459,"512873 898319 8831","769","29-08-19","26-02-29",459),
  (460,460,"453 24689 54279 325","474","12-10-10","10-07-28",460);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (461,461,"5388439518241445","756","22-03-19","28-06-24",461),
  (462,462,"344534495385672","821","20-07-12","17-07-22",462),
  (463,463,"342758216672330","763","14-09-13","07-11-28",463),
  (464,464,"515696 5374847339","252","05-09-10","06-07-24",464),
  (465,465,"3476 825734 81538","295","15-08-11","16-11-28",465),
  (466,466,"4556536237634226","712","27-12-21","06-04-23",466),
  (467,467,"378869482254419","728","20-05-20","05-03-26",467),
  (468,468,"556264 6184483345","628","04-10-18","19-07-22",468),
  (469,469,"3786 658289 54278","548","07-03-12","29-01-23",469),
  (470,470,"475741 8472114676","901","26-08-18","07-05-26",470);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (471,471,"343626384898798","924","22-06-18","17-09-24",471),
  (472,472,"5356 3693 3615 4447","683","18-11-14","31-12-22",472),
  (473,473,"543156 362842 3796","931","16-11-17","08-06-27",473),
  (474,474,"492968 779773 4516","278","13-03-21","30-08-24",474),
  (475,475,"3743 398542 62618","698","09-01-22","07-05-26",475),
  (476,476,"4929 5282 8226 9867","705","05-09-16","30-10-28",476),
  (477,477,"491653 634526 8375","950","15-05-17","06-03-27",477),
  (478,478,"378687864125217","622","20-08-10","02-03-26",478),
  (479,479,"4929231441737342","336","28-03-14","28-05-27",479),
  (480,480,"4716924472849666","153","11-06-21","23-04-25",480);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (481,481,"342546266722737","473","31-07-22","29-11-22",481),
  (482,482,"5179975456793635","782","04-10-13","12-09-27",482),
  (483,483,"491 67798 88426 873","911","02-11-18","07-06-27",483),
  (484,484,"4556 7478 7413 3634","505","01-09-10","25-02-24",484),
  (485,485,"378143222648987","780","20-03-13","15-06-26",485),
  (486,486,"375354723583879","820","05-05-20","16-09-22",486),
  (487,487,"3724 785651 86823","840","13-01-22","04-01-27",487),
  (488,488,"537 74544 57344 731","304","23-08-16","14-04-22",488),
  (489,489,"343175493867443","512","05-07-11","11-11-23",489),
  (490,490,"4532357469878210","467","28-06-18","29-09-22",490);
INSERT INTO `tarjeta` (`card_id`,`customer_id`,`card_number`,`card_cvv`,`card_granted_date`,`card_expiration_date`,`card_brand_id`)
VALUES
  (491,491,"3767 466588 55561","926","02-07-11","16-05-29",491),
  (492,492,"4286451554435","770","29-05-19","27-09-24",492),
  (493,493,"4485 3733 9527 4322","641","21-11-12","04-12-22",493),
  (494,494,"453934 4797663186","903","23-03-15","22-01-25",494),
  (495,495,"344448867377474","311","17-11-16","09-06-23",495),
  (496,496,"542442 688446 2768","512","08-02-14","27-01-22",496),
  (497,497,"471625 442845 4829","344","28-08-11","14-09-27",497),
  (498,498,"4024007164684","659","24-08-13","23-05-22",498),
  (499,499,"542 96928 22362 585","119","10-03-19","29-06-23",499),
  (500,500,"343231488553421","623","31-08-12","28-08-23",500);

/*-------------------------------------------------------------------------------------------------*/
/* SEGUNDA PROBLEMATICA */

CREATE VIEW segunda_problematica
AS
SELECT customer_id, branch_id, customer_name, customer_surname, customer_DNI, dob
FROM cliente
ORDER BY customer_DNI ASC,
CASE
	WHEN customer_name = 'Anne' OR 'Tyler' THEN (date() - dob)
END DESC;

INSERT INTO cliente(customer_name, customer_surname, customer_DNI, branch_id, dob) VALUES('Lois', 'Stout', '47730534', 80, '1984-07-07');
INSERT INTO cliente(customer_name, customer_surname, customer_DNI, branch_id, dob) VALUES('Hall', 'Mcconnell', '52055464', 45, '1968-04-30');
INSERT INTO cliente(customer_name, customer_surname, customer_DNI, branch_id, dob) VALUES('Hilel', 'Mclean', '43625213', 77, '1993-03-28');
INSERT INTO cliente(customer_name, customer_surname, customer_DNI, branch_id, dob) VALUES('Jin', 'Cooley', '21207908', 96, '1959-08-24');
INSERT INTO cliente(customer_name, customer_surname, customer_DNI, branch_id, dob) VALUES('Gabriel', 'Harmon', '57063950', 27, '1976-04-01');

UPDATE cliente SET branch_id = '10' WHERE customer_name = 'Lois' AND customer_surname = 'Stout';
UPDATE cliente SET branch_id = '10' WHERE customer_name = 'Hall' AND customer_surname = 'Mcconnell';
UPDATE cliente SET branch_id = '10' WHERE customer_name = 'Hilel' AND customer_surname = 'Mclean';
UPDATE cliente SET branch_id = '10' WHERE customer_name = 'Jin' AND customer_surname = 'Cooley';
UPDATE cliente SET branch_id = '10' WHERE customer_name = 'Gabriel' AND customer_surname = 'Harmon';

DELETE FROM cliente WHERE customer_name = 'Noel' AND customer_surname = 'David';

SELECT loan_type, loan_total FROM prestamo
WHERE
loan_total = (SELECT MAX(loan_total) FROM prestamo);


/*----------------------------------------------------------------------------------------------------*/
/* TERCERA PROBLEMATICA */

/*Seleccionar las cuentas con saldo negativo*/
SELECT account_id, customer_id, balance FROM cuenta WHERE balance<0;

/* Seleccionar el nombre, apellido y edad de los clientes que tengan en el 
apellido la letra Z */
SELECT customer_name , customer_surname , (date() - dob) as edad
from cliente 
WHERE substr(customer_surname,1,1) = 'Z';

/*Seleccionar el nombre, apellido, edad y nombre de sucursal de las personas 
cuyo nombre sea “Brendan” y el resultado ordenarlo por nombre de 
sucursal*/
SELECT customer_name , customer_surname , (date() - dob) as edad  ,  branch_name
from cliente , sucursal
WHERE customer_name = 'Brenda' AND cliente.branch_id = sucursal.branch_id;

/*Seleccionar de la tabla de préstamos, los préstamos con un importe mayor
a $80.000 y los préstamos prendarios utilizando la unión de 
tablas/consultas (recordar que en las bases de datos la moneda se guarda 
como integer, en este caso con 2 centavos)*/
SELECT * FROM prestamo WHERE loan_type = 'PRENDARIO' OR loan_total > 8000000;


/*Seleccionar los prestamos cuyo importe sea mayor que el importe medio de 
todos los prestamos*/

SELECT loan_id , loan_total , loan_type 
FROM prestamo INNER JOIN cliente ON cliente.customer_id = prestamo.loan_id
where loan_total > (SELECT avg(ALL loan_total) FROM prestamo);



/*Contar la cantidad de clientes menores a 50 años
*/

SELECT count(ALL customer_name) as Mayor50 , customer_type  FROM cliente 
where (date() - dob) < 50
group by customer_type;

/*Seleccionar las primeras 5 cuentas con saldo mayor a 8.000$*/

SELECT account_id , customer_id , balance , iban , account_type FROM cuenta WHERE balance > 800000 ORDER by account_id
LIMIT 5;


/*Seleccionar los préstamos que tengan fecha en abril, junio y agosto, 
ordenándolos por importe*/

SELECT * from prestamo  WHERE (loan_date like '%-06-%') or (loan_date like '%-08-%') or (loan_date like '%-04-%')
ORDER by loan_total;

/*Obtener el importe total de los prestamos agrupados por tipo de préstamos. 
Por cada tipo de préstamo de la tabla préstamo, calcular la suma de sus 
importes. Renombrar la columna como loan_total_accu*/

SELECT sum(loan_total) as loan_total_Accu , loan_type FROM prestamo
GROUP by loan_type;


/* ---------------------------------------------------------------------------------------- */
/* Cuarta problematica */

/* 1 Listar la cantidad de clientes por nombre de sucursal ordenando de mayora menor */

SELECT cliente.branch_id, sucursal.branch_name , count(all cliente.branch_id) as Cantidad_clientes 
FROM cliente INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id
group by sucursal.branch_id ORDER BY Cantidad_clientes DESC;

/*3 Obtener la cantidad de tarjetas de crédito por tipo por sucursal */ 

SELECT branch_id, count(all cliente.customer_name) as Cantidad_Tarjetas  FROM cliente
group by branch_id;