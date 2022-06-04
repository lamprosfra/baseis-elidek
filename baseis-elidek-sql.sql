show databases;

use lamp;

CREATE TABLE Organization (
  NameOrg varchar(100) not null,
  ShortName varchar(10),
  TK int,
  Street varchar(50),
  City varchar(50),
  CONSTRAINT PRIMARY KEY (NameOrg)
);

       
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('American Association of Physics Teachers','AAPT',16578,'Crescent Street','Texas');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('American Association of School Personnel Administrators','AASPA',16588,'Clisham Road','California');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('American Association of Teachers of French','AATF',16478,'Elm Street','Mississippi');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('American Association of Teachers of German','AATG',16578,'Fling Street','Carolina');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('American College Personnel Association','ACPA',16278,'Harris Street','Mexico');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('American Council on the Teaching of Foreign Languages','ACTFL',16878,'Jordan Street','Nevada');          
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('American Evaluation Association','AEA',16578,'Lincoln Street ','Indiana');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('American Historical Association','AHA',16588,'Maple Street ','Florida');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association for Biblical Higher Education','ABHE',16478,'North Main Street ','Ohio');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association for Career & Technical Education','ACTE',16478,'Pendleton Street','	California');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association for Educational Communications and Technology','AECT',16238,'Raymond Street','Washington');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association for Experiential Education','AEE',16898,'Rooney Street','Tennessee');           
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association for Graduate Enrollment Management','NAGAP',16178,'Short Street','Nevada');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association for Middle-Level Education','AMLE',16088,'South Main Street ','Michigan');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of School Safety and Law Enforcement Officials','NASSLEO',17478,'Summer Street','Kentucky');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association for Supervision and Curriculum Development','ASCD',16878,'Union Street','Carolina');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association of Independent School Admission Professionals','AISAP',13278,'Winter Street','Mexico');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association of International Education Administrators','AIEA',16898,'Wilson Street','Arizona');          
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Association of International Educators','NAFSA',16578,'Washington Street','Colorado');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Higher Education Consultants Association','HECA',16588,'Thompson Street','California');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Marketing Educators’ Association','MEA',16478,'Stone Street','Mississippi');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Modern Language Association','MLA',16578,'Spring Street','Carolina');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('Music Teachers National Association','MTNA',16268,'Somerset Street','Mexico');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Art Education Association','NAEA',16878,'School Street','Virginia');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association for Bilingual Education','NABE',16578,'Russett Street','Nevada');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association for Pupil Transportation','NAPT',16599,'Rooney Street','Michigan');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association for the Education of Young Children','NAEYC',16478,'Rinfret Drive ','Kentucky');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of Advisors for the Health Professions','NAAHP',17678,'Pleasant Street','Carolina');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of Agricultural Educators','NAAE',16278,'Pierce Road','Mexico');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of Biology Teachers','NABT',16558,'Parkway South','Arizona');    
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of Elementary School Principals','NAESP',15678,'Oak Street','Colorado');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of Extenion Program and Staff Development Professionals','NAEPSDP',16588,'North Road','California');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of Geoscience Teachers','NAGT',15478,'Mill Street','Mississippi');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of Scholars','NAS',14478,'Maple Street','Carolina');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of School Psychologists','NASP',16278,'Liberty Drive','Mexico');
INSERT INTO Organization (NameOrg,ShortName,TK,Street,City)
           VALUES ('National Association of School Resource Officers','NASRO',12278,'High Street','Virginia'); 



CREATE TABLE Researcher (
  ResearchID int not null AUTO_INCREMENT,
  FirstName varchar(50) not null,
  LastName varchar(50) not null,
  DateBirth date,
  Age int AS (year(CURRENT_DATE) - year(DateBirth)),
  check (Age>=18),
  Sex varchar(10),
  NameOrg varchar(100) not null,
  DateWork date,
  CONSTRAINT PRIMARY KEY (ResearchID),
  CONSTRAINT FOREIGN KEY (NameOrg) REFERENCES Organization(NameOrg) ON UPDATE CASCADE ON DELETE cascade
);


INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('John','Smith',STR_TO_DATE("10-17-1986", "%m-%d-%Y"),'male','American Association of Physics Teachers',STR_TO_DATE("10-17-2021", "%m-%d-%Y"));           
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Alex','Rock',STR_TO_DATE("9-9-1986", "%m-%d-%Y"),'male','American Association of School Personnel Administrators',STR_TO_DATE("1-22-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Lampros','Papadopoulos',STR_TO_DATE("3-16-1996", "%m-%d-%Y"),'male','National Association of School Resource Officers',STR_TO_DATE("9-23-2020", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Markos','Stellatos',STR_TO_DATE("9-12-1946", "%m-%d-%Y"),'male','National Association of School Psychologists',STR_TO_DATE("8-12-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Paul','Kanellopoulos',STR_TO_DATE("1-29-1972", "%m-%d-%Y"),'male','National Association of Scholars',STR_TO_DATE("9-7-2018", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('George','Gotsis',STR_TO_DATE("4-7-1945", "%m-%d-%Y"),'male','American Association of School Personnel Administrators',STR_TO_DATE("5-2-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Nick','Makris',STR_TO_DATE("1-17-1954", "%m-%d-%Y"),'male','National Association of School Psychologists',STR_TO_DATE("6-7-2015", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Teo','Masouras',STR_TO_DATE("2-1-1965", "%m-%d-%Y"),'male','National Association of School Safety and Law Enforcement Officials',STR_TO_DATE("7-26-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Maik','Trasanis',STR_TO_DATE("3-2-1956", "%m-%d-%Y"),'male','American Association of Physics Teachers',STR_TO_DATE("3-1-2020", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Vagia','Tragaris',STR_TO_DATE("4-3-1976", "%m-%d-%Y"),'female','National Association of School Safety and Law Enforcement Officials',STR_TO_DATE("2-28-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Bill','Karappas',STR_TO_DATE("5-4-1967", "%m-%d-%Y"),'male','National Association of School Resource Officers',STR_TO_DATE("1-14-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Isaac','Politopoulos',STR_TO_DATE("6-5-1989", "%m-%d-%Y"),'male','American Association of School Personnel Administrators',STR_TO_DATE("8-8-2018", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('John','Sunnefias',STR_TO_DATE("7-6-1998", "%m-%d-%Y"),'male','American Association of Teachers of German',STR_TO_DATE("11-21-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Alexia','Markopoulos',STR_TO_DATE("9-7-1948", "%m-%d-%Y"),'female','Higher Education Consultants Association',STR_TO_DATE("12-29-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Julia','Theoforopoulos',STR_TO_DATE("10-12-1949", "%m-%d-%Y"),'female','American Council on the Teaching of Foreign Languages',STR_TO_DATE("4-14-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Markos','Stone',STR_TO_DATE("11-13-1976", "%m-%d-%Y"),'male','National Association of School Resource Officers',STR_TO_DATE("1-21-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Leonidas','Fisherman',STR_TO_DATE("12-23-1969", "%m-%d-%Y"),'male','National Association of School Psychologists',STR_TO_DATE("2-10-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Maria','Wood',STR_TO_DATE("1-29-1948", "%m-%d-%Y"),'female','American Association of School Personnel Administrators',STR_TO_DATE("4-25-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Tasos','Mayor',STR_TO_DATE("2-28-1978", "%m-%d-%Y"),'male','National Association for Pupil Transportation',STR_TO_DATE("7-13-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Chris','Cloud',STR_TO_DATE("3-4-1958", "%m-%d-%Y"),'male','National Association of School Psychologists',STR_TO_DATE("8-26-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Stamatis','Sky',STR_TO_DATE("4-12-1959", "%m-%d-%Y"),'male','National Association for Pupil Transportation',STR_TO_DATE("9-7-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('George','Book',STR_TO_DATE("8-16-1956", "%m-%d-%Y"),'male','National Association of School Psychologists',STR_TO_DATE("11-5-2018", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('John','Chaos',STR_TO_DATE("11-15-1954", "%m-%d-%Y"),'male','National Association of School Resource Officers',STR_TO_DATE("10-9-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Panos','Williams',STR_TO_DATE("7-3-1973", "%m-%d-%Y"),'male','American Association of School Personnel Administrators',STR_TO_DATE("12-9-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Patroklos','Brown',STR_TO_DATE("8-2-1963", "%m-%d-%Y"),'male','American Council on the Teaching of Foreign Languages',STR_TO_DATE("10-17-2020", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Jack','Jones',STR_TO_DATE("2-26-1974", "%m-%d-%Y"),'male','Modern Language Association',STR_TO_DATE("10-22-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Dimitris','Miller',STR_TO_DATE("3-21-1972", "%m-%d-%Y"),'male','National Association of School Resource Officers',STR_TO_DATE("10-6-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Manolis','Davis',STR_TO_DATE("6-22-1961", "%m-%d-%Y"),'male','National Association of Advisors for the Health Professions',STR_TO_DATE("8-13-2015", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Aris','Lopez',STR_TO_DATE("10-24-1964", "%m-%d-%Y"),'male','American Association of Teachers of German',STR_TO_DATE("7-17-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('John','Gonzalez',STR_TO_DATE("9-25-1974", "%m-%d-%Y"),'male','Association for Middle-Level Education',STR_TO_DATE("5-9-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Stefanos','Wilson',STR_TO_DATE("10-13-1972", "%m-%d-%Y"),'male','Association for Supervision and Curriculum Development',STR_TO_DATE("2-6-2018", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Eirini','Anderson',STR_TO_DATE("7-3-1973", "%m-%d-%Y"),'female','Association for Middle-Level Education',STR_TO_DATE("8-24-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Anastasis','Thomas',STR_TO_DATE("1-6-1986", "%m-%d-%Y"),'male','National Association of Advisors for the Health Professions',STR_TO_DATE("6-9-2015", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Sakis','Taylor',STR_TO_DATE("2-9-1986", "%m-%d-%Y"),'male','American Association of School Personnel Administrators',STR_TO_DATE("3-22-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Takis','Moore',STR_TO_DATE("4-17-1966", "%m-%d-%Y"),'male','Association for Career & Technical Education',STR_TO_DATE("9-17-2015", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Panagiotis','Jackson',STR_TO_DATE("5-9-1996", "%m-%d-%Y"),'male','National Association of School Psychologists',STR_TO_DATE("10-10-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Mpampis','Martin',STR_TO_DATE("6-17-1975", "%m-%d-%Y"),'male','American Council on the Teaching of Foreign Languages',STR_TO_DATE("10-11-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Grigoris','Lee',STR_TO_DATE("9-9-1986", "%m-%d-%Y"),'male','American Evaluation Association',STR_TO_DATE("6-12-2014", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Arxontis','Perez',STR_TO_DATE("10-17-1998", "%m-%d-%Y"),'male','Association for Career & Technical Education',STR_TO_DATE("9-17-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Spiros','Thompson',STR_TO_DATE("9-23-1989", "%m-%d-%Y"),'male','American Evaluation Association',STR_TO_DATE("10-22-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Marios','White',STR_TO_DATE("10-17-1994", "%m-%d-%Y"),'male','Modern Language Association',STR_TO_DATE("10-17-2010", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Marios','Harris',STR_TO_DATE("9-4-1994", "%m-%d-%Y"),'male','Association for Supervision and Curriculum Development',STR_TO_DATE("10-22-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Paul','Sanchez',STR_TO_DATE("11-17-1995", "%m-%d-%Y"),'male','Modern Language Association',STR_TO_DATE("10-17-2015", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Basilis','Clark',STR_TO_DATE("9-23-1979", "%m-%d-%Y"),'male','Association for Supervision and Curriculum Development',STR_TO_DATE("10-22-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Panagiotis','Ramirez',STR_TO_DATE("10-17-1990", "%m-%d-%Y"),'male','American Council on the Teaching of Foreign Languages',STR_TO_DATE("10-17-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Hlias','Lewis',STR_TO_DATE("12-19-1987", "%m-%d-%Y"),'male','National Association of Scholars',STR_TO_DATE("10-22-2014", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('John','King',STR_TO_DATE("10-17-1974", "%m-%d-%Y"),'male','National Association of Scholars',STR_TO_DATE("10-17-2020", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Thanasis','Robinson',STR_TO_DATE("4-9-1960", "%m-%d-%Y"),'male','National Association of Scholars',STR_TO_DATE("10-22-2011", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Johny','Ashley',STR_TO_DATE("10-17-1996", "%m-%d-%Y"),'male','American Association of Physics Teachers',STR_TO_DATE("10-17-2012", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Derek','Monroe',STR_TO_DATE("10-17-1976", "%m-%d-%Y"),'male','American Association of School Personnel Administrators',STR_TO_DATE("10-17-2013", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Jerry	','West',STR_TO_DATE("10-17-2000", "%m-%d-%Y"),'male','American Association of Teachers of French',STR_TO_DATE("10-17-2018", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Jack','Langley',STR_TO_DATE("10-17-1999", "%m-%d-%Y"),'male','American Association of Teachers of German',STR_TO_DATE("10-17-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Dennis','Daughtler',STR_TO_DATE("10-17-1998", "%m-%d-%Y"),'male','American College Personnel Association',STR_TO_DATE("10-17-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Nicholas','Madison',STR_TO_DATE("10-17-1991", "%m-%d-%Y"),'male','American Council on the Teaching of Foreign Languages',STR_TO_DATE("10-17-2012", "%m-%d-%Y"));         
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Eric','Marley',STR_TO_DATE("10-17-1994", "%m-%d-%Y"),'male','American Evaluation Association',STR_TO_DATE("10-17-2021", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Justin','Hope',STR_TO_DATE("10-17-1996", "%m-%d-%Y"),'male','American Historical Association',STR_TO_DATE("10-17-2009", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Samuel','Ellis',STR_TO_DATE("10-17-1996", "%m-%d-%Y"),'male','Association for Biblical Higher Education',STR_TO_DATE("10-17-2004", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Benjamin','Jenkins',STR_TO_DATE("10-17-1998", "%m-%d-%Y"),'male','Association for Career & Technical Education',STR_TO_DATE("10-17-2006", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Brandon','McKenna',STR_TO_DATE("10-17-1999", "%m-%d-%Y"),'male','Association for Educational Communications and Technology',STR_TO_DATE("10-17-2008", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Jeffrey','Keller',STR_TO_DATE("10-17-1992", "%m-%d-%Y"),'male','Association for Experiential Education',STR_TO_DATE("10-17-2012", "%m-%d-%Y"));         
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Ryan','Solace',STR_TO_DATE("10-17-1992", "%m-%d-%Y"),'male','Association for Graduate Enrollment Management',STR_TO_DATE("10-17-2011", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Gary','Levine',STR_TO_DATE("10-17-1993", "%m-%d-%Y"),'male','Association for Middle-Level Education',STR_TO_DATE("10-17-2001", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Gary','Collymore',STR_TO_DATE("10-17-1995", "%m-%d-%Y"),'male','National Association of School Safety and Law Enforcement Officials',STR_TO_DATE("10-17-2019", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Brian','Stoll',STR_TO_DATE("10-17-1980", "%m-%d-%Y"),'male','Association for Supervision and Curriculum Development',STR_TO_DATE("10-17-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Kevin','Verlice',STR_TO_DATE("10-17-1987", "%m-%d-%Y"),'male','Association of Independent School Admission Professionals',STR_TO_DATE("10-17-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Matthew','Huxley',STR_TO_DATE("10-17-1976", "%m-%d-%Y"),'male','Association of International Education Administrators',STR_TO_DATE("10-17-2011", "%m-%d-%Y"));         
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Anthony','Ledger',STR_TO_DATE("10-17-1984", "%m-%d-%Y"),'male','Association of International Educators',STR_TO_DATE("10-17-2011", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Donald','Hayes',STR_TO_DATE("10-17-2001", "%m-%d-%Y"),'male','Higher Education Consultants Association',STR_TO_DATE("10-17-2011", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Daniel','Ford',STR_TO_DATE("10-17-2001", "%m-%d-%Y"),'male','Marketing Educators’ Association',STR_TO_DATE("10-17-2020", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Christopher','Finnegan',STR_TO_DATE("10-17-2001", "%m-%d-%Y"),'male','Modern Language Association',STR_TO_DATE("10-17-2020", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Charles','Pierce',STR_TO_DATE("10-17-2001", "%m-%d-%Y"),'male','Music Teachers National Association',STR_TO_DATE("10-17-2011", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Thomas','Gray',STR_TO_DATE("10-17-2001", "%m-%d-%Y"),'male','National Art Education Association',STR_TO_DATE("10-17-2011", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Joseph','Hendrix',STR_TO_DATE("10-17-2000", "%m-%d-%Y"),'male','National Association for Bilingual Education',STR_TO_DATE("10-17-2009", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Richard','Adams',STR_TO_DATE("10-17-2000", "%m-%d-%Y"),'male','National Association for Pupil Transportation',STR_TO_DATE("10-17-2008", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Michael','Carter',STR_TO_DATE("10-17-2000", "%m-%d-%Y"),'male','National Association for the Education of Young Children',STR_TO_DATE("10-17-2007", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Robert','Mintz',STR_TO_DATE("10-17-1999", "%m-%d-%Y"),'male','National Association of Advisors for the Health Professions',STR_TO_DATE("10-17-2006", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Theodore','Ashbluff',STR_TO_DATE("10-17-1999", "%m-%d-%Y"),'male','National Association of Agricultural Educators',STR_TO_DATE("10-17-2004", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Lucas','Marblemaw',STR_TO_DATE("10-17-1999", "%m-%d-%Y"),'male','National Association of Biology Teachers',STR_TO_DATE("10-17-2005", "%m-%d-%Y"));  
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Benjamin','Bozzelli',STR_TO_DATE("10-17-1999", "%m-%d-%Y"),'male','National Association of Elementary School Principals',STR_TO_DATE("10-17-2003", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('William','Fellowes',STR_TO_DATE("10-17-1989", "%m-%d-%Y"),'male','National Association of Extenion Program and Staff Development Professionals',STR_TO_DATE("10-17-2001", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('James','Windward',STR_TO_DATE("10-17-1989", "%m-%d-%Y"),'male','National Association of Geoscience Teachers',STR_TO_DATE("10-17-2015", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Oliver','Yarrow',STR_TO_DATE("10-17-1989", "%m-%d-%Y"),'male','National Association of Scholars',STR_TO_DATE("10-17-2016", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Noah','Yearwood',STR_TO_DATE("10-17-1989", "%m-%d-%Y"),'male','National Association of School Psychologists',STR_TO_DATE("10-17-2017", "%m-%d-%Y"));
INSERT INTO Researcher (FirstName,LastName,DateBirth,Sex,NameOrg,DateWork)
           VALUES ('Liam','Humblecut',STR_TO_DATE("10-17-1986", "%m-%d-%Y"),'male','National Association of School Resource Officers',STR_TO_DATE("10-17-2021", "%m-%d-%Y"));
                
          

       

CREATE TABLE ResearchLab (
  NameOrg varchar(100) not null,
  BudgetPaidias int,
  Budget int,
  CONSTRAINT PRIMARY KEY (NameOrg),
  CONSTRAINT FOREIGN KEY (NameOrg) REFERENCES Organization(NameOrg) ON UPDATE CASCADE ON DELETE CASCADE
);


insert into ResearchLab (NameOrg,BudgetPaidias,Budget)
           values('National Association of School Resource Officers',2100000,500000)

CREATE TABLE Uni (
  NameOrg varchar(100) not null,
  BudgetPaidias int,
  CONSTRAINT PRIMARY KEY (NameOrg),
  CONSTRAINT FOREIGN KEY (NameOrg) REFERENCES Organization(NameOrg) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Company (
  NameOrg varchar(100) not null,
  Stocks int,
  CONSTRAINT PRIMARY KEY (NameOrg),
  CONSTRAINT FOREIGN KEY (NameOrg) REFERENCES Organization(NameOrg) ON UPDATE CASCADE ON DELETE CASCADE
);



INSERT INTO ResearchLab (NameOrg,BudgetPaidias,Budget)
           VALUES ('American Association of Physics Teachers',210000,560000);
INSERT INTO ResearchLab (NameOrg,BudgetPaidias,Budget)
           VALUES ('American Association of School Personnel Administrators',340000,650000);
INSERT INTO ResearchLab (NameOrg,BudgetPaidias,Budget)
           VALUES ('American Association of Teachers of French',432000,450000);
INSERT INTO ResearchLab (NameOrg,BudgetPaidias,Budget)
           VALUES ('American Association of Teachers of German',230000,450000);
INSERT INTO ResearchLab (NameOrg,BudgetPaidias,Budget)
           VALUES ('American College Personnel Association',150000,250000);
INSERT INTO ResearchLab (NameOrg,BudgetPaidias,Budget)
           VALUES ('American Council on the Teaching of Foreign Languages',370000,560000);          
INSERT INTO Uni(NameOrg,BudgetPaidias)
           VALUES ('American Evaluation Association',456000);
INSERT INTO Uni(NameOrg,BudgetPaidias)
           VALUES ('American Historical Association',367000);
INSERT INTO Uni(NameOrg,BudgetPaidias)
           VALUES ('Association for Biblical Higher Education',678000);
INSERT INTO Uni(NameOrg,BudgetPaidias)
           VALUES ('Association for Career & Technical Education',100000);
INSERT INTO Uni(NameOrg,BudgetPaidias)
           VALUES ('Association for Educational Communications and Technology',356000);
INSERT INTO Uni(NameOrg,BudgetPaidias)
           VALUES ('Association for Experiential Education',123000);           
INSERT INTO Uni(NameOrg,BudgetPaidias)
           VALUES ('Association for Graduate Enrollment Management',462000);
INSERT INTO Uni(NameOrg,BudgetPaidias)
           VALUES ('Association for Middle-Level Education',143500);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of School Safety and Law Enforcement Officials',122400);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('Association for Supervision and Curriculum Development',459000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('Association of Independent School Admission Professionals',456000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('Association of International Education Administrators',345000);          
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('Association of International Educators',574000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('Higher Education Consultants Association',346000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('Marketing Educators’ Association',876000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('Modern Language Association',124000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('Music Teachers National Association',886000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Art Education Association',987000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association for Bilingual Education',639000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association for Pupil Transportation',925000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association for the Education of Young Children',124000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of Advisors for the Health Professions',432000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of Agricultural Educators',296000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of Biology Teachers',649000);    
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of Elementary School Principals',529000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of Extenion Program and Staff Development Professionals',235000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of Geoscience Teachers',223000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of Scholars',647000);
INSERT INTO Company(NameOrg,Stocks)
           VALUES ('National Association of School Psychologists',325000);
INSERT into Company(NameOrg,Stocks)
           VALUES ('National Association of School Resource Officers',674000); 



CREATE TABLE Phones (
  NameOrg varchar(100) not null,
  Phone varchar(10) not null,
  CONSTRAINT PRIMARY KEY (NameOrg, Phone),
  CONSTRAINT FOREIGN KEY (NameOrg) REFERENCES Organization(NameOrg) ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association for Middle-Level Education',6987307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association for Biblical Higher Education',6987306520);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association for Career & Technical Education',6985607820);          
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association for Educational Communications and Technology',6987307760);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association for Experiential Education',6987237810);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association for Graduate Enrollment Management',6987097820);   
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of School Safety and Law Enforcement Officials',6087877921);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association for Graduate Enrollment Management',6987091120);                       
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Association of Physics Teachers',6987307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Association of Physics Teachers',6987306520);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Association of School Personnel Administrators',6985607820);          
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Association of School Personnel Administrators',6987307760);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Association of Teachers of French',6987237820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Association of Teachers of German',6987097820);        
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Association of Teachers of German',6987303420);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of School Resource Officers',6987307000);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of School Psychologists',6987311820);          
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of Scholars',6987399820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of Geoscience Teachers',6987377820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of Extenion Program and Staff Development Professionals',6987388820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of Elementary School Principals',6987337820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of Biology Teachers',6987787820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of Agricultural Educators',6987397820);          
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association of Advisors for the Health Professions',6987357820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association for the Education of Young Children',6987327820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association for Pupil Transportation',6947307820);        
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Association for Bilingual Education',6957307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Art Education Association',6987307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('National Art Education Association',6975307820);          
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Music Teachers National Association',6976367820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Music Teachers National Association',6987300000);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Modern Language Association',6987307000);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Marketing Educators’ Association',6987307800);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Marketing Educators’ Association',6987307610);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Higher Education Consultants Association',6987307090);          
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Higher Education Consultants Association',6887307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Higher Education Consultants Association',6787307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association of International Educators',6678307820);        
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association of International Education Administrators',6087307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association of Independent School Admission Professionals',6034277820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('Association for Supervision and Curriculum Development',6097307820);          
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American College Personnel Association',6098307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Council on the Teaching of Foreign Languages',6089307820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Evaluation Association',6912347820);
INSERT INTO phones (NameOrg,Phone)
           VALUES ('American Historical Association',6123407820);




CREATE TABLE Manager (
  ManagerID int not null AUTO_INCREMENT,
  Name varchar(50),
  CONSTRAINT PRIMARY KEY (ManagerID)
);


          
INSERT INTO manager (Name)
           VALUES ('Mr. Markos');  
INSERT INTO manager (Name)
           VALUES ('Mr. Bill');    
INSERT INTO manager (Name)
           VALUES ('Mr. Maik');  
INSERT INTO manager (Name)
           VALUES ('Mr. Alex');
INSERT INTO manager (Name)
           VALUES ('Mr. Nick');  
INSERT INTO manager (Name)
           VALUES ('Mr. Paul');          
INSERT INTO manager (Name)
           VALUES ('Mr. John');  
INSERT INTO manager (Name)
           VALUES ('Mr. George');          
          


CREATE TABLE Scientificfields (
  SciField varchar(50) not null,
  CONSTRAINT PRIMARY KEY (SciField)
);

          
          
INSERT INTO scientificfields (SciField)
           VALUES ('Maths');
INSERT INTO scientificfields (SciField)
           VALUES ('Archeology');          
INSERT INTO scientificfields (SciField)
           VALUES ('Education');
INSERT INTO scientificfields (SciField)
           VALUES ('Computer Science');          
INSERT INTO scientificfields (SciField)
           VALUES ('Technological');
INSERT INTO scientificfields (SciField)
           VALUES ('Language');          
INSERT INTO scientificfields (SciField)
           VALUES ('Health');
INSERT INTO scientificfields (SciField)
           VALUES ('Development');          
INSERT INTO scientificfields (SciField)
           VALUES ('Management');
INSERT INTO scientificfields (SciField)
           VALUES ('History');          
INSERT INTO scientificfields (SciField)
           VALUES ('Trasportation');
INSERT INTO scientificfields (SciField)
           VALUES ('Physics');                
INSERT INTO scientificfields (SciField)
           VALUES ('Nature');  
INSERT INTO scientificfields (SciField)
           VALUES ('Art');              
insert into scientificfields (SciField)
       values('Marketing');      
insert into scientificfields (SciField)
       values('Safety');              
          


CREATE TABLE Programm (
  Prog varchar(50) not null,
  Address varchar(50),
  CONSTRAINT PRIMARY KEY (Prog)
);


         
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog1','Address1');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog2','Address2');           
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog3','Address3');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog4','Address4'); 
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog5','Address5');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog6','Address6');          
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog7','Address7');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog8','Address8');           
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog9','Address9');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog10','Address10'); 
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog11','Address11');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog12','Address12'); 
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog13','Address13');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog14','Address14');           
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog15','Address15');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog16','Address16'); 
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog17','Address17');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog18','Address18');                 
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog19','Address19');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog20','Address20');           
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog21','Address21');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog22','Address22'); 
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog23','Address23');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog24','Address24'); 
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog25','Address25');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog26','Address26');           
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog27','Address27');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog28','Address28'); 
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog29','Address29');  
INSERT INTO Programm (Prog,Address)
           VALUES ('Prog30','Address30');           
          
          
          
          

CREATE TABLE Project (
  ProjectID int not null AUTO_INCREMENT,
  Title varchar(50) not null,
  Money int,
  StartDate datetime,
  EndDate datetime,
  Summary varchar(50),
  Duration int AS (TIMESTAMPDIFF(Day,StartDate, EndDate)),
  check(Duration<=4*366),
  check(StartDate<EndDate),
  ResearchID int not null,
  NameOrg varchar(100) not null,
  ManagerID int not null,
  Prog varchar(50) not null,
  CONSTRAINT PRIMARY KEY (ProjectID),
  CONSTRAINT FOREIGN KEY (NameOrg) REFERENCES Organization(NameOrg) ON UPDATE CASCADE ON DELETE cascade,
  CONSTRAINT FOREIGN KEY (ResearchID) REFERENCES Researcher(ResearchID) ON UPDATE CASCADE ON DELETE cascade,
  CONSTRAINT FOREIGN KEY (ManagerID) REFERENCES Manager(ManagerID) ON UPDATE CASCADE ON DELETE cascade,
  CONSTRAINT FOREIGN KEY (Prog) REFERENCES Programm(Prog) ON UPDATE CASCADE ON DELETE CASCADE
);

select * from manager ;


insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project0',200000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2022", "%m-%d-%Y"),1,'American Association of Physics Teachers',1,'Prog1');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project1',300000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2021", "%m-%d-%Y"),9,'American Association of Physics Teachers',8,'Prog1');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project2',100000,STR_TO_DATE("6-5-1999", "%m-%d-%Y"),STR_TO_DATE("6-5-2000", "%m-%d-%Y"),50,'American Association of Physics Teachers',3,'Prog2');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project3',800000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2022", "%m-%d-%Y"),2,'American Association of School Personnel Administrators',4,'Prog3');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project4',900000,STR_TO_DATE("6-5-2018", "%m-%d-%Y"),STR_TO_DATE("6-5-2020", "%m-%d-%Y"),6,'American Association of School Personnel Administrators',5,'Prog4');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project5',500000,STR_TO_DATE("6-5-2017", "%m-%d-%Y"),STR_TO_DATE("6-5-2018", "%m-%d-%Y"),12,'American Association of School Personnel Administrators',6,'Prog5');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project6',600000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),18,'American Association of School Personnel Administrators',7,'Prog6');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project7',600000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),24,'American Association of School Personnel Administrators',8,'Prog7');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project8',700000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),34,'American Association of School Personnel Administrators',1,'Prog8');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project9',800000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),51,'American Association of School Personnel Administrators',2,'Prog9');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project10',150000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),52,'American Association of Teachers of French',3,'Prog12');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project11',620000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),13,'American Association of Teachers of German',8,'Prog13');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project12',860000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),29,'American Association of Teachers of German',7,'Prog14');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project13',980000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2022", "%m-%d-%Y"),53,'American Association of Teachers of German',6,'Prog15');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project14',560000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),54,'American College Personnel Association',5,'Prog16');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project15',670000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),15,'American Council on the Teaching of Foreign Languages',4,'Prog17');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project16',340000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),25,'American Council on the Teaching of Foreign Languages',3,'Prog18');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project17',850000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),37,'American Council on the Teaching of Foreign Languages',2,'Prog19');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project18',340000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),46,'American Council on the Teaching of Foreign Languages',1,'Prog21');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project19',250000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),55,'American Council on the Teaching of Foreign Languages',8,'Prog21');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project20',650000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2021", "%m-%d-%Y"),38,'American Evaluation Association',7,'Prog23');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project21',120000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),40,'American Evaluation Association',6,'Prog26');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project22',970000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),56,'American Evaluation Association',5,'Prog1');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project23',540000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),57,'American Historical Association',4,'Prog3');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project24',760000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),58,'Association for Biblical Higher Education',3,'Prog2');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project25',280000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),35,'Association for Career & Technical Education',2,'Prog6');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project26',850000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),39,'Association for Career & Technical Education',1,'Prog8');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project27',930000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),59,'Association for Career & Technical Education',8,'Prog12');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project28',480000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),60,'Association for Educational Communications and Technology',7,'Prog11');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project29',820000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),61,'Association for Experiential Education',6,'Prog14');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project30',720000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),62,'Association for Graduate Enrollment Management',5,'Prog16');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project31',840000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),30,'Association for Middle-Level Education',4,'Prog19');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project32',380000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),32,'Association for Middle-Level Education',3,'Prog13');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project33',170000,STR_TO_DATE("8-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),63,'Association for Middle-Level Education',2,'Prog21');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project34',950000,STR_TO_DATE("6-5-2018", "%m-%d-%Y"),STR_TO_DATE("6-5-2021", "%m-%d-%Y"),31,'Association for Supervision and Curriculum Development',1,'Prog25');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project35',620000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),42,'Association for Supervision and Curriculum Development',8,'Prog6');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project36',930000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),44,'Association for Supervision and Curriculum Development',7,'Prog12');              
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project37',380000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),45,'Association for Supervision and Curriculum Development',6,'Prog15');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project38',390000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2025", "%m-%d-%Y"),65,'Association for Supervision and Curriculum Development',5,'Prog14');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project39',840000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),66,'Association of Independent School Admission Professionals',4,'Prog12');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project40',600000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),67,'Association of International Education Administrators',8,'Prog11');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project41',500000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2025", "%m-%d-%Y"),68,'Association of International Educators',5,'Prog10');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project42',660000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),14,'Higher Education Consultants Association',7,'Prog19');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project43',320000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),69,'Higher Education Consultants Association',2,'Prog8');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project44',840000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),70,'Marketing Educators’ Association',6,'Prog7');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project45',150000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),26,'Modern Language Association',8,'Prog6');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project46',840000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),41,'Modern Language Association',7,'Prog2');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project47',930000,STR_TO_DATE("6-5-2019", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),43,'Modern Language Association',4,'Prog2');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project48',390000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2023", "%m-%d-%Y"),71,'Modern Language Association',2,'Prog4');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project49',350000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2024", "%m-%d-%Y"),72,'Music Teachers National Association',7,'Prog8');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project50',730000,STR_TO_DATE("6-5-2023", "%m-%d-%Y"),STR_TO_DATE("6-5-2026", "%m-%d-%Y"),73,'National Art Education Association',4,'Prog4');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project51',910000,STR_TO_DATE("6-5-2023", "%m-%d-%Y"),STR_TO_DATE("6-5-2025", "%m-%d-%Y"),74,'National Association for Bilingual Education',1,'Prog9');       
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project52',340000,STR_TO_DATE("6-5-2020", "%m-%d-%Y"),STR_TO_DATE("6-5-2021", "%m-%d-%Y"),19,'National Association for Pupil Transportation',1,'Prog11');        
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project53',850000,STR_TO_DATE("6-5-2021", "%m-%d-%Y"),STR_TO_DATE("6-5-2025", "%m-%d-%Y"),21,'National Association for Pupil Transportation',2,'Prog12');
insert into Project (Title,Money,StartDate,EndDate,ResearchID,NameOrg,ManagerID,Prog)
        values('Project54',530000,STR_TO_DATE("6-5-2022", "%m-%d-%Y"),STR_TO_DATE("6-5-2026", "%m-%d-%Y"),75,'National Association for Pupil Transportation',1,'Prog13');       


       
