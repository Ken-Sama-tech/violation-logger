DROP DATABASE student_record;
CREATE DATABASE student_record;
--
--
--
USE student_record;
--
-- ----------------- CREATE TABLE studentInfo
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
        'IN A RELATIONSHIP',
        'MARRIED',
        'DIVORCED',
        'WIDOWED'
    ),
    religion VARCHAR(50),
    current_address VARCHAR(255) NOT NULL,
    permanent_address VARCHAR(255),
    nationality VARCHAR(50) NOT NULL,
    disability VARCHAR(100) DEFAULT 'NOT STATED',
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
    INDEX idx_of_student_id (studentID),
    FOREIGN KEY (studentID) REFERENCES studentInfo(studentID)
) ENGINE = InnoDB;
INSERT INTO articles (`article`, `articleDescription`)
VALUES ('A', 'PAGLABAG SA AKADEMIKONG PAG-UNLAD'),
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
    INDEX idx_of_article_id (articleID),
    FOREIGN KEY (articleID) REFERENCES articles(articleID)
) ENGINE = InnoDB;
INSERT INTO articleSections(
        `articleID`,
        `articleSection`,
        `articleSectionDescription`
    )
VALUES (
        1,
        'SECTION 1',
        'PAGGAMIT NG CELLULAR PHONE HABANG NAGKAKKLASE.'
    ),
    (
        1,
        'SECTION 2',
        'HINDI MAITUTURING NA PAGLABAG KUNG ANG PAGGAMIT AY EMERGENCY AT KINAKAILANGAN TALAGA SUBALIT DAPAT MAGPAALAM SA GURO NA LALABAS NG SILID ARALAN ANG BATA UPANG HINDI MAKISTORBO.'
    ),
    (
        1,
        'SECTION 3',
        'PAGGAMIT NG GADGET NA NAKAKALIKHA NG INGYAY HABANG MAYROONG KLASSE LIBAN NA LAMANG KUNG ITO AY PINAPAYAGANG GAMITIN NG GURO AT MAKATULONG SA GAWAING PANG-AKADEMIKO'
    ),
    (
        1,
        'SECTION 4',
        'PALAGIANG PAGLIBAN SA KLASSE NG HIGIT ISANG LINGGO KADA BUWAN AT HINDI PAGPAPASA NG LIHAM PAGPAPALIWANAG'
    ),
    (
        1,
        'SECTION 5',
        'PALAGIANG PAGPASOK NG HULI SA MGA KLASSE NA UMAABOT NA NG ISANG LINGGO'
    ),
    (
        1,
        'SECTION 6',
        'MALIMIT NA PAGKACUTTING CLASSES'
    ),
    (
        1,
        'SECTION 7',
        'PAGLABAS NG SILID ARALAN NG WALANG PAALAM SA MGA GURO AT PAGPAPAKITA NG KAWALANG GALANG'
    ),
    (
        1,
        'SECTION 8',
        'PAGTAKAS SA GATE NG PAARALAN NG WALANG KAUKULANG PAALAM NA ITINATALA SA GWARYA NA PINAPAYAGAN NA UMUWI ANG BATA NG GURO'
    ),
    (
        1,
        'SECTION 9',
        'MAARI LAMANG NA LUMABAS ANG MGA ESTUDYANTE KUNG SILA AY MAY LBM O SAKIT NA DI KAYANG LUNASAN NG PAARALAN AT NANGANGAILANGAN NG MEDIKAL NA ATENSYON NA ALAM NG MAGULANG. NARARAPAT NA MAY PASS SLIP NA NAITALA SA GWARYA AT SINAMAHAN NG SINUMANG KAWANI O IPIN'
    ),
    (
        2,
        'SECTION 1',
        'HINDI PAGSUUSOT NG TAMANG UNIPORME'
    ),
    (
        2,
        'SECTION 2',
        'HINDI PAG-SUSUOT NG PAGKAKAKILANLAN O ID'
    ),
    (
        2,
        'SECTION 3',
        'PAGSUSUOT NG HIKAW AT PAGKAKAROON NG BODY PIERCING NG MGA KALALAKIHAN O PIERCING SA KABABAIHAN NA NAGBIBIGAY NG HINDI MAGANDANG IMPRESYON SA PAGIGING ESTUDYANTE'
    ),
    (
        2,
        'SECTION 4',
        'PAGSUSUOT NG SINGSING NA MAY SPIKE AT MALALAKING'
    ),
    (
        2,
        'SECTION 5',
        'METAL NA BUCKLES NG SINTURON NA MAARING GAMITIN UPANG MAKAPANAKIT NG MGA KAMAG-ARAL'
    ),
    (
        2,
        'SECTION 6',
        'PAGDADALA NG BARIL, PATALIM O MGA NAKAKASAKIT AT NAKAKAMATAY NA MGA BAGAY.'
    ),
    (
        2,
        'SECTION 7',
        'PAGDADALA NG PAMPASABOG O MGA BAGAY NA MAY KINALAMAN SA TERORISMO'
    ),
    (
        2,
        'SECTION 8',
        'VANDALISMO AT IBA’T IBANG URI NITO. PAGLILINIS O PAGPIPINTURA NG LUGAR NA DINUMIHAN O SINULATAN AT KOMPEREHENSIYA SA MGA MAGULANG.'
    ),
    (2, 'SECTION 9', 'PAGDURA SA KUNG SAAN SAAN'),
    (
        2,
        'SECTION 10',
        'PAG-IWAN SA CR NG MADUMI MATAPOS ITO GAMITIN'
    ),
    (
        2,
        'SECTION 11',
        'PANINIGARILYO SA LOOB NG KAMPUS'
    ),
    (
        2,
        'SECTION 12',
        'INTENSYONAL NA PAGSIRA NG MGA SILYA, PINTO, PAGBASAG NG BINTANA O MGA ILAW O ANUMANG NASA SA LOOB NG SILID ARALAN AT PAARALAN'
    ),
    (
        2,
        'SECTION 13',
        'PAGDADALA, PAG-IINOM NG NAKALALASING NA INUMIN O PAGPASOK NG LASING'
    ),
    (
        2,
        'SECTION 14',
        'PAGPAPASOK O PAGGAMIT NG DROGA O KAHALINTULAD NITO GAYA NG MARIJUANA, SHABU, ATBP.'
    ),
    (
        2,
        'SECTION 16',
        'PAGPAPAKITA NG MAHALAY NA GAWI SA LOOB NG PAARALAN.'
    ),
    (2, 'SECTION 17', 'PAGSIRA SA ID'),
    (
        2,
        'SECTION 18',
        'PAGGAMIT NG IBA PANG ID UPANG MAKAPASOK SA PAARALAN'
    ),
    (
        2,
        'SECTION 19',
        'PAGPAPAHIRAM NG SARILING ID SA IBA PANG ESTUDYANTE LIBAN NA LAMANG KUNG MANGHIHIRAM NG GAMIT SA SILID AKLATAN O SA LABORATORYO O KATULAD NA GAWAIN'
    ),
    (
        2,
        'SECTION 20',
        'HINDI PAGSA-SAULI NG MGA GAMIT NA IPINAHIRAM NG PAARALANG GAYA NG LEARNER’S MATERIAL, MGA KAGAMITAN SA SILID AKLATAN, AT MGA LABORATORYO'
    ),
    (
        2,
        'SECTION 21',
        'PAGNANAKAW NG GAMIT NG PAARALAN O NG KAGAMITAN NG MGA GURO O KAWANI NITO.'
    ),
    (
        2,
        'SECTION 22',
        'PANDARAYA O PALSIPIKASYON NG MGA TALA NG PAARALAN'
    ),
    (
        2,
        'SECTION 23',
        'PAMEMEKE NG LAGDA NG MAGULANG O TAGAPAG-ALAGA, GURO O KAWANI NG PAARALAN.'
    ),
    (
        2,
        'SECTION 24',
        'PANDARAYA SA MGA PAGSUSULIT, EKSAMINASYON O MGA GAWAING PANG-AKADEMIKO'
    ),
    (
        2,
        'SECTION 25',
        'PAGDADALA NG MAHAHALE NA MAGAZIN O BABASAHIN O PELIKULANG IPINAPANUOOD SA IBA'
    ),
    (
        2,
        'SECTION 26',
        'PAGLIKHA NG INGYAY NA NAKAKAABALA SA MGA KLASSE'
    ),
    (
        2,
        'SECTION 27',
        'PAGTAMBA SA PASILYO NA LUMILIKHA NG INGYAY O KAGULUHAN NA NAKAKA-ABALA SA MGA KLASSE'
    ),
    (
        2,
        'SECTION 28',
        'PAGTATAPON NG BASURA SA KUNG SAAN SAAN.'
    ),
    (
        2,
        'SECTION 29',
        'KAWALANG GALANG SA MGA GURO AT KAWANI NG PAARALAN.'
    ),
    (
        3,
        'SECTION 1',
        'PAGHAHA-MON NG AWAY O PAG-AAMOK NA NAGDULOT NG KAGULUHAN SA LOOB O LABAS NG PAARALAN'
    ),
    (
        3,
        'SECTION 2',
        'PAMBUBULLY SA KAHIT SINO SA PAARALAN: - MAARING PASALITANG PAGBABANTA, PANANAKOT O MALABIS NA PANGHIHIYA - SIKOLOHIKAL O EMOSYONAL - PANUNUKSO NG LABIS - PANGO-NGOTONG NG SALAPI O BAGAY - PAGPIGIL SA KAHIT SINO NA MAKAPASOK SA PA'
    ),
    (
        3,
        'SECTION 3',
        'PAGMUMURA NG LABIS AT PAGSASALITA NG MAY KABASTUSAN NA NAKAKASAKIT NG DAMDAMIN NG IBA'
    ),
    (
        3,
        'SECTION 4',
        'SEKSUAL NA PANG-AABUSO: - MAARING PASALITA - PANGHIHIPO SA MASESELANG BAHAGI - PAGPAPAKITA NG ARI - PANGGAGAHASA O ANUPAMANG NASA SA PROBISYON NG CPP'
    ),
    (
        3,
        'SECTION 5',
        'PANANAKIT NG KAPWA ESTUDYANTE O GURO.'
    ),
    (
        3,
        'SECTION 6',
        'PAGPATAY SA KAPWA ESTUDYANTE O SINUMAN SA PAARALAN'
    ),
    (
        3,
        'SECTION 7',
        'KAWALANG GALANG SA MGA GURO AT KAWANI NG PAARALAN AT PANANAKIT SA SINUMAN DITO'
    ),
    (
        3,
        'SECTION 8',
        'PAGSALI SA FRATERNITY O SORORITY NA NAGDUDULOT NG PAHA-MAK O KAGULUHAN SA KAPWA ESTUDYANTE'
    ),
    (
        3,
        'SECTION 9',
        'PAGSISIMULA NG RAMBOL O RIOT SA LOOB AT LABAS NG PAARALAN NA IKINAPAHAMAK NG SINUMAN DITO.'
    ),
    (
        3,
        'SECTION 10',
        'PAKAKASANGKOT SA INISYASYON O HAZING NA MAARING IKAMATAY NG KAPWA ESTUDYANTE AT DEPENDE SA NAGING EPEKTO NITO SA BIKTIMA'
    ),
    (
        3,
        'SECTION 11',
        'PAGPAPALAGANAP NG MGA MAHAHALE NA MATERYAL'
    ),
    (
        4,
        'SECTION 1',
        'PAGSOSOLICIT SA LABAS NG PAARALAN NG HINDI LEGAL AT PINAPAYAGAN NITO.'
    ),
    (
        4,
        'SECTION 2',
        'PANLOLOKO O PANLILINLANG SA MAGULANG O TAGAPAMATNUBAY SA MGA INAPRUBAHANG GAWAIN AT KOLEKSIYON SA PAARALAN KUNG MAYROON MAN'
    ),
    (
        4,
        'SECTION 3',
        'PAGBEBENTA NG TIKET NA HINDI PINAYAGAN NG PAMUNUAN NG PAARALAN'
    ),
    (
        4,
        'SECTION 4',
        'PAMEMEKE NG LAGDA NG KAHIT SINO SA PAARALAN AT PAGGAMIT NITO SA KALOKOHAN '
    ),
    (
        4,
        'SECTION 5',
        'PAGGAMIT NG PANGALAN NG PAARALAN SA KALOKOHAN O SA MGA BAGAY NA IKASISIRA NG MAGANDA NITONG IMAHE'
    );
