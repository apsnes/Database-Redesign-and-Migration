-- Drop the database if it exists
IF DB_ID('topmodelsql') IS NOT NULL
BEGIN
    ALTER DATABASE topmodelsql SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE topmodelsql;
END

CREATE DATABASE topmodelsql;
GO

USE topmodelsql;
GO

DROP TABLE IF EXISTS models;

CREATE TABLE models
( 
    model_id INT IDENTITY(1,1) PRIMARY KEY,   
    model_name VARCHAR(100),                  
    area VARCHAR(50),                         
    price_per_event FLOAT,                    
    category VARCHAR(100),                    
    agent VARCHAR(50),                        
    brand VARCHAR(MAX),                               
    trait VARCHAR(60),                        
    rating INT,                               
    next_event_date VARCHAR(50),              
    revenue FLOAT                             
);
GO

INSERT INTO models
    (model_name, area, price_per_event, category, agent, brand, trait, rating, next_event_date, revenue ) 
VALUES
    ('Bartholomew P', 'Milan', 499.99, 'Fashion', 'Verity', 'Louboutin, H&M', 'Pro strutter', 7, '15 November 2022', 2999.94),
    ('Notso Neat', 'Online', 9.99, 'Promotional', 'Alex', 'Aldi, Poundland', 'The dadbod drop', 1, '12 September 2022', 149.85),
    ('Jarred MacKenzie', 'Los Angeles', 170.00, 'Fitness', 'Paul', 'Patagonia, Buff, Salomon', 'Fire_eating', 4, '8 January 2022', 1530),
    ('Rathbones Arr', 'London', 263.82, 'Parts', 'Kev', 'Adidas', 'Hand modelling', 5, '6 March 2022', 1846.74),
    ('Sarah B', 'Online', 432.25, 'Fitness', 'Alex', 'Ebay, Vinted, Instagram', 'Influencer', 7, '23 October 2022', 3458),
    ('Cat Wang', 'Milan', 600.00, 'Fashion', 'Verity', 'Charities', 'Catwalker', 8, '14 May 2022', 3600),
    ('Starr Schema', 'Crewe', 250.00, 'Glamour', 'Rose', 'Oricle, Marks and Spencer', 'Databases', 5, '12 September 2022', 1500),
    ('Sam Pagne', 'Athens', 899.99 , 'Swimsuit', 'Katherine', 'Harrods, HSBC', 'Old-money', 9, '20 January 2022', 9899.89),
    ('Salle De Bain', 'Stockholm', 150.00 , 'Commercial', 'Christian', 'Ikea, Wayfair, Amazon', 'Architect', 3, '16 July 2022', 1050),
    ('Slam Dunk', 'Los Angeles', 801.65 , 'Fitness', 'Paul', 'Nike, Adidas, Reebok', 'High-tops', 9, '23 August 2022', 7214.85),
    ('Hannah Bee', 'Milan', 325.00 , 'Promotional', 'Verity', 'Chanel, Dior, Stella McCartney', 'Photography', 6, '1 March 2022', 1625),
    ('Rainsface W', 'Athens', 120.00 , 'Parts', 'Katherine', 'United Utilities', 'Impromptu crying', 3, '14 May 2022', 480),
    ('Raul Pogerson', 'Stockholm', 50.00 , 'Commercial', 'Christian', 'Listo Burritos', 'Messy eating', 2, '12 September 2022', 950),
    ('Ray Z', 'London', 470.68 , 'Parts', 'Kev', 'Marvel Studios', 'Card magic', 7, '18 April 2022', 5177.48),
    ('Pat Munns', 'Milan', 737.96, 'Fashion', 'Verity', 'Versace', 'Super Slow Motion', 9, '07 May 2022', 2530.35),
    ('Kasper Topling', 'London', 905.77, 'Fashion', 'Kev', 'Ikea', 'Invisible Burping', 8, '25 September 2022', 5981.72),
    ('Ulrika MacGarvey', 'Stockholm', 142.15, 'Parts', 'Christian', 'Patagonia', 'Telepathic Yawn', 5, '25 April 2022', 7012.22),
    ('Gerrard Scorthorne','Athens',377.39,'Swimsuit','Katherine','Salomon','handstands',4,'09 March 2024',8900.56),
    ('Haskel McKinless','Milan',146.77,'Fashion','Verity','Amazon','Incredible Juggling Skills',2,'10 October 2022',8915.73),
    ('Gwenni Dubarry','Los Angeles',73.50,'Fitness','Paul','Versace','Incredible Nose Hair Growth',10,'30 August 2022',7029.15),
    ('Booth Innocenti','Milan',622.60,'Fitness','Verity','Valentino','Incredible Juggling Skills',10,'09 March 2022',6664.83),
    ('Bess Wildman','Los Angeles',105.66,'Promotional','Paul','HSBC','Superhuman Lip Syncing',1,'25 June 2023',7338.05),
    ('Miles Newgrosh','Crewe',968.73,'Fashion','Rose','Marks and Spencer','Extreme Paper Cut',3,'30 June 2025',3676.74),
    ('Lynea Van den Bosch','Los Angeles',800.24,'Fitness','Paul','Gucci','Super Slow Motion',6,'28 May 2024',5921.78),
    ('Melantha Trowell','Stockholm',677.72,'Fitness','Christian','Oricle','Unlimited Laughter Generation',2,'02 August 2022',5420.18),
    ('Laryssa Gowthrop','Milan',525.18,'Fashion','Verity','Marks and Spencer','Mind Reading Comedy',1,'11 April 2024',8164.88),
    ('Wolfgang Oxshott','Crewe',346.91,'Glamour','Rose','Givenchy','fall asleep anywhere',9,'11 April 2024',3103.04),
    ('Alejandrina Bambrugh','Athens',577.21,'Swimsuit','Katherine','Instagram','finding loose change',3,'21 February 2022',6168.83),
    ('Zenia Faich','Los Angeles',444.00,'Fashion','Paul','Marks and Spencer','Incredible Juggling Skills',3,'26 February 2025',8640.60),
    ('Ashlie Seater','Milan',625.87,'Promotional','Verity','Harrods','Infinite Clumsiness',8,'02 October 2023',7123.58),
    ('Jean Laval','Stockholm',684.13,'Fashion','Christian','HSBC','Unlimited Dance Moves',8,'13 January 2025',9272.94),
    ('Tally Durrad','Los Angeles',648.85,'Fitness','Paul','Chanel','Infinite Clumsiness',7,'19 October 2023',7242.38),
    ('Amie Pepler','Los Angeles',823.67,'Fitness','Paul','Charities','Turn Anything into a Dad Joke',7,'14 August 2024',6640.76),
    ('Selene Fowle','Milan',897.98,'Fashion','Verity','Poundland','Invisible Sneeze',0,'02 June 2022',5694.69),
    ('Raimondo Causby','Los Angeles',860.55,'Fitness','Paul','Chanel','Superhuman Hiccup Control',5,'17 August 2023',1266.66),
    ('Gilberta Leavey','Los Angeles',150.69,'Fashion','Paul','Fendi','Unlimited Dance Moves',6,'23 March 2025',7227.50),
    ('Sergio Haversum','Online',773.96,'Promotional','Alex','Chanel','double jointed thumbs',8,'03 November 2023',9123.70),
    ('Aridatha Ianinotti','Stockholm',822.21,'Promotional','Christian','Instagram','Infinite Dad Jokes',5,'15 February 2022',8266.27),
    ('Jervis Mathey','Los Angeles',969.88,'Fitness','Paul','Instagram','Instantaneous Spoon Bending',4,'28 December 2024',8553.00),
    ('Toinette Machon','Online',953.21,'Promotional','Alex','Gucci','finding loose change',4,'22 June 2024',7406.08),
    ('Carrie Gerling','Athens',358.29,'Swimsuit','Katherine','Stella McCartney','double jointed thumbs',7,'14 February 2022',5109.00),
    ('Ninetta Pettwood','Athens',546.79,'Swimsuit','Katherine','Prada','Instantaneous Spoon Bending',5,'14 March 2022',8407.88),
    ('Scot Connow','Stockholm',143.37,'Commercial','Christian','Vinted','Superhuman Lip Syncing',7,'11 March 2022',2910.15),
    ('Zandra Siggs','Stockholm',274.27,'Parts','Christian','Prada','Super Sticky Fingers',3,'25 December 2025',2010.34),
    ('Carmon Orfeur','Stockholm',691.41,'Fashion','Christian','Salomon','Infinite Clumsiness',8,'26 May 2024',7510.91),
    ('Meyer Potapczuk','Crewe',692.23,'Promotional','Rose','Reebok','Unlimited Laughter Generation',6,'15 September 2025',2827.29),
    ('Melisandra Achurch','Stockholm',20.99,'Fashion','Christian','Poundland','Super Ticklish Fingers',5,'04 March 2024',9410.09),
    ('Hervey Fadell','London',104.36,'Fitness','Kev','HSBC','forgetting birthdays',2,'08 April 2025',2261.26),
    ('Daron Humpage','Milan',412.53,'Fashion','Verity','Salomon','forgetting birthdays',6,'11 April 2023',3763.64),
    ('Leodora Trembath','Athens',82.59,'Fitness','Katherine','Adidas','Infinite Hiccups',0,'21 January 2022',2375.73),
    ('Gregoor Pearne','Athens',745.96,'Swimsuit','Katherine','HSBC','Superhuman Hiccup Control',2,'20 October 2024',5348.84),
    ('Tobin Eskell','London',23.65,'Fashion','Kev','Louboutin','Unlimited Laughter Generation',2,'14 October 2022',9915.01),
    ('Eugenia McCraine','Online',449.59,'Promotional','Alex','Fendi','Invisible Sneeze',3,'29 September 2022',1263.75),
    ('Gus Disman','Athens',519.32,'Promotional','Katherine','Charities','movie quotes',1,'11 March 2023',4491.60),
    ('Barbabas Biles','Athens',694.95,'Fitness','Katherine','Ebay','Super Speed Typing',3,'21 February 2023',6153.47),
    ('Titus Lexa','Online',261.30,'Promotional','Alex','Dior','fall asleep anywhere',4,'04 February 2024',6448.92),
    ('Grethel Matantsev','London',876.86,'Parts','Kev','Salomon','Infinite Clumsiness',5,'08 June 2022',5558.62),
    ('Lesly Mallinar','Athens',833.10,'Swimsuit','Katherine','Charities','handstands',9,'20 March 2024',4036.88),
    ('Agnesse Peniman','Crewe',462.78,'Parts','Rose','Louboutin','Super Slow Motion',9,'13 June 2025',5597.08),
    ('Bendick Douglass','London',945.58,'Promotional','Kev','Versace','Super Ticklish Fingers',4,'12 July 2023',1474.44),
    ('Farleigh Dunsire','Crewe',272.13,'Glamour','Rose','Chanel','lucky charm',7,'04 September 2022',9035.74),
    ('Verena Houtby','Stockholm',348.59,'Promotional','Christian','Salomon','lucky charm',2,'27 January 2023',8403.66),
    ('Yetty Wildblood','Online',261.59,'Promotional','Alex','Stella McCartney','double jointed thumbs',7,'09 August 2022',5589.56),
    ('Hagan Romanini','Crewe',965.73,'Glamour','Rose','Ikea','Uncontrollable Tickling',0,'07 September 2022',6381.88),
    ('Coletta Jonson','Stockholm',267.08,'Fashion','Christian','Louboutin','double jointed thumbs',0,'01 September 2023',2414.30),
    ('Jobyna Denisevich','London',462.76,'Fashion','Kev','Patagonia','freckles on nose',7,'30 March 2025',4860.30),
    ('Nels Jaumet','Los Angeles',921.94,'Fitness','Paul','Prada','finding loose change',2,'15 January 2024',3398.12),
    ('Harman Callam','Los Angeles',217.82,'Fitness','Paul','Balenciaga','forgetting birthdays',10,'04 October 2022',5207.40),
    ('Roderick Piotrkowski','Crewe',677.03,'Fitness','Rose','Fendi','Extreme Paper Cut',7,'18 January 2022',3370.55),
    ('Dniren Sulley','Milan',678.53,'Promotional','Verity','Poundland','parallel parking',10,'30 March 2025',5402.89),
    ('Shanon Bodman','London',596.48,'Parts','Kev','Adidas','finding loose change',4,'11 September 2024',9968.41),
    ('Keven Tanby','Milan',535.66,'Fashion','Verity','Patagonia','Mildly Annoying Whistle',3,'21 October 2024',9427.66),
    ('Filia Prest','London',482.12,'Fashion','Kev','Oricle','Unlimited Laughter Generation',8,'09 April 2025',2174.42),
    ('Margareta Sartain','London',984.61,'Glamour','Kev','Aldi','movie quotes',7,'27 December 2024',9933.17),
    ('Janey Fluin','Milan',263.88,'Fitness','Verity','Aldi','handstands',1,'02 May 2024',4855.92),
    ('Darill Rosenthal','Los Angeles',951.66,'Fitness','Paul','HSBC','movie quotes',3,'20 April 2025',8437.51),
    ('Theodoric Henze','Online',34.22,'Promotional','Alex','Gucci','lucky charm',6,'14 April 2022',5422.50),
    ('Delinda Raubenheim','Milan',750.85,'Glamour','Verity','Ebay','handstands',10,'28 November 2023',9757.66),
    ('Haslett McTrustey','Online',961.98,'Promotional','Alex','Charities','Extreme Sarcasm Power',9,'17 July 2024',3188.04),
    ('Holly Thwaites','Online',257.56,'Fashion','Alex','Adidas','freckles on nose',1,'06 January 2022',5813.02),
    ('Georgie Sweetman','Milan',282.08,'Glamour','Verity','Amazon','handstands',2,'10 April 2023',7200.32),
    ('Stacey Congreve','London',711.79,'Parts','Kev','Dior','fall asleep anywhere',0,'14 May 2025',3232.80),
    ('Corbie Jillings','Stockholm',459.55,'Fitness','Christian','Versace','Infinite Hiccups',0,'02 August 2025',2907.12),
    ('Kennie Phipp','Milan',784.17,'Fitness','Verity','Ebay','lucky charm',10,'26 July 2025',5466.73),
    ('Pryce Tolotti','Milan',109.59,'Fashion','Verity','Buff','Super Ticklish Fingers',2,'09 January 2025',7511.87),
    ('Marji Semorad','Crewe',335.98,'Promotional','Rose','Salomon','Superhuman Hiccup Control',6,'04 June 2022',9433.66),
    ('Kissie Jandel','Stockholm',370.34,'Parts','Christian','Ikea','Super Sticky Fingers',2,'27 June 2022',6101.96),
    ('Halimeda Cordeix','London',313.71,'Parts','Kev','Gucci','Invisible Sneeze',10,'22 April 2023',8389.94),
    ('Orin Smuth','Crewe',138.11,'Glamour','Rose','Chanel','Super Sticky Fingers',6,'07 July 2025',1706.80),
    ('Constanta Teas','London',698.73,'Swimsuit','Kev','Chanel','Instantaneous Spoon Bending',3,'23 May 2023',9167.10),
    ('Mano Arnecke','Athens',372.71,'Swimsuit','Katherine','Prada','perfect pitch',5,'08 June 2025',4715.83),
    ('Dona Whittleton','Milan',729.24,'Fashion','Verity','Salomon','Instantaneous Costume Changes',7,'01 September 2024',4670.84),
    ('Margareta Hooks','Athens',265.88,'Swimsuit','Katherine','Stella McCartney','wiggle ears',2,'06 September 2024',2925.11),
    ('Livvy Brattan','Los Angeles',732.49,'Promotional','Paul','Oricle','Instantaneous Costume Changes',9,'05 September 2023',3356.70),
    ('Skyler Arend','Crewe',325.12,'Fitness','Rose','Nike','parallel parking',9,'26 December 2023',8178.69),
    ('Jeni Michel','London',613.03,'Swimsuit','Kev','Vinted','double jointed thumbs',6,'22 September 2023',4829.27),
    ('Ajay Giametti','Milan',126.19,'Fashion','Verity','Louboutin','wiggle ears',3,'05 July 2023',9075.43),
    ('Micaela Galliford','Stockholm',61.11,'Fashion','Christian','Prada','Telepathic Puns',0,'15 March 2023',7092.30),
    ('Rayshell Beresfore','London',376.86,'Parts','Kev','Buff','Invisible Burping',2,'27 July 2025',9671.18),
    ('Whitman Neads','Los Angeles',804.73,'Fitness','Paul','Instagram','parallel parking',2,'30 October 2024',6397.33),
    ('Nadia Grimmer','London',900.55,'Fashion','Kev','Salomon','Infinite Clumsiness',3,'26 March 2022',9305.22),
    ('Lucie Demer','Los Angeles',541.81,'Promotional','Paul','Louis Vuitton','Unlimited Laughter Generation',3,'08 February 2022',9538.42),
    ('Violette Tombleson','Milan',936.06,'Fashion','Verity','Ebay','Mildly Annoying Whistle',4,'23 April 2022',8980.86),
    ('Jozef Esler','Stockholm',563.60,'Parts','Christian','Dior','human GPS',7,'07 April 2025',8480.52),
    ('Jamey Golley','Crewe',867.13,'Fitness','Rose','HSBC','double jointed thumbs',5,'23 August 2025',8027.50),
    ('Colin Palatini','Stockholm',877.37,'Parts','Christian','Wayfair','double jointed thumbs',4,'01 January 2025',2085.11),
    ('Delilah Ducker','Crewe',45.43,'Glamour','Rose','Adidas','Invisible Burping',5,'07 August 2022',8934.36),
    ('Regen Aldrin','Stockholm',440.61,'Fashion','Christian','Adidas','Invisible Sneeze',4,'07 June 2024',2945.00),
    ('Millard Longhorn','Los Angeles',510.92,'Fitness','Paul','Amazon','wiggle ears',2,'11 May 2024',1126.50),
    ('Bayard Camilleri','Milan',540.52,'Promotional','Verity','Charities','Superhuman Hiccup Control',2,'29 October 2022',3700.51),
    ('Jacky Ibbeson','Athens',789.08,'Swimsuit','Katherine','Harrods','Invisible Sneeze',2,'25 April 2025',9967.48),
    ('Jared Slimming','London',817.63,'Parts','Kev','Oricle','knowing when it''s going to rain',1,'23 March 2023',4964.90),
    ('Hervey Mickleburgh','Stockholm',951.77,'Parts','Christian','Aldi','Super Slow Motion',4,'30 May 2025',4824.29),
    ('Drugi St. Leger','Athens',639.33,'Swimsuit','Katherine','Harrods','finding loose change',1,'29 April 2023',7228.36),
    ('Cyb Pryn','Los Angeles',128.81,'Fashion','Paul','Oricle','touch nose with tongue',0,'26 August 2025',3327.48),
    ('Ingemar Gaul','Online',688.47,'Glamour','Alex','Ikea','Extreme Sarcasm Power',5,'22 November 2025',4189.80),
    ('Millard Scurrer','Los Angeles',836.90,'Fitness','Paul','Buff','Unlimited Dance Moves',6,'24 September 2022',9885.37),
    ('Sibyl Strathman','Online',225.92,'Promotional','Alex','H&M','forgetting birthdays',1,'04 September 2025',9410.86),
    ('Janella Clearie','Milan',648.68,'Fashion','Verity','Buff','Super Ticklish Fingers',0,'31 October 2024',9483.61),
    ('Kyle Bester','Milan',180.42,'Fashion','Verity','Vinted','handstands',1,'18 October 2022',8509.09),
    ('Anna diane Blondin','Stockholm',502.86,'Fitness','Christian','Salomon','freckles on nose',3,'20 January 2024',2460.48),
    ('Marcello Filliskirk','Crewe',550.39,'Fashion','Rose','Charities','movie quotes',7,'06 February 2022',6632.68),
    ('Toni Drei','Milan',194.82,'Parts','Verity','Balenciaga','Unbreakable Shoelaces',7,'03 February 2023',1133.78),
    ('Orv Hurle','Online',581.70,'Fitness','Alex','Oricle','Incredible Nose Hair Growth',6,'16 August 2025',4162.02),
    ('Karil Jerwood','Stockholm',345.32,'Promotional','Christian','H&M','handstands',4,'18 March 2024',5611.36),
    ('Devan Henrie','Crewe',970.13,'Parts','Rose','Balenciaga','freckles on nose',7,'10 November 2022',2958.87),
    ('Dorie Sperwell','Stockholm',604.15,'Commercial','Christian','Salomon','movie quotes',5,'30 July 2022',7292.63),
    ('Hale Fairburn','Milan',84.40,'Fashion','Verity','Amazon','finding loose change',7,'10 May 2024',6096.36),
    ('Lenard Lumm','Online',114.18,'Fashion','Alex','HSBC','Invisible Sneeze',2,'07 July 2023',7661.66),
    ('Celka Paladino','London',288.15,'Parts','Kev','HSBC','Extreme Paper Cut',7,'06 October 2024',5309.95),
    ('Lona Firks','Crewe',898.42,'Glamour','Rose','Patagonia','freckles on nose',2,'17 September 2024',3841.03),
    ('Bank Hurl','Stockholm',15.53,'Glamour','Christian','Versace','human GPS',7,'12 May 2022',1053.43),
    ('Sheela Illsley','Los Angeles',759.93,'Fitness','Paul','Vinted','Super Ticklish Fingers',0,'26 November 2023',1456.66),
    ('Sammy Mohun','Crewe',565.68,'Promotional','Rose','H&M','Instantaneous Spoon Bending',9,'29 January 2022',8979.97),
    ('Anatole Fearnyhough','London',123.27,'Swimsuit','Kev','Balenciaga','Invisible Air Guitar Playing',3,'18 April 2023',1427.38),
    ('Carey Stennes','Los Angeles',960.39,'Fashion','Paul','Instagram','Telepathic Yawn',8,'17 August 2024',4065.64),
    ('Ber Cawkwell','Stockholm',760.11,'Promotional','Christian','Charities','freckles on nose',8,'22 January 2024',6097.88),
    ('Bettina Brahmer','Milan',247.11,'Fashion','Verity','Adidas','Telepathic Yawn',4,'01 April 2022',9210.76),
    ('Clemens Gaythorpe','London',393.83,'Commercial','Kev','H&M','wiggle ears',1,'05 February 2022',3307.84),
    ('Dalli Wicklen','London',455.57,'Parts','Kev','Givenchy','perfect pitch',5,'22 August 2022',3224.95),
    ('Tildi Grigoryov','Crewe',285.38,'Swimsuit','Rose','HSBC','Mildly Annoying Whistle',5,'15 September 2022',5845.68),
    ('Phylis Wildor','Stockholm',988.45,'Promotional','Christian','H&M','Telepathic Puns',8,'28 February 2022',6430.45),
    ('Donna Spofford','Athens',138.01,'Fashion','Katherine','Versace','Invisible Sneeze',9,'14 December 2025',1411.17),
    ('Nanny Camerana','Los Angeles',717.28,'Commercial','Paul','Chanel','Superhuman Lip Syncing',1,'05 May 2022',4115.49),
    ('Melina Heilds','Online',280.63,'Promotional','Alex','Harrods','Superhuman Lip Syncing',3,'06 March 2022',8613.84),
    ('Monti Titlow','Crewe',643.41,'Swimsuit','Rose','Marks and Spencer','Extreme Paper Cut',8,'21 July 2025',6299.99),
    ('Giacopo Cubley','Milan',585.04,'Fashion','Verity','Wayfair','Turn Anything into a Dad Joke',2,'24 January 2023',4455.07),
    ('West Tattersill','Stockholm',540.01,'Parts','Christian','Versace','forgetting birthdays',4,'29 April 2022',9696.84),
    ('Shepard Rawcliffe','Athens',819.18,'Swimsuit','Katherine','HSBC','Turn Anything into a Dad Joke',5,'20 June 2023',6523.19),
    ('Waldo Dary','Stockholm',622.64,'Promotional','Christian','Versace','Incredible Nose Hair Growth',6,'10 August 2024',2418.04),
    ('Daveta Mather','Crewe',755.48,'Fashion','Rose','Ikea','Incredible Juggling Skills',10,'10 March 2022',3097.55),
    ('Robinson Sapsforde','Stockholm',539.74,'Glamour','Christian','Reebok','Telepathic Puns',5,'17 December 2024',5615.60),
    ('Bjorn Tootin','Crewe',212.03,'Glamour','Rose','Harrods','perfect pitch',10,'04 July 2024',4732.05),
    ('Cristal Jorck','Milan',796.53,'Fashion','Verity','Harrods','perfect pitch',9,'15 June 2023',2201.35),
    ('Brandice Lamberton','Athens',712.52,'Swimsuit','Katherine','Chanel','Unbreakable Shoelaces',0,'31 August 2025',1905.51),
    ('Auguste Fisbey','Los Angeles',57.17,'Fitness','Paul','Ebay','Infinite Dad Jokes',3,'07 October 2024',4119.01),
    ('Amber Nisuis','Crewe',40.47,'Fashion','Rose','Prada','Incredible Nose Hair Growth',8,'20 December 2024',3022.28),
    ('Zared Hartropp','Athens',294.07,'Promotional','Katherine','Marks and Spencer','Incredible Nose Hair Growth',3,'03 May 2022',9878.76),
    ('Morlee Thomtson','Stockholm',927.93,'Commercial','Christian','Wayfair','Uncontrollable Tickling',9,'11 May 2023',1704.39),
    ('Kenny Petrelluzzi','Online',853.31,'Fitness','Alex','Louis Vuitton','wiggle ears',3,'07 August 2023',7216.39),
    ('Veronica Guidoni','Crewe',276.57,'Fashion','Rose','Reebok','touch nose with tongue',7,'03 December 2024',3793.78),
    ('Cloris Durrell','Crewe',814.26,'Glamour','Rose','Harrods','Ability to Speak in Animal Languages',6,'15 June 2025',8471.67),
    ('Ingeberg Wooderson','Stockholm',669.02,'Glamour','Christian','Valentino','fall asleep anywhere',0,'21 January 2024',5151.73),
    ('Vince Dendon','Crewe',353.10,'Fashion','Rose','Prada','Infinite Hiccups',7,'26 October 2023',1436.69),
    ('La verne Scroxton','Athens',917.21,'Promotional','Katherine','Oricle','Uncontrollable Tickling',3,'07 March 2022',1800.06),
    ('Even Fayerbrother','Online',382.68,'Parts','Alex','Poundland','Super Sticky Fingers',2,'22 February 2023',3228.12),
    ('Lottie Oulner','Milan',725.00,'Fashion','Verity','Versace','Infinite Clumsiness',4,'24 September 2024',3258.72),
    ('Ker Kidman','Los Angeles',168.78,'Fitness','Paul','Fendi','Unlimited Dance Moves',3,'22 February 2023',9135.05),
    ('Codie Warters','Athens',23.24,'Glamour','Katherine','Givenchy','Turn Anything into a Dad Joke',6,'23 December 2022',1086.75),
    ('Tito Naisbit','London',235.89,'Commercial','Kev','Salomon','Extreme Rubber Face Flexibility',5,'25 January 2022',5136.90),
    ('Tomkin Soan','Los Angeles',324.56,'Fashion','Paul','Aldi','Invisible Sneeze',7,'20 April 2022',9400.50),
    ('Lotty Kristoffersen','Crewe',797.85,'Swimsuit','Rose','Vinted','Infinite Dad Jokes',10,'03 November 2023',5868.60),
    ('Esma Penning','Milan',696.91,'Promotional','Verity','Buff','Incredible Nose Hair Growth',6,'16 December 2022',6305.37),
    ('Tony Rime','Los Angeles',544.18,'Fitness','Paul','Stella McCartney','Incredible Juggling Skills',7,'10 April 2023',3280.61),
    ('Evangelia Cristea','Los Angeles',289.02,'Fitness','Paul','Wayfair','Invisible Air Guitar Playing',8,'03 March 2022',2123.16),
    ('Tyrone Beckmann','Athens',900.35,'Swimsuit','Katherine','Louboutin','Extreme Paper Cut',8,'23 December 2023',1265.33),
    ('Sharai Vines','Milan',114.29,'Fashion','Verity','Adidas','Mind Reading Comedy',4,'23 December 2025',7281.33),
    ('Eveline De Paoli','Stockholm',13.81,'Fashion','Christian','Buff','handstands',9,'29 November 2022',7476.02),
    ('Janel Speechley','Athens',39.38,'Swimsuit','Katherine','Salomon','Infinite Dad Jokes',2,'30 August 2025',7675.17),
    ('Nancey Moores','London',87.32,'Parts','Kev','Oricle','wiggle ears',10,'12 April 2024',8417.73),
    ('Hilton Budding','Athens',653.81,'Promotional','Katherine','Louboutin','Ability to Speak in Animal Languages',9,'27 August 2023',9677.18),
    ('Rodrique Shackell','Online',733.96,'Parts','Alex','Amazon','Instantaneous Spoon Bending',3,'20 September 2024',4259.19),
    ('Dredi Wharby','London',719.06,'Parts','Kev','Fendi','Mildly Annoying Whistle',9,'10 July 2023',9449.54),
    ('Joelie Bolmann','Online',881.07,'Promotional','Alex','Aldi','Extreme Rubber Face Flexibility',3,'30 January 2022',8584.72),
    ('Mil Stivers','London',925.90,'Fashion','Kev','Nike','lucky charm',6,'27 February 2023',4573.82),
    ('Melissa Albers','Los Angeles',799.12,'Fitness','Paul','Reebok','Uncontrollable Tickling',0,'08 October 2022',6013.96),
    ('Anatol Culligan','Milan',606.07,'Fashion','Verity','Stella McCartney','Superhuman Lip Syncing',4,'27 October 2025',7542.99),
    ('Merlina Beamson','Los Angeles',434.15,'Fitness','Paul','Buff','Extreme Paper Cut',5,'23 May 2023',3035.88),
    ('Ernestus Dyer','Los Angeles',43.58,'Promotional','Paul','Marks and Spencer','Invisible Sneeze',10,'18 June 2024',8226.02),
    ('Raquela Kalkhoven','Crewe',985.08,'Fitness','Rose','Nike','parallel parking',0,'25 August 2023',7535.87),
    ('Bili Wilkins','Milan',335.24,'Fashion','Verity','Reebok','finding loose change',2,'03 May 2025',8759.93),
    ('Wye Ferebee','Los Angeles',41.80,'Fashion','Paul','Adidas','movie quotes',6,'28 May 2023',9076.46),
    ('Jackie Preon','Crewe',254.08,'Swimsuit','Rose','Marks and Spencer','lucky charm',6,'10 September 2024',1848.03),
    ('Patrice Ferrier','Online',495.40,'Fitness','Alex','Stella McCartney','Super Ticklish Fingers',4,'07 October 2023',5251.42),
    ('Fanchon Strass','London',247.64,'Parts','Kev','Vinted','Incredible Nose Hair Growth',2,'14 March 2023',6474.50),
    ('Adriano Carrick','Stockholm',935.35,'Promotional','Christian','Prada','touch nose with tongue',6,'30 March 2023',3144.76),
    ('Corette Forgan','Athens',288.40,'Promotional','Katherine','Fendi','Invisible Air Guitar Playing',3,'08 November 2025',4296.85),
    ('Lyndsay Schirak','Stockholm',600.23,'Glamour','Christian','Nike','wiggle ears',6,'10 December 2025',8796.78),
    ('Johnny Tambling','Athens',317.52,'Fashion','Katherine','Oricle','lucky charm',10,'19 February 2025',1623.87),
    ('Constantin Hagard','Stockholm',374.58,'Glamour','Christian','Chanel','Telepathic Yawn',7,'05 February 2024',4923.63),
    ('Shannon Dougharty','Online',65.94,'Promotional','Alex','Ebay','handstands',2,'20 June 2023',1487.82),
    ('Orly Gasking','London',597.45,'Commercial','Kev','Ebay','fall asleep anywhere',1,'18 March 2024',5413.60),
    ('Stanleigh Garwood','Athens',30.79,'Swimsuit','Katherine','Salomon','Super Slow Motion',6,'05 May 2023',3115.10),
    ('Flossy Thurling','Los Angeles',803.80,'Fitness','Paul','Ebay','Infinite Dad Jokes',7,'31 October 2024',8659.08),
    ('Patrice Philippson','Crewe',590.69,'Promotional','Rose','Wayfair','touch nose with tongue',9,'09 September 2024',7178.51),
    ('Kiley Hafner','Stockholm',914.95,'Fashion','Christian','Fendi','freckles on nose',7,'30 August 2025',5511.40),
    ('Fabe Naden','Los Angeles',349.34,'Parts','Paul','Ikea','Instantaneous Costume Changes',0,'08 March 2022',4842.59),
    ('Jarrod Lorriman','Stockholm',826.13,'Parts','Christian','Valentino','Super Speed Typing',1,'26 October 2024',8119.76),
    ('Reena Dunkersley','Online',368.22,'Fitness','Alex','Dior','lucky charm',3,'05 March 2022',8589.33),
    ('Julianna Togwell','Stockholm',704.17,'Fashion','Christian','Marks and Spencer','Super Slow Motion',2,'01 February 2024',8887.56),
    ('Joanna Cogdon','Los Angeles',568.89,'Fitness','Paul','Patagonia','Uncontrollable Tickling',9,'10 November 2025',1006.37),
    ('Jemmie Cannop','Milan',13.34,'Fashion','Verity','Stella McCartney','knowing when it''s going to rain',2,'24 November 2025',8575.22),
    ('Deane Blinkhorn','Athens',647.59,'Fashion','Katherine','Wayfair','Telepathic Yawn',6,'05 September 2025',3657.26),
    ('Lowrance Brattell','Milan',588.22,'Promotional','Verity','Poundland','Instantaneous Costume Changes',10,'24 February 2025',1849.79);