CREATE TABLE evaluate (
  ResearchID int not null ,
  ProjectID int not null,
  Grade int not null,
  EvalDate datetime,
  CONSTRAINT PRIMARY KEY (ResearchID, ProjectID),
  CONSTRAINT FOREIGN KEY (ResearchID) REFERENCES Researcher(ResearchID) ON UPDATE CASCADE ON DELETE cascade,
  CONSTRAINT FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID) ON UPDATE CASCADE ON DELETE cascade
);


insert into evaluate (ResearchID,ProjectID,Grade,EvalDate) 
        values(1,1,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate) 
        values(30,2,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));        
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(2,3,7,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(6,4,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y")); 
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(12,5,7,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(15,6,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));        
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(17,7,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(19,8,4,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));        
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(20,9,6,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(21,10,7,STR_TO_DATE("6-5-2019", "%m-%d-%Y")); 
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(22,11,7,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(7,12,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));        
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(1,13,8,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(2,14,4,STR_TO_DATE("6-5-2019", "%m-%d-%Y")); 
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(3,15,8,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(9,16,4,STR_TO_DATE("6-5-2019", "%m-%d-%Y")); 
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(10,17,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(7,18,8,STR_TO_DATE("6-5-2019", "%m-%d-%Y")); 
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(6,19,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(9,20,6,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));            
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(10,21,4,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(56,22,6,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(84,23,8,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(38,24,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(25,25,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(56,26,7,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(65,27,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(46,28,3,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(29,29,7,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(76,30,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(73,31,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(72,32,8,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(69,33,4,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(59,34,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(52,35,8,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(74,36,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));                   
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(49,37,3,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(60,38,8,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(30,39,3,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(50,40,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(69,41,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(62,42,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(48,43,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(28,44,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));            
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(62,45,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(36,46,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(75,47,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(54,48,6,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(27,49,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(25,50,5,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(8,51,9,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(21,52,8,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(47,53,6,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(27,54,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));       
insert into evaluate (ResearchID,ProjectID,Grade,EvalDate)
        values(36,55,10,STR_TO_DATE("6-5-2019", "%m-%d-%Y"));
       
       
CREATE TABLE Delivery (
  ProjectID int not null,
  Title varchar(50) not null,
  Summary varchar(50),
  DateDelivery datetime,
  CONSTRAINT PRIMARY KEY (ProjectID, Title),
  CONSTRAINT FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID) ON UPDATE CASCADE ON DELETE cascade
);

CREATE TABLE works (
  ResearchID int not null,
  ProjectID int not null,
  CONSTRAINT PRIMARY KEY (ResearchID, ProjectID),
  CONSTRAINT FOREIGN KEY (ResearchID) REFERENCES Researcher(ResearchID) ON UPDATE CASCADE ON DELETE cascade,
  CONSTRAINT FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID) ON UPDATE CASCADE ON DELETE cascade
);



insert into works(ResearchID,ProjectID) values(1,1);
insert into works(ResearchID,ProjectID) values(9,2);
insert into works(ResearchID,ProjectID) values(50,3);
insert into works(ResearchID,ProjectID) values(51,10);
insert into works(ResearchID,ProjectID) values(34,9);
insert into works(ResearchID,ProjectID) values(24,8);
insert into works(ResearchID,ProjectID) values(18,7);
insert into works(ResearchID,ProjectID) values(12,6);
insert into works(ResearchID,ProjectID) values(6,5);
insert into works(ResearchID,ProjectID) values(2,4);
insert into works(ResearchID,ProjectID) values(52,11);
insert into works(ResearchID,ProjectID) values(53,14);
insert into works(ResearchID,ProjectID) values(29,13);
insert into works(ResearchID,ProjectID) values(13,12);
insert into works(ResearchID,ProjectID) values(54,15);
insert into works(ResearchID,ProjectID) values(55,20);
insert into works(ResearchID,ProjectID) values(46,19);
insert into works(ResearchID,ProjectID) values(37,18);
insert into works(ResearchID,ProjectID) values(25,17);
insert into works(ResearchID,ProjectID) values(15,16);
insert into works(ResearchID,ProjectID) values(38,21);
insert into works(ResearchID,ProjectID) values(40,22);
insert into works(ResearchID,ProjectID) values(56,23);
insert into works(ResearchID,ProjectID) values(57,24);
insert into works(ResearchID,ProjectID) values(58,25);
insert into works(ResearchID,ProjectID) values(59,28);
insert into works(ResearchID,ProjectID) values(39,27);
insert into works(ResearchID,ProjectID) values(35,26);
insert into works(ResearchID,ProjectID) values(60,29);
insert into works(ResearchID,ProjectID) values(61,30);
insert into works(ResearchID,ProjectID) values(62,31);
insert into works(ResearchID,ProjectID) values(30,32);
insert into works(ResearchID,ProjectID) values(32,33);
insert into works(ResearchID,ProjectID) values(63,34);
insert into works(ResearchID,ProjectID) values(65,39);
insert into works(ResearchID,ProjectID) values(45,38);
insert into works(ResearchID,ProjectID) values(44,37);
insert into works(ResearchID,ProjectID) values(42,36);
insert into works(ResearchID,ProjectID) values(31,35);
insert into works(ResearchID,ProjectID) values(66,40);
insert into works(ResearchID,ProjectID) values(67,41);
insert into works(ResearchID,ProjectID) values(68,42);
insert into works(ResearchID,ProjectID) values(14,43);
insert into works(ResearchID,ProjectID) values(69,44);
insert into works(ResearchID,ProjectID) values(70,45);
insert into works(ResearchID,ProjectID) values(71,49);
insert into works(ResearchID,ProjectID) values(43,48);
insert into works(ResearchID,ProjectID) values(41,47);
insert into works(ResearchID,ProjectID) values(26,46);
insert into works(ResearchID,ProjectID) values(72,50);
insert into works(ResearchID,ProjectID) values(73,51);
insert into works(ResearchID,ProjectID) values(74,52);
insert into works(ResearchID,ProjectID) values(19,53);
insert into works(ResearchID,ProjectID) values(21,54);
insert into works(ResearchID,ProjectID) values(75,55);
insert into works(ResearchID,ProjectID) values(1,2);
insert into works(ResearchID,ProjectID) values(1,3);
insert into works(ResearchID,ProjectID) values(9,3);
insert into works(ResearchID,ProjectID) values(9,2);
insert into works(ResearchID,ProjectID) values(50,1);
insert into works(ResearchID,ProjectID) values(2,5);
insert into works(ResearchID,ProjectID) values(2,6);
insert into works(ResearchID,ProjectID) values(2,7);
insert into works(ResearchID,ProjectID) values(6,4);
insert into works(ResearchID,ProjectID) values(6,10);
insert into works(ResearchID,ProjectID) values(6,8);
insert into works(ResearchID,ProjectID) values(12,10);
insert into works(ResearchID,ProjectID) values(12,9);
insert into works(ResearchID,ProjectID) values(12,7);
insert into works(ResearchID,ProjectID) values(18,4);
insert into works(ResearchID,ProjectID) values(18,5);
insert into works(ResearchID,ProjectID) values(18,6);
insert into works(ResearchID,ProjectID) values(24,4);
insert into works(ResearchID,ProjectID) values(24,10);
insert into works(ResearchID,ProjectID) values(24,7);
insert into works(ResearchID,ProjectID) values(34,8);
insert into works(ResearchID,ProjectID) values(34,7);
insert into works(ResearchID,ProjectID) values(34,10);
insert into works(ResearchID,ProjectID) values(51,9);
insert into works(ResearchID,ProjectID) values(51,4);
insert into works(ResearchID,ProjectID) values(51,5);
insert into works(ResearchID,ProjectID) values(51,6);
insert into works(ResearchID,ProjectID) values(13,13);
insert into works(ResearchID,ProjectID) values(13,14);
insert into works(ResearchID,ProjectID) values(29,12);
insert into works(ResearchID,ProjectID) values(29,14);
insert into works(ResearchID,ProjectID) values(53,12);
insert into works(ResearchID,ProjectID) values(15,17);
insert into works(ResearchID,ProjectID) values(15,18);
insert into works(ResearchID,ProjectID) values(25,16);
insert into works(ResearchID,ProjectID) values(25,20);
insert into works(ResearchID,ProjectID) values(37,19);
insert into works(ResearchID,ProjectID) values(37,16);
insert into works(ResearchID,ProjectID) values(46,20);
insert into works(ResearchID,ProjectID) values(46,18);
insert into works(ResearchID,ProjectID) values(55,16);
insert into works(ResearchID,ProjectID) values(55,17);
insert into works(ResearchID,ProjectID) values(38,22);
insert into works(ResearchID,ProjectID) values(40,23);
insert into works(ResearchID,ProjectID) values(56,21);
insert into works(ResearchID,ProjectID) values(35,27);
insert into works(ResearchID,ProjectID) values(39,28);
insert into works(ResearchID,ProjectID) values(58,26);
insert into works(ResearchID,ProjectID) values(30,33);
insert into works(ResearchID,ProjectID) values(32,34);
insert into works(ResearchID,ProjectID) values(63,32);
insert into works(ResearchID,ProjectID) values(31,36);
insert into works(ResearchID,ProjectID) values(31,39);
insert into works(ResearchID,ProjectID) values(42,35);
insert into works(ResearchID,ProjectID) values(42,37);
insert into works(ResearchID,ProjectID) values(44,38);
insert into works(ResearchID,ProjectID) values(65,35);
insert into works(ResearchID,ProjectID) values(65,37);
insert into works(ResearchID,ProjectID) values(14,44);
insert into works(ResearchID,ProjectID) values(26,47);
insert into works(ResearchID,ProjectID) values(26,49);
insert into works(ResearchID,ProjectID) values(43,49);
insert into works(ResearchID,ProjectID) values(43,46);
insert into works(ResearchID,ProjectID) values(19,55);
insert into works(ResearchID,ProjectID) values(21,53);
insert into works(ResearchID,ProjectID) values(75,54);



CREATE TABLE about (
  SciField varchar(50) not null,
  ProjectID int not null,
  CONSTRAINT PRIMARY KEY (SciField, ProjectID),
  CONSTRAINT FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID) ON UPDATE CASCADE ON DELETE cascade,
  CONSTRAINT FOREIGN KEY (SciField) REFERENCES Scientificfields(SciField) ON UPDATE CASCADE ON DELETE cascade
);


insert into about (SciField,ProjectID)
        values('Maths',1); 
insert into about (SciField,ProjectID)
        values('Education',1);
insert into about (SciField,ProjectID)
        values('Development',2); 
insert into about (SciField,ProjectID)
        values('Management',2);       
insert into about (SciField,ProjectID)
        values('Language',3); 
insert into about (SciField,ProjectID)
        values('Language',4); 
insert into about (SciField,ProjectID)
        values('Language',6);             
insert into about (SciField,ProjectID)
        values('Civilization',6); 
insert into about (SciField,ProjectID)
        values('Education',7);         
insert into about (SciField,ProjectID)
        values('Development',8); 
insert into about (SciField,ProjectID)
        values('Computer Science',9);             
insert into about (SciField,ProjectID)
        values('Development',9); 
insert into about (SciField,ProjectID)
        values('History',9);
insert into about (SciField,ProjectID)
        values('Development',10); 
insert into about (SciField,ProjectID)
        values('History',10);  
insert into about (SciField,ProjectID)
        values('Development',11); 
insert into about (SciField,ProjectID)
        values('History',11); 
insert into about (SciField,ProjectID)
        values('Education',12); 
insert into about (SciField,ProjectID)
        values('Management',13);             
insert into about (SciField,ProjectID)
        values('Education',14); 
insert into about (SciField,ProjectID)
        values('Development',15);  
insert into about (SciField,ProjectID)
        values('Computer Science',15); 
insert into about (SciField,ProjectID)
        values('Language',16); 
insert into about (SciField,ProjectID)
        values('Language',17);             
insert into about (SciField,ProjectID)
        values('Education',18); 
insert into about (SciField,ProjectID)
        values('Development',19);       
insert into about (SciField,ProjectID)
        values('Health',20); 
insert into about (SciField,ProjectID)
        values('Education',21);             
insert into about (SciField,ProjectID)
        values('Health',22); 
insert into about (SciField,ProjectID)
        values('Education',23);       
insert into about (SciField,ProjectID)
        values('Technological',24);          
insert into about (SciField,ProjectID)
        values('Education',25);  
insert into about (SciField,ProjectID)
        values('Development',26);  
insert into about (SciField,ProjectID)
        values('Management',26);      
insert into about (SciField,ProjectID)
        values('Development',27);  
insert into about (SciField,ProjectID)
        values('Management',27);        
insert into about (SciField,ProjectID)
        values('Health',28);  
insert into about (SciField,ProjectID)
        values('Education',29);
insert into about (SciField,ProjectID)
        values('History',29);   
insert into about (SciField,ProjectID)
        values('Nature',29);       
insert into about (SciField,ProjectID)
        values('Nature',30);          
insert into about (SciField,ProjectID)
        values('Health',31);  
insert into about (SciField,ProjectID)
        values('Education',32);         
insert into about (SciField,ProjectID)
        values('Trasportation',33);          
insert into about (SciField,ProjectID)
        values('Education',34);  
insert into about (SciField,ProjectID)
        values('Language',34);         
insert into about (SciField,ProjectID)
        values('Education',35);          
insert into about (SciField,ProjectID)
        values('Education',36);  
insert into about (SciField,ProjectID)
        values('Art',36);  
insert into about (SciField,ProjectID)
        values('Art',37);          
insert into about (SciField,ProjectID)
        values('Language',38);  
insert into about (SciField,ProjectID)
        values('Physics',39);    
insert into about (SciField,ProjectID)
        values('Marketing',40);          
insert into about (SciField,ProjectID)
        values('Education',40);  
insert into about (SciField,ProjectID)
        values('Education',41);         
insert into about (SciField,ProjectID)
        values('Marketing',42);          
insert into about (SciField,ProjectID)
        values('Education',43);  
insert into about (SciField,ProjectID)
        values('Management',44);             
insert into about (SciField,ProjectID)
        values('Education',45);          
insert into about (SciField,ProjectID)
        values('Development',46);  
insert into about (SciField,ProjectID)
        values('Civilization',47);  
insert into about (SciField,ProjectID)
        values('Safety',47);          
insert into about (SciField,ProjectID)
        values('Education',48);  
insert into about (SciField,ProjectID)
        values('Management',49);         
insert into about (SciField,ProjectID)
        values('Education',50);          
insert into about (SciField,ProjectID)
        values('Technological',51);  
insert into about (SciField,ProjectID)
        values('Technological',52);         
insert into about (SciField,ProjectID)
        values('Language',53);          
insert into about (SciField,ProjectID)
        values('Archeology',54);  
insert into about (SciField,ProjectID)
        values('History',54);             

          