CREATE TABLE sanctions(
    sanctionID INT AUTO_INCREMENT PRIMARY KEY,
    sanction VARCHAR(255),
    category ENUM('MINOR', 'MAJOR', 'CRITICAL')
) ENGINE = InnoDB;
INSERT INTO sanctions (`sanction`, `category`)
VALUES ('PAGPAPA-ALALA', 'MINOR'),
    (
        'PAGKUMPIKSA AT PAGPAPATAWAG SA MAGULANG',
        'MAJOR'
    ),
    (
        'PAGDAAN SA PROGRAMANG PAGGABAY (COUNSELING)',
        'MINOR'
    ),
    (
        'PAGPASOK SA INTERBENSYON AT PROGRAMANG PAGGABAY',
        'MAJOR'
    ),
    (
        'DI-PAGPASA SA MGA ASIGNATURA DAHIL SA DI PAGPASOK',
        'MAJOR'
    ),
    (
        'PAGPAPATAWAG AT PAGPAPALIWANAG NG MAGULANG',
        'MAJOR'
    ),
    (
        'PAGPAPATAW NG KARAMPATANG PARUSA NA NAAAYON SA POLISIYA AT BATAS',
        'MAJOR'
    ),
    (
        'SUSPENSIYON NA DI LALAMPAS NG LIMANG ARAW',
        'MAJOR'
    ),
    (
        'SUSPENSIYON NA DI LALAMPAS NG LIMANG ARAW AT PAGPASOK SA INTERBENSYON AT PROGRAMANG PAGGABAY KASAMA ANG MAGULANG',
        'MAJOR'
    ),
    (
        'EKSPULSYON AT DI IISYUHAN NG CERTIFICATE OF GOOD MORAL CHARACTER',
        'CRITICAL'
    ),
    (
        'PANANAGOT SA JUVENILE DELINQUENCY ACT OF 2006 O RA 9344',
        'CRITICAL'
    ),
    (
        'PAGLILINIS O PAGPIPINTURA NG LUGAR NA DINUMIHAN O SINULATAN',
        'MINOR'
    ),
    ('PAGLILINIS NG PALIKURAN', 'MINOR'),
    (
        'PAGPAPALIT O PAGBABAYAD NG HALAGA NG NASIRANG KAGAMITAN',
        'MAJOR'
    ),
    ('PAGPAPASAULI NG MGA GAMIT NA HINIRAM', 'MINOR'),
    (
        'PAGPAPALIT O PAGBABAYAD NG HALAGA NG DI-NAISAULING LM O KAGAMITAN',
        'MAJOR'
    ),
    (
        'PAGPAPATAWAG AT PAGPAPALIWANAG NG MAGULANG, SUSPENSIYON NA DI LALAMPAS NG LIMANG ARAW, AT PAGBABAYAD NG DANYOS',
        'MAJOR'
    ),
    (
        'EKSPULSYON AT DI IISYUHAN NG CERTIFICATE OF GOOD MORAL CHARACTER AT PANANAGOT SA BATAS NG CYBER BULLYING KUNG KINAKAILANGAN',
        'CRITICAL'
    ),
    ('PANANAGOT SA R.A. 9344', 'CRITICAL'),
    (
        'PANANAGOT SA BATAS NA NAAAYON SA DSWD',
        'CRITICAL'
    );

