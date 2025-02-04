DROP DATABASE student_record;
CREATE DATABASE student_record;
--
--
--
USE student_record;
--
-- ----------------- CREATE TABLE student_info
--
CREATE TABLE studentInfo(
    studentID INT AUTO_INCREMENT PRIMARY KEY,
    learnerReferenceNumber BIGINT UNIQUE NOT NULL,
    studentImg VARCHAR(255),
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NUll,
    middleName VARCHAR(50),
    extensionName VARCHAR(20),
    birthDate DATE NOT NULL,
    sex ENUM('MALE', 'FEMALE'),
    phoneNumber VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    civilStatus ENUM(
        'SINGLE',
        'TAKEN',
        'MARRIED',
        'DIVORCED',
        'WIDOWED'
    ),
    religion VARCHAR(50),
    current_address VARCHAR(255) NOT NULL,
    permanent_address VARCHAR(255),
    nationality VARCHAR(50) NOT NULL,
    disability VARCHAR(100) DEFAULT 'none',
    guardianLastName VARCHAR(50),
    guardianFirstName VARCHAR(50),
    guardianMiddleName VARCHAR(50),
    guardianExtensionName VARCHAR(20),
    guardianPhoneNumber VARCHAR(20),
    motherLastName VARCHAR(50),
    motherFirstName VARCHAR(50),
    motherMiddleName VARCHAR(50),
    motherMaidenName VARCHAR(50),
    motherPhoneNumber VARCHAR(50),
    fatherLastName VARCHAR(50),
    fatherFirstName VARCHAR(50),
    fatherMiddleName VARCHAR(50),
    fatherExtensionName VARCHAR(50),
    fatherPhoneNumber VARCHAR(50)
) ENGINE = InnoDB;

--
--
--

CREATE TABLE articles(
    articleID INT AUTO_INCREMENT PRIMARY KEY,
    studentID INT,
    article VARCHAR(255),
    articleDescription VARCHAR(255),

    INDEX idx_of_student_id (studentID);
    FOREIGN KEY (studentID) REFERENCES studentInfo(studentID)
)   ENGINE = InnoDB;

INSERT INTO articles 
(`article`, `articleDescription`)
VALUES 
('A', 'PAGLABAG SA AKADEMIKONG PAG-UNLAD'),
('B', 'PAGLABAS SA KILOS NG PAGIGING MAG-AARAL'),
('C', 'PAGLABAG SA KARAPATAN NG IBA'),
('D', 'PAGLABAG SA KARANGALAN NG PAARALAN');

--
--
--

CREATE TABLE articleSections(
    articleSectionID INT AUTO_INCREMENT PRIMARY KEY,
    articleID INT,
    articleSection VARCHAR(255),
    articleSectionDescription VARCHAR(255),

    INDEX idx_of_article_id (articleID)
    FOREIGN KEY (articleID) REFERENCES articles(articleID);
) ENGINE = InnoDB;

INSERT INTO articleSections INSERT INTO article_sections(
        `articleID`,
        `articleSection`,
        `articleSectionDescription`
    )