CREATE TABLE updated_models (
	model_id		INT IDENTITY(1,1) PRIMARY KEY,
	model_name		VARCHAR(40) NOT NULL,
	model_trait		VARCHAR(40) NOT NULL,
	model_revenue	INT NOT NULL,
	model_rating	INT NOT NULL CHECK (model_rating > 0 AND model_rating <= 10),
	model_price		INT NOT NULL);

CREATE TABLE scheduled_events (
	event_id		INT IDENTITY(1,1) PRIMARY KEY,
	event_date		DATE NOT NULL);

CREATE TABLE models_events (
	model_id INT NOT NULL,
	event_id INT NOT NULL
	CONSTRAINT PK_ModelsEvents PRIMARY KEY
	(
		model_id,
		event_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (event_id) REFERENCES scheduled_events (event_id) ON DELETE CASCADE,		
);

CREATE TABLE categories (
	category_id		INT IDENTITY(1,1) PRIMARY KEY,
	category_name	VARCHAR(40) NOT NULL);

CREATE TABLE models_categories (
	model_id		INT NOT NULL,
	category_id		INT NOT NULL
	CONSTRAINT PK_ModelsCategories PRIMARY KEY
	(
		model_id,
		category_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE,		
);

CREATE TABLE agents (
	agent_id	INT IDENTITY(1,1) PRIMARY KEY,
	agent_name	VARCHAR(40) NOT NULL);

CREATE TABLE models_agents (
	model_id		INT NOT NULL,
	agent_id		INT NOT NULL
	CONSTRAINT PK_ModelsAgents PRIMARY KEY
	(
		model_id,
		agent_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (agent_id) REFERENCES agents (agent_id) ON DELETE CASCADE,		
);

CREATE TABLE brands (
	brand_id	INT IDENTITY(1,1) PRIMARY KEY,
	brand_name	VARCHAR(40) NOT NULL);

CREATE TABLE models_brands (
	model_id		INT NOT NULL,
	brand_id		INT NOT NULL
	CONSTRAINT PK_ModelsBrands PRIMARY KEY
	(
		model_id,
		brand_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (brand_id) REFERENCES brands (brand_id) ON DELETE CASCADE,		
);

CREATE TABLE locations (
	location_id	INT IDENTITY(1,1) PRIMARY KEY,
	location_name	VARCHAR(40) NOT NULL);

CREATE TABLE models_locations (
	model_id		INT NOT NULL,
	location_id		INT NOT NULL
	CONSTRAINT PK_ModelsLocations PRIMARY KEY
	(
		model_id,
		location_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (location_id) REFERENCES locations (location_id) ON DELETE CASCADE,		
);