CREATE TABLE violationLogs(
    violationLogID INT AUTO_INCREMENT PRIMARY KEY,
    studentID INT,
    articleID INT,
    articleSectionID INT,
    sanctionID INT,
    violationDate DATE DEFAULT NULL,
    violationStatus ENUM('PENDING', 'IN-PROGRESS', 'COMPLETED') DEFAULT 'PENDING' NOT NULL,
    lastUpdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_of_article_id (articleID),
    INDEX idx_of_article_section_id (articleSectionID),
    INDEX idx_of_sanction_Id (sanctionID),
    INDEX idx_of_student_id (studentID),
    FOREIGN KEY (articleID) REFERENCES articles(articleID),
    FOREIGN KEY (articleSectionID) REFERENCES articleSections(articleSectionID),
    FOREIGN KEY (sanctionID) REFERENCES sanctions(sanctionID),
    FOREIGN KEY (studentID) REFERENCES studentInfo(studentID)
) ENGINE = InnoDB;
--
--
--
CREATE TABLE gradeLevels(
    gradeLevelID INT AUTO_INCREMENT PRIMARY KEY,
    educationLevel ENUM('JR HIGH', 'SR HIGH'),
    gradeLevel VARCHAR(255) NOT NULL
) ENGINE = InnoDB;
INSERT INTO gradeLevels(`educationLevel`, `gradelevel`)
VALUES ('JR HIGH', 'GRADE 7'),
    ('JR HIGH', 'GRADE 8'),
    ('JR HIGH', 'GRADE 9'),
    ('JR HIGH', 'GRADE 10'),
    ('SR HIGH', 'GRADE 11'),
    ('SR HIGH', 'GRADE 12');