VALUES (
        1,
        'SECTION 1',
        'Paggamit ng Cellular Phone habang nagkaklase.'
    ),
    (
        1,
        'SECTION 2',
        'Hindi maituturing na paglabag kung ang paggamit ay emergency at kinakailangan talaga subalit dapat magpaalam sa guro na lalabas ng silid aralan ang bata upang hindi makistorbo.'
    ),
    (
        1,
        'SECTION 3',
        'Paggamit ng gadget na nakakalikha ng ingay habang mayroong klase liban na lamang kung ito ay pinapayagang gamitin ng guro at makakatulong sa gawaing pang-akademiko'
    ),
    (
        1,
        'SECTION 4',
        'Palagiang pagliban sa klase ng higit isang linggo kada buwan at hindi pagpapasa ng Liham Pagpapaliwanag'
    ),
    (
        1,
        'SECTION 5',
        'Palagiang pagpasok ng huli sa mga klase na umaabot na ng isang linggo'
    ),
    (
        1,
        'SECTION 6',
        'Malimit na pagkacutting classes'
    ),
    (
        1,
        'SECTION 7',
        'Paglabas ng silid aralan ng walang paalam sa mga guro at pagpapakita ng kawalang galang'
    ),
    (
        1,
        'SECTION 8',
        'Pagtakas sa gate ng paaralan ng walang kaukulang paalam na itinatala sa gwardya na pinapayagan na umuwi ang bata ng guro'
    ),
    (
        1,
        'SECTION 9',
        'Maari lamang na lumabas ang mga estudyante kung sila ay may LBM o sakit na di kayang lunasan ng paaralan at nangangailangan ng medikal na atensyon na alam ng magulang. Nararapat na may Pass Slip na naitala sa Gwardya at sinamahan ng sinumang kawani o ipin'
    ),
    (
        2,
        'SECTION 1',
        'Hindi pagsusuot ng tamang uniporme'
    ),
    (
        2,
        'SECTION 2',
        'Hindi pag-susuot ng Pagkakakilanlan o ID'
    ),
    (
        2,
        'SECTION 3',
        'Pagsusuot ng hikaw at pagkakaroon ng body piercing ng mga kalalakihan o piercing sa kababaihan na nagbibigay ng hindi magandang impresyon sa pagiging estudyante'
    ),
    (
        2,
        'SECTION 4',
        'Pagsusuot ng singsing na may spike at malalaking'
    ),
    (
        2,
        'SECTION 5',
        'metal na buckles ng sinturon na maaring gamitin upang makapanakit ng mga kamag-aral'
    ),
    (
        2,
        'SECTION 6',
        'Pagdadala ng baril, patalim o mga nakakasakit at nakakamatay na mga bagay.'
    ),
    (
        2,
        'SECTION 7',
        'Pagdadala ng pampasabog o mga bagay na may kinalaman sa terorismo'
    ),
    (
        2,
        'SECTION 8',
        'Vandalismo at iba’t ibang uri nito. Paglilinis o pagpipintura ng lugar na dinumihan o sinulatan at Komperesiya sa mga magulang. '
    ),
    (2, 'SECTION 9', 'Pagdura sa kung saan saan'),
    (
        2,
        'SECTION 10',
        'Pag-iwan sa CR ng madumi matapos itong gamitin'
    ),
    (
        2,
        'SECTION 11',
        'Paninigarilyo sa loob ng kampus'
    ),
    (
        2,
        'SECTION 12',
        'Intensyonal na pagsira ng mga silya, pintuan, pagbasag ng bintana o mga ilaw o anumang nasa sa loob ng silid aralan at paaralan'
    ),
    (
        2,
        'SECTION 13',
        'Pagdadala, pag-iinom ng nakalalasing na inumin o pagpasok ng lasing'
    ),
    (
        2,
        'SECTION 14',
        'Pagpapasok o paggamit ng droga o kahalintulad nito gaya ng marijuana, shabu, atbp.'
    ),
    (
        2,
        'SECTION 16',
        'Pagpapakita ng mahalay na gawi sa loob ng paaralan.'
    ),
    (2, 'SECTION 17', 'Pagsira sa ID'),
    (
        2,
        'SECTION 18',
        'Paggamit ng ibang ID upang makapasok sa paaralan'
    ),
    (
        2,
        'SECTION 19',
        'Pagpapahiram ng sariling ID sa ibang estudyante liban na lamang kung manghihiram ng gamit sa silid aklatan o sa laboratoryo o katulad na Gawain'
    ),
    (
        2,
        'SECTION 20',
        'Hindi pagsasauli ng mga gamit na ipinahiram ng paaralang gaya ng Learner’s Material, mga kagamitan sa Silid Aklatan, at mga Laboratoryo'
    ),
    (
        2,
        'SECTION 21',
        'Pagnanakaw ng gamit ng paaralan o ng kagamitan ng mga guro o kawani nito.'
    ),
    (
        2,
        'SECTION 22',
        'Pandaraya o palsipikasyon ng mga tala ng paaralan'
    ),
    (
        2,
        'SECTION 23',
        'Pamemeke ng lagda ng magulang o tagapag-alaga, guro o kawani ng paaralan.'
    ),
    (
        2,
        'SECTION 24',
        'Pandaraya sa mga pagsusulit, eksaminasyon o mga gawaing pang-akademiko'
    ),
    (
        2,
        'SECTION 25',
        'Pagdadala ng mahahalay na magasin o babasahin o pelikulang ipinapapanood sa iba'
    ),
    (
        2,
        'SECTION 26',
        'Paglikha ng ingay na nakakaabala sa mga klase'
    ),
    (
        2,
        'SECTION 27',
        'Pagtambay sa pasilyo na lumilikha ng ingay o kaguluhan na nakaka-abala sa mga klase'
    ),
    (
        2,
        'SECTION 28',
        'Pagtatapon ng BASURA sa kung saan saan.'
    ),
    (
        2,
        'SECTION 29',
        'Kawalang galang sa mga guro at kawani ng paaralan.'
    ),
    (
        3,
        'SECTION 1',
        'Paghahamon ng away o pag-aamok na nagdulot ng kaguluhan sa loob o labas ng paaralan'
    ),
    (
        3,
        'SECTION 2',
        'Pambubully sa kahit sino sa paaralan:     - Maaring pasalitang pagbabanta, pananakot o malabis na panghihiya    - Sikolohikal o emosyonal    - Panunukso ng labis    - Pango-ngotong ng salapi o bagay    - Pagpigil sa kahit sino na makapasok sa pa'
    ),
    (
        3,
        'SECTION 3',
        'Pagmumura ng labis at pagsasalita ng may kabastusan na nakakasakit ng damdamin ng iba'
    ),
    (
        3,
        'SECTION 4',
        'Sekswal na pang-aabuso:    - Maaring pasalita    - Panghihipo sa maseselang bahagi    - Pagpapakita ng ari    - Panggagahasa o anupamang nasa sa probisyon ng CPP'
    ),
    (
        3,
        'SECTION 5',
        'Pananakit ng kapwa estudyante o guro.'
    ),
    (
        3,
        'SECTION 6',
        'Pagpatay sa kapuwa estudyante o sinuman sa paaralan'
    ),
    (
        3,
        'SECTION 7',
        'Kawalang galang sa mga guro at kawani ng paaralan at pananakit sa sinuman dito'
    ),
    (
        3,
        'SECTION 8',
        'Pagsali sa fraternity o sorority na nagdudulot ng pahamak o kaguluhan sa kapuwa estudyante'
    ),
    (
        3,
        'SECTION 9',
        'Pagsisimula ng rambol o riot sa loob at labas ng paaralan na ikinapahamak ng sinuman dito. '
    ),
    (
        3,
        'SECTION 10',
        'Pagkakasangkot sa inisyasyon o hazing na maaring ikamatay ng kapwa estudyante at depende sa naging epekto nito sa biktima'
    ),
    (
        3,
        'SECTION 11',
        'Pagpapalaganap ng mga mahahalay na materyal'
    ),
    (
        4,
        'SECTION 1',
        'Pagsosolicit sa labas ng paaralan ng hindi legal at pinapayagan nito.'
    ),
    (
        4,
        'SECTION 2',
        'Panloloko o panlilinlang sa magulang o tagapamatnubay sa mga inaprubahang gawain at koleksyon sa paaralan kung mayroon man'
    ),
    (
        4,
        'SECTION 3',
        'Pagbebenta ng tiket na hindi pinayagan ng pamunuan ng paaralan'
    ),
    (
        4,
        'SECTION 4',
        'Pamemeke ng lagda ng kahit sino sa paaralan at paggamit nito sa kalokohan '
    ),
    (
        4,
        'SECTION 5',
        'Paggamit ng pangalan ng paaralan sa kalokohan o sa mga bagay na ikasisira ng maganda nitong imahe'
    );