--
--
--
CREATE TABLE schoolYears(
    schoolYearID INT AUTO_INCREMENT PRIMARY KEY,
    schoolYear VARCHAR(10) NOT NULL
) ENGINE = InnoDB;

INSERT INTO schoolYears(schoolYear) VALUES ('2024-2025');
--
--
--
CREATE TABLE IF NOT EXISTS `gradesections` (
    `sectionID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `gradeLevelID` INT NOT NULL,
    `section` VARCHAR(255) DEFAULT NULL,
    `schoolYearID` INT NOT NULL,
    INDEX idx_of_grade_level_id(gradeLevelID),
    INDEX idx_of_school_year_id(schoolYearID),
    FOREIGN KEY (gradeLevelID) REFERENCES gradeLevels(gradeLevelID),
    FOREIGN KEY (schoolYearID) REFERENCES schoolYears(schoolYearID)
) ENGINE = InnoDB;
INSERT INTO `gradesections` (`gradeLevelID`, `section`, `schoolYearID`)
VALUES (6, 'CASTILLO', 1),
    (6, 'LAZATIN', 1),
    (6, 'MACARAEG', 1),
    (6, 'GALUPE', 1),
    (6, 'SALVIEJO', 1),
    (5, 'ERMITANIO', 1),
    (5, 'VALEROSO', 1),
    (5, 'HILARIO', 1),
    (5, 'MAGBALOT', 1);
--
--
--
DROP TABLE IF EXISTS registrations;
CREATE TABLE registrations(
    registrationID INT AUTO_INCREMENT PRIMARY KEY,
    registrationDate DATE,
    studentID INT,
    gradeSectionID INT,
    schoolYearID INT DEFAULT NULL,
    INDEX idx_of_student_id(studentID),
    INDEX idx_of_grade_section_id(gradeSectionID),
    INDEX idx_of_schoolyear_id(schoolYearID),
    FOREIGN KEY(studentID) REFERENCES studentInfo(studentID),
    FOREIGN KEY(gradeSectionID) REFERENCES gradesections(sectionID),
    FOREIGN KEY(schoolYearID) REFERENCES schoolYears(schoolYearID),
    CONSTRAINT uniq_year_per_std UNIQUE (studentID, schoolYearID)
) ENGINE = InnoDB;
--
--
--
CREATE TABLE toDoLists(
    toDoListID INT AUTO_INCREMENT PRIMARY KEY,
    toDo VARCHAR(255),
    toDoStatus ENUM('PENDING', 'COMPLETED'),
    lastUpdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);