CREATE TABLE sanctions(
    sanctionID INT AUTO_INCREMENT PRIMARY KEY,
    sanction VARCHAR(255),
) ENGINE = InnoDB;

INSERT INTO sanctions(`sanction`)
VALUES ('Pagpapa-alaala'),
    ('Pagkumpiska at pagpapatawag sa magulang'),
    ('Pagdaan sa Programang Paggabay (Counseling)'),
    (
        'Pagpasok sa Interbensyon at Programang Paggabay'
    ),
    (
        'Di-pagpasa sa mga asignatura dahil sa di pagpasok'
    ),
    ('Pagpapatawag at pagpapaliwanag ng magulang'),
    (
        'Pagpapataw ng karampatang parusa na naaayon sa polisiya at batas'
    ),
    ('Suspensiyon na di lalampas ng limang araw'),
    (
        'Suspensiyon na di lalampas ng limang araw at pagpasok sa Interbensyon at Programang Paggabay kasama ang magulang'
    ),
    (
        'Ekspulsyon at di iisyuhan ng Certificate of Good Moral Character'
    ),
    (
        'Pananagot sa Juvenile Delinquency Act of 2006 o RA 9344'
    ),
    (
        'Paglilinis o pagpipintura ng lugar na dinumihan o sinulatan'
    ),
    ('Paglilinis ng palikuran'),
    (
        'Pagpapalit o pagbabayad ng halaga ng nasirang kagamitan'
    ),
    ('Pagpapasauli ng mga gamit na hiniram'),
    (
        'Pagpapalit o pagbabayad ng halaga ng di-naisauling LM o kagamitan'
    ),
    (
        'Pagpapatawag at pagpapaliwanag ng magulang, suspensiyon na di lalampas ng limang araw, at pagbabayad ng danyos'
    ),
    (
        'Ekspulsyon at di iisyuhan ng Certificate of Good Moral Character at pananagot sa Batas ng Cyber Bullying kung kinakailangan'
    ),
    ('Pananagot sa R.A. 9344'),
    ('Pananagot sa Batas na naaayon sa DSWD');
;

CREATE violationLogs(
    violationLog INT AUTO_INCREMENT PRIMARY KEY,
    articleID INT,
    articleSectionID INT, 
    sanctionID INT,
    violationDate DATE,
    lastUpdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    INDEX idx_of_article_id (articleID),
    INDEX idx_of_article_section_id (articleSectionID),
    INDEX inx_of_sanction_Id (sanctionID),

    FOREIGN KEY (articleID) REFERENCES articles(articleID),
    FOREIGN KEY (articleSectionID) REFERENCES articleSections(articleSectionID),
    FOREIGN KEY (sanctionID) REFERENCES sanctions(sanctionID)
) ENGINE = InnoDB;

SELECT violationLogs.violationLogID, violationLogs.violationDate, 