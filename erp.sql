use demo_erp;

-- CREATING ALL THE TABLES
DELIMITER $$

CREATE PROCEDURE CreateTables()
BEGIN
    -- Users Table
    CREATE TABLE IF NOT EXISTS Users (
        UserID INT AUTO_INCREMENT PRIMARY KEY,
        MailID VARCHAR(100) NOT NULL,
        Name VARCHAR(100) NOT NULL,
        Password VARCHAR(100) NOT NULL,
        Role VARCHAR(50) NOT NULL
    );

    -- Products Table
    CREATE TABLE IF NOT EXISTS Products (
        ProductID INT AUTO_INCREMENT PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Category VARCHAR(100) NOT NULL,
        Cost DECIMAL(10, 2) NOT NULL,
        SellingPrice DECIMAL(10, 2) NOT NULL,
        Stock INT NOT NULL,
        SalesData JSON DEFAULT NULL,
        ReorderLevel INT NOT NULL,
        SupplierInfo JSON DEFAULT NULL,
        ExpiryDate DATE DEFAULT NULL
    );

    -- Customers Table
    CREATE TABLE IF NOT EXISTS Customers (
        CustomerID INT AUTO_INCREMENT PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Email VARCHAR(100) NOT NULL,
        Phone VARCHAR(15) ,
        Address TEXT ,
        PurchaseHistory JSON DEFAULT NULL,
        LoyaltyPoints INT DEFAULT 0
    );

    -- Sales Table
    CREATE TABLE IF NOT EXISTS Sales (
        SaleID INT AUTO_INCREMENT PRIMARY KEY,
        ProductID INT NOT NULL,
        CustomerID INT NOT NULL,
        Date DATETIME NOT NULL,
        Quantity INT NOT NULL,
        TotalAmount DECIMAL(10, 2) NOT NULL,
        PaymentMethod VARCHAR(50) NOT NULL,
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    );

    -- Feedback Table
    CREATE TABLE IF NOT EXISTS Feedback (
        FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
        ProductID INT NOT NULL,
        CustomerID INT NOT NULL,
        Comments TEXT DEFAULT NULL,
        Ratings INT CHECK (Ratings BETWEEN 1 AND 5),
        Timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    );

    -- Logs Table
    CREATE TABLE IF NOT EXISTS Logs (
        LogID INT AUTO_INCREMENT PRIMARY KEY,
        AlgorithmName VARCHAR(100) NOT NULL,
        Timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        Results JSON DEFAULT NULL
    );
END$$

DELIMITER ;
-- Insertion of the dummy data


CALL Registration('scrilley0@paypal.com', 'Shandra Crilley', 'password123', 'Regular');
CALL Registration('bplampeyn1@facebook.com', 'Belinda Plampeyn', 'password123', 'Regular');
CALL Registration('fbarkas2@comsenz.com', 'Freddi Barkas', 'password123', 'Regular');
CALL Registration('kseggie3@jugem.jp', 'Kim Seggie', 'password123', 'Regular');
CALL Registration('lmanz4@fotki.com', 'Larine Manz', 'password123', 'Regular');
CALL Registration('kferrai5@archive.org', 'Kellie Ferrai', 'password123', 'Regular');
CALL Registration('bpendergrast6@goo.ne.jp', 'Bibi Pendergrast', 'password123', 'Regular');
CALL Registration('fpickrell7@domainmarket.com', 'Fayina Pickrell', 'password123', 'Regular');
CALL Registration('tsussams8@tinypic.com', 'Teodoor Sussams', 'password123', 'Regular');
CALL Registration('gkeave9@stanford.edu', 'Genevieve Keave', 'password123', 'Regular');
CALL Registration('hevasona@pcworld.com', 'Harrie Evason', 'password123', 'Regular');
CALL Registration('gweatherillb@soundcloud.com', 'Gillie Weatherill', 'password123', 'Regular');
CALL Registration('mstaddartc@kickstarter.com', 'Mame Staddart', 'password123', 'Regular');
CALL Registration('cbamboroughd@feedburner.com', 'Charlotta Bamborough', 'password123', 'Regular');
CALL Registration('agueinne@discuz.net', 'Aila Gueinn', 'password123', 'Regular');
CALL Registration('esparkesf@paginegialle.it', 'Emili Sparkes', 'password123', 'Regular');
CALL Registration('jclemendetg@hhs.gov', 'Juliane Clemendet', 'password123', 'Regular');
CALL Registration('kdannielh@nymag.com', 'Kiele Danniel', 'password123', 'Regular');
CALL Registration('gkeetleyi@acquirethisname.com', 'Gleda Keetley', 'password123', 'Regular');
CALL Registration('fpetruschj@shop-pro.jp', 'Fina Petrusch', 'password123', 'Regular');
CALL Registration('bformoyk@comsenz.com', 'Bruno Formoy', 'password123', 'Regular');
CALL Registration('ngiacopellol@dailymotion.com', 'Norris Giacopello', 'password123', 'Regular');
CALL Registration('marrom@foxnews.com', 'Maighdiln Arro', 'password123', 'Regular');
CALL Registration('rjusthamn@technorati.com', 'Regan Justham', 'password123', 'Regular');
CALL Registration('craito@newyorker.com', 'Cornie Rait', 'password123', 'Regular');
CALL Registration('bmuinop@google.it', 'Buiron Muino', 'password123', 'Regular');
CALL Registration('asummerillq@census.gov', 'Angelia Summerill', 'password123', 'Regular');
CALL Registration('fsterrer@toplist.cz', 'Fawne Sterre', 'password123', 'Regular');
CALL Registration('lquiggs@cdbaby.com', 'Latrena Quigg', 'password123', 'Regular');
CALL Registration('grufflit@icio.us', 'Grier Ruffli', 'password123', 'Regular');
CALL Registration('abertomieru@state.gov', 'Albrecht Bertomier', 'password123', 'Regular');
CALL Registration('bsellmanv@topsy.com', 'Blinnie Sellman', 'password123', 'Regular');
CALL Registration('esturzakerw@hp.com', 'Eleonora Sturzaker', 'password123', 'Regular');
CALL Registration('lalanx@wikispaces.com', 'Leela Alan', 'password123', 'Regular');
CALL Registration('ethawy@ftc.gov', 'Elyssa Thaw', 'password123', 'Regular');
CALL Registration('jbuckthorpez@themeforest.net', 'Jeannine Buckthorpe', 'password123', 'Regular');
CALL Registration('pjaggard10@issuu.com', 'Paola Jaggard', 'password123', 'Regular');
CALL Registration('mtrengrouse11@e-recht24.de', 'Michale Trengrouse', 'password123', 'Regular');
CALL Registration('dferenczi12@360.cn', 'Dunc Ferenczi', 'password123', 'Regular');
CALL Registration('hbeecraft13@un.org', 'Harmonia Beecraft', 'password123', 'Regular');
CALL Registration('tgraham14@cbc.ca', 'Taffy Graham', 'password123', 'Regular');
CALL Registration('ccossins15@phoca.cz', 'Caryl Cossins', 'password123', 'Regular');
CALL Registration('dmundie16@weather.com', 'Deny Mundie', 'password123', 'Regular');
CALL Registration('dandrzejak17@google.ru', 'Daryle Andrzejak', 'password123', 'Regular');
CALL Registration('ebracknall18@g.co', 'Emory Bracknall', 'password123', 'Regular');
CALL Registration('mmaccall19@g.co', 'Marabel MacCall', 'password123', 'Regular');
CALL Registration('lfendlow1a@hatena.ne.jp', 'Lillis Fendlow', 'password123', 'Regular');
CALL Registration('abarwell1b@reference.com', 'Anny Barwell', 'password123', 'Regular');
CALL Registration('lmarchent1c@123-reg.co.uk', 'Ludovico Marchent', 'password123', 'Regular');
CALL Registration('djonson1d@ifeng.com', 'Dave Jonson', 'password123', 'Regular');
CALL Registration('kschollar1e@a8.net', 'Kynthia Schollar', 'password123', 'Regular');
CALL Registration('btrivett1f@reverbnation.com', 'Babb Trivett', 'password123', 'Regular');
CALL Registration('ascrinage1g@bigcartel.com', 'Ayn Scrinage', 'password123', 'Regular');
CALL Registration('kriby1h@buzzfeed.com', 'Kerianne Riby', 'password123', 'Regular');
CALL Registration('msuddock1i@flickr.com', 'Mathe Suddock', 'password123', 'Regular');
CALL Registration('dgrishin1j@wp.com', 'Deanne Grishin', 'password123', 'Regular');
CALL Registration('abridel1k@columbia.edu', 'Alberik Bridel', 'password123', 'Regular');
CALL Registration('mbolderson1l@sbwire.com', 'Muffin Bolderson', 'password123', 'Regular');
CALL Registration('wwilkie1m@amazonaws.com', 'Warden Wilkie', 'password123', 'Regular');
CALL Registration('mbothams1n@webnode.com', 'Morey Bothams', 'password123', 'Regular');
CALL Registration('eziehms1o@elegantthemes.com', 'Esra Ziehms', 'password123', 'Regular');
CALL Registration('bgaltone1p@infoseek.co.jp', 'Byrom Galtone', 'password123', 'Regular');
CALL Registration('ginglesent1q@homestead.com', 'Goldy Inglesent', 'password123', 'Regular');
CALL Registration('udaddow1r@netvibes.com', 'Ulrikaumeko Daddow', 'password123', 'Regular');
CALL Registration('ddimbleby1s@eventbrite.com', 'Dirk Dimbleby', 'password123', 'Regular');
CALL Registration('srobley1t@oracle.com', 'Shayne Robley', 'password123', 'Regular');
CALL Registration('jcamplin1u@samsung.com', 'Jessi Camplin', 'password123', 'Regular');
CALL Registration('wtrymme1v@elpais.com', 'Willem Trymme', 'password123', 'Regular');
CALL Registration('gcrich1w@xing.com', 'Galvan Crich', 'password123', 'Regular');
CALL Registration('kgrisdale1x@ebay.com', 'Kenon Grisdale', 'password123', 'Regular');
CALL Registration('bbaert1y@economist.com', 'Barnebas Baert', 'password123', 'Regular');
CALL Registration('mfrancescone1z@digg.com', 'Mersey Francescone', 'password123', 'Regular');
CALL Registration('aroscam20@creativecommons.org', 'Austin Roscam', 'password123', 'Regular');
CALL Registration('nsiddele21@imageshack.us', 'Norris Siddele', 'password123', 'Regular');
CALL Registration('ltreuge22@meetup.com', 'Lin Treuge', 'password123', 'Regular');
CALL Registration('dduer23@economist.com', 'Dania Duer', 'password123', 'Regular');
CALL Registration('rmaddicks24@lycos.com', 'Remy Maddicks', 'password123', 'Regular');
CALL Registration('fmountstephen25@yolasite.com', 'Francesco Mountstephen', 'password123', 'Regular');
CALL Registration('clodeke26@google.co.uk', 'Carlota Lodeke', 'password123', 'Regular');
CALL Registration('crennicks27@mediafire.com', 'Cammy Rennicks', 'password123', 'Regular');
CALL Registration('bnesfield28@deviantart.com', 'Brit Nesfield', 'password123', 'Regular');
CALL Registration('aaguilar29@example.com', 'Alleen Aguilar', 'password123', 'Regular');
CALL Registration('fbirkbeck2a@tumblr.com', 'Ferdinand Birkbeck', 'password123', 'Regular');
CALL Registration('dharcus2b@alexa.com', 'Desiri Harcus', 'password123', 'Regular');
CALL Registration('erendbaek2c@businessweek.com', 'Ellsworth Rendbaek', 'password123', 'Regular');
CALL Registration('paubrey2d@home.pl', 'Philippe Aubrey', 'password123', 'Regular');
CALL Registration('hstreak2e@sogou.com', 'Harland Streak', 'password123', 'Regular');
CALL Registration('ccoverlyn2f@bloglovin.com', 'Christal Coverlyn', 'password123', 'Regular');
CALL Registration('dcarlens2g@tinyurl.com', 'Dyanna Carlens', 'password123', 'Regular');
CALL Registration('eknott2h@va.gov', 'Edvard Knott', 'password123', 'Regular');
CALL Registration('cinnocenti2i@time.com', 'Charla Innocenti', 'password123', 'Regular');
CALL Registration('nwones2j@gizmodo.com', 'Nicolais Wones', 'password123', 'Regular');
CALL Registration('dde2k@desdev.cn', 'Daune De Vaan', 'password123', 'Regular');
CALL Registration('mphoenix2l@businesswire.com', 'Millard Phoenix', 'password123', 'Regular');
CALL Registration('agolborn2m@g.co', 'Annamarie Golborn', 'password123', 'Regular');
CALL Registration('mbourgourd2n@123-reg.co.uk', 'Miguelita Bourgourd', 'password123', 'Regular');
CALL Registration('iwalworth2o@usnews.com', 'Innis Walworth', 'password123', 'Regular');
CALL Registration('gengledow2p@amazon.com', 'Gustavus Engledow', 'password123', 'Regular');
CALL Registration('dkeoghan2q@mapquest.com', 'Drucy Keoghan', 'password123', 'Regular');
CALL Registration('vtrimming2r@earthlink.net', 'Vito Trimming', 'password123', 'Regular');
CALL Registration('bredholls2s@samsung.com', 'Bengt Redholls', 'password123', 'Regular');
CALL Registration('mmundie2t@rakuten.co.jp', 'Mason Mundie', 'password123', 'Regular');
CALL Registration('amcguggy2u@51.la', 'Aylmer McGuggy', 'password123', 'Regular');
CALL Registration('wsazio2v@ycombinator.com', 'Wyn Sazio', 'password123', 'Regular');
CALL Registration('srhymer2w@virginia.edu', 'Siegfried Rhymer', 'password123', 'Regular');
CALL Registration('kjoret2x@tinypic.com', 'Kenneth Joret', 'password123', 'Regular');
CALL Registration('clinklater2y@ed.gov', 'Clerkclaude Linklater', 'password123', 'Regular');
CALL Registration('wlesor2z@omniture.com', 'Wally Lesor', 'password123', 'Regular');
CALL Registration('lhercules30@usgs.gov', 'Lewiss Hercules', 'password123', 'Regular');
CALL Registration('nhaggerty31@qq.com', 'Nichols Haggerty', 'password123', 'Regular');
CALL Registration('cnestor32@chronoengine.com', 'Cecilius Nestor', 'password123', 'Regular');
CALL Registration('jgrist33@blog.com', 'Jessi Grist', 'password123', 'Regular');
CALL Registration('ataffs34@time.com', 'Arda Taffs', 'password123', 'Regular');
CALL Registration('elestrange35@gmpg.org', 'Erskine Lestrange', 'password123', 'Regular');
CALL Registration('mmclucky36@digg.com', 'Myrwyn McLucky', 'password123', 'Regular');
CALL Registration('lbedell37@tinypic.com', 'Loraine Bedell', 'password123', 'Regular');
CALL Registration('bgorst38@ihg.com', 'Britta Gorst', 'password123', 'Regular');
CALL Registration('bbeccera39@networksolutions.com', 'Brandice Beccera', 'password123', 'Regular');
CALL Registration('ddimont3a@usa.gov', 'Dwight Dimont', 'password123', 'Regular');
CALL Registration('abeauchamp3b@cdbaby.com', 'Alexis Beauchamp', 'password123', 'Regular');
CALL Registration('lfalshaw3c@mit.edu', 'Latashia Falshaw', 'password123', 'Regular');
CALL Registration('hdiamond3d@bloglovin.com', 'Hinze Diamond', 'password123', 'Regular');
CALL Registration('edavid3e@wordpress.com', 'Ezri David', 'password123', 'Regular');
CALL Registration('struggian3f@liveinternet.ru', 'Sybilla Truggian', 'password123', 'Regular');
CALL Registration('nmilella3g@wordpress.com', 'Nanni Milella', 'password123', 'Regular');
CALL Registration('fricart3h@boston.com', 'Forrester Ricart', 'password123', 'Regular');
CALL Registration('shryskiewicz3i@mtv.com', 'Shelba Hryskiewicz', 'password123', 'Regular');
CALL Registration('mewing3j@wikia.com', 'Mariann Ewing', 'password123', 'Regular');
CALL Registration('nsansum3k@latimes.com', 'Nady Sansum', 'password123', 'Regular');
CALL Registration('fnewbigging3l@time.com', 'Frankie Newbigging', 'password123', 'Regular');
CALL Registration('tbillett3m@freewebs.com', 'Teirtza Billett', 'password123', 'Regular');
CALL Registration('wpashan3n@walmart.com', 'Welch Pashan', 'password123', 'Regular');
CALL Registration('lgumey3o@nba.com', 'Leontyne Gumey', 'password123', 'Regular');
CALL Registration('awiseman3p@globo.com', 'Alvy Wiseman', 'password123', 'Regular');
CALL Registration('ggourdon3q@is.gd', 'Garrard Gourdon', 'password123', 'Regular');
CALL Registration('kgunson3r@netvibes.com', 'Kalinda Gunson', 'password123', 'Regular');
CALL Registration('fkiggel3s@answers.com', 'Finlay Kiggel', 'password123', 'Regular');
CALL Registration('tpinare3t@sogou.com', 'Tris Pinare', 'password123', 'Regular');
CALL Registration('mgray3u@163.com', 'Marti Gray', 'password123', 'Regular');
CALL Registration('mstephenson3v@fda.gov', 'Mehetabel Stephenson', 'password123', 'Regular');
CALL Registration('sbernaldo3w@posterous.com', 'Sholom Bernaldo', 'password123', 'Regular');
CALL Registration('pcorthes3x@gov.uk', 'Patty Corthes', 'password123', 'Regular');
CALL Registration('pburbage3y@sun.com', 'Prinz Burbage', 'password123', 'Regular');
CALL Registration('rpococke3z@surveymonkey.com', 'Rosene Pococke', 'password123', 'Regular');
CALL Registration('kcorey40@sakura.ne.jp', 'Kenton Corey', 'password123', 'Regular');
CALL Registration('gscandred41@wix.com', 'Gennifer Scandred', 'password123', 'Regular');
CALL Registration('scavell42@hubpages.com', 'Steffi Cavell', 'password123', 'Regular');
CALL Registration('dpollington43@ucla.edu', 'Darcy Pollington', 'password123', 'Regular');
CALL Registration('lskelbeck44@hp.com', 'Leigh Skelbeck', 'password123', 'Regular');
CALL Registration('mcrofts45@globo.com', 'Moyra Crofts', 'password123', 'Regular');
CALL Registration('dhuson46@tumblr.com', 'Dael Huson', 'password123', 'Regular');
CALL Registration('bwalklate47@oaic.gov.au', 'Benetta Walklate', 'password123', 'Regular');
CALL Registration('aabade48@jalbum.net', 'Arni Abade', 'password123', 'Regular');
CALL Registration('to49@mysql.com', 'Tito O Mullen', 'password123', 'Regular');
CALL Registration('cshemming4a@com.com', 'Cassey Shemming', 'password123', 'Regular');
CALL Registration('nlucks4b@craigslist.org', 'Niccolo Lucks', 'password123', 'Regular');
CALL Registration('awiffler4c@virginia.edu', 'Amble Wiffler', 'password123', 'Regular');
CALL Registration('hfrangione4d@globo.com', 'Hoyt Frangione', 'password123', 'Regular');
CALL Registration('btrulocke4e@themeforest.net', 'Boigie Trulocke', 'password123', 'Regular');
CALL Registration('tshadrack4f@tripadvisor.com', 'Timmy Shadrack', 'password123', 'Regular');
CALL Registration('rpheasey4g@dell.com', 'Reggy Pheasey', 'password123', 'Regular');
CALL Registration('ksaylor4h@yahoo.com', 'Kate Saylor', 'password123', 'Regular');
CALL Registration('mnutter4i@technorati.com', 'Morey Nutter', 'password123', 'Regular');
CALL Registration('fshorthill4j@geocities.jp', 'Forrester Shorthill', 'password123', 'Regular');
CALL Registration('frihosek4k@epa.gov', 'Felipe Rihosek', 'password123', 'Regular');
CALL Registration('mbachelor4l@opera.com', 'Marlowe Bachelor', 'password123', 'Regular');
CALL Registration('gbaudone4m@jugem.jp', 'Gilly Baudone', 'password123', 'Regular');
CALL Registration('mmarkussen4n@thetimes.co.uk', 'Manon Markussen', 'password123', 'Regular');
CALL Registration('skesteven4o@yahoo.co.jp', 'Scott Kesteven', 'password123', 'Regular');
CALL Registration('ghovington4p@baidu.com', 'Gregorius Hovington', 'password123', 'Regular');
CALL Registration('fmcquin4q@issuu.com', 'Fletcher McQuin', 'password123', 'Regular');
CALL Registration('pwalburn4r@rakuten.co.jp', 'Paton Walburn', 'password123', 'Regular');
CALL Registration('jbownde4s@nsw.gov.au', 'Jeniece Bownde', 'password123', 'Regular');
CALL Registration('fproudman4t@utexas.edu', 'Far Proudman', 'password123', 'Regular');
CALL Registration('jgrinyakin4u@edublogs.org', 'Jandy Grinyakin', 'password123', 'Regular');
CALL Registration('snorrie4v@miibeian.gov.cn', 'Selinda Norrie', 'password123', 'Regular');
CALL Registration('lsumption4w@usgs.gov', 'Lilias Sumption', 'password123', 'Regular');
CALL Registration('klambrecht4x@discovery.com', 'Korrie Lambrecht', 'password123', 'Regular');
CALL Registration('mmallam4y@ehow.com', 'Mela Mallam', 'password123', 'Regular');
CALL Registration('aharries4z@wiley.com', 'Andie Harries', 'password123', 'Regular');
CALL Registration('mryle50@europa.eu', 'Mufinella Ryle', 'password123', 'Regular');
CALL Registration('kdraycott51@about.me', 'Kermit Draycott', 'password123', 'Regular');
CALL Registration('smacgauhy52@gmpg.org', 'Sara MacGauhy', 'password123', 'Regular');
CALL Registration('hjonson53@artisteer.com', 'Homer Jonson', 'password123', 'Regular');
CALL Registration('hprentice54@barnesandnoble.com', 'Harman Prentice', 'password123', 'Regular');
CALL Registration('dacomb55@jiathis.com', 'Dorelle Acomb', 'password123', 'Regular');
CALL Registration('rspeedy56@wikimedia.org', 'Rochella Speedy', 'password123', 'Regular');
CALL Registration('aworsnop57@joomla.org', 'Anitra Worsnop', 'password123', 'Regular');
CALL Registration('fbrownscombe58@aboutads.info', 'Frasco Brownscombe', 'password123', 'Regular');
CALL Registration('cmcginley59@t.co', 'Chester McGinley', 'password123', 'Regular');
CALL Registration('ejacobs5a@theatlantic.com', 'Elicia Jacobs', 'password123', 'Regular');
CALL Registration('smanueli5b@cloudflare.com', 'Sheffie Manueli', 'password123', 'Regular');
CALL Registration('fpreskett5c@boston.com', 'Francesco Preskett', 'password123', 'Regular');
CALL Registration('npinwill5d@noaa.gov', 'Nichole Pinwill', 'password123', 'Regular');
CALL Registration('sebanks5e@edublogs.org', 'Syd Ebanks', 'password123', 'Regular');
CALL Registration('dnapolione5f@opensource.org', 'Daveta Napolione', 'password123', 'Regular');
CALL Registration('slonding5g@edublogs.org', 'Shandy Londing', 'password123', 'Regular');
CALL Registration('jsirman5h@theglobeandmail.com', 'Julianne Sirman', 'password123', 'Regular');
CALL Registration('cmead5i@pbs.org', 'Clotilda Mead', 'password123', 'Regular');
CALL Registration('stattersall5j@purevolume.com', 'Sayres Tattersall', 'password123', 'Regular');
CALL Registration('mjoron5k@taobao.com', 'Maryanna Joron', 'password123', 'Regular');
CALL Registration('ngraber5l@ameblo.jp', 'Nevsa Graber', 'password123', 'Regular');
CALL Registration('klehrian5m@pagesperso-orange.fr', 'Korry Lehrian', 'password123', 'Regular');
CALL Registration('landerton5n@github.com', 'Layla Anderton', 'password123', 'Regular');
CALL Registration('cwherry5o@eepurl.com', 'Cosette Wherry', 'password123', 'Regular');
CALL Registration('lprynne5p@hexun.com', 'Lalo Prynne', 'password123', 'Regular');
CALL Registration('mtacey5q@vistaprint.com', 'Marney Tacey', 'password123', 'Regular');
CALL Registration('dbraga5r@usda.gov', 'Dode Braga', 'password123', 'Regular');
CALL Registration('mroskeilly5s@fc2.com', 'Myriam Roskeilly', 'password123', 'Regular');
CALL Registration('bjarvie5t@ebay.co.uk', 'Barn Jarvie', 'password123', 'Regular');
CALL Registration('fsoans5u@unc.edu', 'Fabe Soans', 'password123', 'Regular');
CALL Registration('mungerer5v@cdc.gov', 'Markus Ungerer', 'password123', 'Regular');
CALL Registration('pjoron5w@facebook.com', 'Pernell Joron', 'password123', 'Regular');
CALL Registration('jdurkin5x@imageshack.us', 'Johna Durkin', 'password123', 'Regular');
CALL Registration('sbowsher5y@google.ru', 'Sheba Bowsher', 'password123', 'Regular');
CALL Registration('wcongram5z@indiatimes.com', 'Willdon Congram', 'password123', 'Regular');
CALL Registration('cheyworth60@photobucket.com', 'Cami Heyworth', 'password123', 'Regular');
CALL Registration('ashakesby61@cafepress.com', 'Adriaens Shakesby', 'password123', 'Regular');
CALL Registration('asouthworth62@ed.gov', 'Abbey Southworth', 'password123', 'Regular');
CALL Registration('elamplugh63@hud.gov', 'Emily Lamplugh', 'password123', 'Regular');
CALL Registration('ntimson64@microsoft.com', 'Nealson Timson', 'password123', 'Regular');
CALL Registration('mpavlovsky65@nbcnews.com', 'Milzie Pavlovsky', 'password123', 'Regular');
CALL Registration('jdurant66@ted.com', 'Junette Durant', 'password123', 'Regular');
CALL Registration('lguly67@yale.edu', 'Layla Guly', 'password123', 'Regular');
CALL Registration('jschubbert68@si.edu', 'Jarrad Schubbert', 'password123', 'Regular');
CALL Registration('sburnyeat69@patch.com', 'Shelley Burnyeat', 'password123', 'Regular');
CALL Registration('dgalpen6a@dagondesign.com', 'Douglas Galpen', 'password123', 'Regular');
CALL Registration('rlargent6b@hud.gov', 'Reamonn L''argent', 'password123', 'Regular');
CALL Registration('timesen6c@icq.com', 'Tanner Imesen', 'password123', 'Regular');
CALL Registration('bmaudett6d@flavors.me', 'Becki Maudett', 'password123', 'Regular');
CALL Registration('kfarmiloe6e@diigo.com', 'Keely Farmiloe', 'password123', 'Regular');
CALL Registration('ehaworth6f@cnet.com', 'Esme Haworth', 'password123', 'Regular');
CALL Registration('cvreede6g@miitbeian.gov.cn', 'Cosmo Vreede', 'password123', 'Regular');
CALL Registration('dheilds6h@paginegialle.it', 'Danna Heilds', 'password123', 'Regular');
CALL Registration('hbugby6i@earthlink.net', 'Hy Bugby', 'password123', 'Regular');
CALL Registration('nbachellier6j@marketwatch.com', 'Noak Bachellier', 'password123', 'Regular');
CALL Registration('lhurdwell6k@yelp.com', 'Linette Hurdwell', 'password123', 'Regular');
CALL Registration('adowse6l@wufoo.com', 'Abagail Dowse', 'password123', 'Regular');
CALL Registration('lbrewett6m@cargocollective.com', 'Lorrie Brewett', 'password123', 'Regular');
CALL Registration('bcicculi6n@printfriendly.com', 'Britta Cicculi', 'password123', 'Regular');
CALL Registration('nreglar6o@jugem.jp', 'Noreen Reglar', 'password123', 'Regular');
CALL Registration('otomkiss6p@economist.com', 'Olly Tomkiss', 'password123', 'Regular');
CALL Registration('cgioan6q@shareasale.com', 'Corrine Gioan', 'password123', 'Regular');
CALL Registration('tchamberlin6r@jugem.jp', 'Tadeas Chamberlin', 'password123', 'Regular');
CALL Registration('lvan6s@google.pl', 'Lisa Van den Broek', 'password123', 'Regular');
CALL Registration('ntwamley6t@hud.gov', 'Neill Twamley', 'password123', 'Regular');
CALL Registration('bandrasch6u@cisco.com', 'Bibbye Andrasch', 'password123', 'Regular');
CALL Registration('thartnup6v@ed.gov', 'Thoma Hartnup', 'password123', 'Regular');
CALL Registration('jblackledge6w@berkeley.edu', 'Johnnie Blackledge', 'password123', 'Regular');
CALL Registration('ckupisz6x@simplemachines.org', 'Carlene Kupisz', 'password123', 'Regular');
CALL Registration('hburdge6y@nifty.com', 'Harley Burdge', 'password123', 'Regular');
CALL Registration('wgandy6z@about.com', 'Waite Gandy', 'password123', 'Regular');
CALL Registration('apoxson70@nationalgeographic.com', 'Arlan Poxson', 'password123', 'Regular');
CALL Registration('mmarston71@mapquest.com', 'Manuel Marston', 'password123', 'Regular');
CALL Registration('jtassaker72@ft.com', 'Julia Tassaker', 'password123', 'Regular');
CALL Registration('tblackey73@tmall.com', 'Theodore Blackey', 'password123', 'Regular');
CALL Registration('jsmedmoor74@wisc.edu', 'Jodi Smedmoor', 'password123', 'Regular');
CALL Registration('ayersin75@github.com', 'Annemarie Yersin', 'password123', 'Regular');
CALL Registration('jspritt76@ezinearticles.com', 'Jule Spritt', 'password123', 'Regular');
CALL Registration('dbladder77@unc.edu', 'Dexter Bladder', 'password123', 'Regular');
CALL Registration('nyork78@tumblr.com', 'Neddie York', 'password123', 'Regular');
CALL Registration('kwarden79@simplemachines.org', 'Kylie Warden', 'password123', 'Regular');
CALL Registration('kashall7a@netscape.com', 'Krisha Ashall', 'password123', 'Regular');
CALL Registration('cpietzner7b@dailymail.co.uk', 'Camila Pietzner', 'password123', 'Regular');
CALL Registration('gmatteuzzi7c@nbcnews.com', 'Gardiner Matteuzzi', 'password123', 'Regular');
CALL Registration('zflay7d@dedecms.com', 'Zuzana Flay', 'password123', 'Regular');
CALL Registration('kgregorin7e@springer.com', 'Kariotta Gregorin', 'password123', 'Regular');
CALL Registration('vapplebee7f@desdev.cn', 'Verena Applebee', 'password123', 'Regular');
CALL Registration('jzamora7g@creativecommons.org', 'Jamison Zamora', 'password123', 'Regular');
CALL Registration('mcrummy7h@flavors.me', 'Myrtice Crummy', 'password123', 'Regular');
CALL Registration('vpenbarthy7i@webmd.com', 'Vin Penbarthy', 'password123', 'Regular');
CALL Registration('rlorenzetti7j@nydailynews.com', 'Ramsay Lorenzetti', 'password123', 'Regular');
CALL Registration('egegg7k@people.com.cn', 'Ebba Gegg', 'password123', 'Regular');
CALL Registration('disac7l@smugmug.com', 'Deirdre Isac', 'password123', 'Regular');
CALL Registration('cmckinnon7m@cnbc.com', 'Constantine McKinnon', 'password123', 'Regular');
CALL Registration('ccundict7n@microsoft.com', 'Clari Cundict', 'password123', 'Regular');
CALL Registration('csouth7o@diigo.com', 'Chevalier South', 'password123', 'Regular');
CALL Registration('zelsop7p@marketwatch.com', 'Zarla Elsop', 'password123', 'Regular');
CALL Registration('bcottie7q@vinaora.com', 'Baryram Cottie', 'password123', 'Regular');
CALL Registration('ehowsan7r@desdev.cn', 'Esmaria Howsan', 'password123', 'Regular');
CALL Registration('lshinn7s@godaddy.com', 'Lacee Shinn', 'password123', 'Regular');
CALL Registration('jberthouloume7t@bloomberg.com', 'Jamison Berthouloume', 'password123', 'Regular');
CALL Registration('grubinowitch7u@microsoft.com', 'Guillermo Rubinowitch', 'password123', 'Regular');
CALL Registration('wgilmour7v@twitter.com', 'Wendy Gilmour', 'password123', 'Regular');
CALL Registration('dtimms7w@technorati.com', 'Dian Timms', 'password123', 'Regular');
CALL Registration('vmumford7x@deliciousdays.com', 'Valentina Mumford', 'password123', 'Regular');
CALL Registration('dbuggs7y@livejournal.com', 'Delmore Buggs', 'password123', 'Regular');
CALL Registration('heidelman7z@bizjournals.com', 'Heddi Eidelman', 'password123', 'Regular');
CALL Registration('wdukes80@tmall.com', 'Willyt Dukes', 'password123', 'Regular');
CALL Registration('oheyward81@wisc.edu', 'Orelie Heyward', 'password123', 'Regular');
CALL Registration('lwallentin82@scientificamerican.com', 'Lisle Wallentin', 'password123', 'Regular');
CALL Registration('miczokvitz83@miitbeian.gov.cn', 'Maryrose Iczokvitz', 'password123', 'Regular');
CALL Registration('emoralis84@amazon.com', 'Everard Moralis', 'password123', 'Regular');
CALL Registration('lcheavin85@answers.com', 'Lemmy Cheavin', 'password123', 'Regular');
CALL Registration('amandrier86@homestead.com', 'Alida Mandrier', 'password123', 'Regular');
CALL Registration('wmaltman87@cocolog-nifty.com', 'Wat Maltman', 'password123', 'Regular');
CALL Registration('mvince88@accuweather.com', 'Marika Vince', 'password123', 'Regular');
CALL Registration('ndykes89@mit.edu', 'Neddie Dykes', 'password123', 'Regular');





CALL AddProduct('Smartwatch', 'Electronics', 465.51, 608.01, 129, 25, '{"Supplier": "Shannon"}', '2024-10-31');
CALL AddProduct('Laptop', 'Electronics', 64.64, 87.55, 110, 42, '{"Supplier": "Smith LLC"}', '2026-11-07');
CALL AddProduct('Wardrobe', 'Furniture', 430.36, 510.44, 65, 23, '{"Supplier": "Hanson-Stephens"}', '2026-05-07');
CALL AddProduct('Sofa', 'Furniture', 389.93, 563.68, 145, 42, '{"Supplier": "Moody PLC"}', '2026-12-06');
CALL AddProduct('Mystery Novel', 'Books', 428.00, 553.57, 117, 24, '{"Supplier": "Wood-Sawyer"}', '2025-05-10');
CALL AddProduct('Foundation', 'Beauty', 317.18, 433.70, 84, 11, '{"Supplier": "Johnson"}', '2024-12-06');
CALL AddProduct('Toy Car', 'Toys', 211.61, 257.35, 16, 49, '{"Supplier": "Williams-Price"}', '2024-04-24');
CALL AddProduct('Tire', 'Automotive', 34.79, 38.63, 199, 26, '{"Supplier": "Campbell-Bolton"}', '2025-12-18');
CALL AddProduct('Wardrobe', 'Furniture', 206.14, 250.39, 85, 31, '{"Supplier": "Banks Group"}', '2024-04-15');
CALL AddProduct('Moisturizer', 'Beauty', 30.33, 43.60, 179, 25, '{"Supplier": "Parks and Sons"}', '2025-10-10');
CALL AddProduct('Tire', 'Automotive', 370.55, 481.65, 155, 11, '{"Supplier": "Jones Ltd"}', '2026-02-09');
CALL AddProduct('Sweater', 'Clothing', 74.52, 107.75, 147, 36, '{"Supplier": "Wood PLC"}', '2026-04-12');
CALL AddProduct('Cookbook', 'Books', 69.98, 103.28, 64, 32, '{"Supplier": "Washington Group"}', '2024-10-21');
CALL AddProduct('Yoga Mat', 'Sports', 87.63, 107.69, 138, 47, '{"Supplier": "Garcia"}', '2025-10-16');
CALL AddProduct('Shampoo', 'Beauty', 367.77, 536.27, 87, 49, '{"Supplier": "Freeman-Fisher"}', '2024-07-12');
CALL AddProduct('Fertilizer', 'Gardening', 140.06, 169.27, 128, 43, '{"Supplier": "Diaz LLC"}', '2026-08-16');
CALL AddProduct('Cookware Set', 'Kitchen', 240.60, 269.25, 192, 33, '{"Supplier": "Smith-Jones"}', '2024-06-10');
CALL AddProduct('Lawn Mower', 'Gardening', 239.93, 318.41, 26, 28, '{"Supplier": "Nelson"}', '2026-04-23');
CALL AddProduct('Sweater', 'Clothing', 410.81, 489.40, 106, 18, '{"Supplier": "Gray LLC"}', '2025-08-31');
CALL AddProduct('Shovel', 'Gardening', 279.40, 358.30, 9, 19, '{"Supplier": "Stevens"}', '2026-01-19');
CALL AddProduct('T-Shirt', 'Clothing', 151.53, 225.51, 149, 42, '{"Supplier": "Anderson Ltd"}', '2026-09-28');
CALL AddProduct('Thermometer', 'Healthcare', 153.58, 182.13, 162, 44, '{"Supplier": "Reid-Conley"}', '2025-07-30');
CALL AddProduct('Face Mask', 'Healthcare', 329.95, 474.13, 13, 14, '{"Supplier": "Reeves-Jimenez"}', '2025-01-31');
CALL AddProduct('T-Shirt', 'Clothing', 268.28, 322.79, 64, 43, '{"Supplier": "Mcdonald"}', '2025-12-08');
CALL AddProduct('Chocolates', 'Food', 93.21, 126.47, 96, 15, '{"Supplier": "Rodriguez LLC"}', '2024-05-14');
CALL AddProduct('Foundation', 'Beauty', 53.69, 68.00, 31, 24, '{"Supplier": "Nunez"}', '2025-06-16');
CALL AddProduct('Lipstick', 'Beauty', 177.16, 231.36, 89, 21, '{"Supplier": "Huang-Garcia"}', '2024-10-09');
CALL AddProduct('T-Shirt', 'Clothing', 447.07, 636.73, 13, 44, '{"Supplier": "Thompson-White"}', '2024-03-28');
CALL AddProduct('Foundation', 'Beauty', 209.61, 256.76, 66, 42, '{"Supplier": "Alexander"}', '2024-09-09');
CALL AddProduct('Dining Table', 'Furniture', 91.64, 135.23, 17, 37, '{"Supplier": "Jackson-Johnson"}', '2026-06-16');
CALL AddProduct('Flower Pot', 'Gardening', 379.75, 437.29, 186, 42, '{"Supplier": "Peterson"}', '2025-05-23');
CALL AddProduct('Foundation', 'Beauty', 310.59, 370.03, 42, 18, '{"Supplier": "Dawson-Mann"}', '2024-03-24');
CALL AddProduct('First Aid Kit', 'Healthcare', 308.31, 425.51, 87, 34, '{"Supplier": "Garcia Ltd"}', '2025-12-28');
CALL AddProduct('Shovel', 'Gardening', 87.89, 113.15, 163, 23, '{"Supplier": "Cooke"}', '2025-01-20');
CALL AddProduct('Cookies', 'Food', 198.09, 252.99, 119, 23, '{"Supplier": "Davis"}', '2025-06-06');
CALL AddProduct('Jacket', 'Clothing', 477.98, 555.74, 146, 16, '{"Supplier": "Stafford-Dixon"}', '2026-09-05');
CALL AddProduct('Dining Table', 'Furniture', 72.22, 101.96, 137, 12, '{"Supplier": "Day"}', '2025-05-27');
CALL AddProduct('Chips', 'Food', 191.21, 255.12, 197, 26, '{"Supplier": "Alexander Group"}', '2025-06-03');
CALL AddProduct('Cereal', 'Food', 40.43, 59.36, 89, 45, '{"Supplier": "Santana"}', '2025-05-28');
CALL AddProduct('Smartwatch', 'Electronics', 159.04, 222.87, 109, 22, '{"Supplier": "Harrison LLC"}', '2025-03-12');
CALL AddProduct('Football', 'Sports', 358.84, 456.94, 88, 46, '{"Supplier": "Padilla"}', '2024-11-24');
CALL AddProduct('Smartwatch', 'Electronics', 462.98, 629.53, 69, 48, '{"Supplier": "Collins"}', '2025-08-01');
CALL AddProduct('Toaster', 'Kitchen', 495.96, 672.92, 90, 38, '{"Supplier": "Schneider-Smith"}', '2026-08-17');
CALL AddProduct('Tire', 'Automotive', 268.81, 305.61, 52, 18, '{"Supplier": "Lee"}', '2025-12-20');
CALL AddProduct('Bed', 'Furniture', 32.16, 39.18, 140, 21, '{"Supplier": "Rose Inc"}', '2024-03-10');
CALL AddProduct('Chocolates', 'Food', 440.45, 516.12, 164, 23, '{"Supplier": "Brown-Morales"}', '2024-01-20');
CALL AddProduct('Perfume', 'Beauty', 18.88, 25.46, 147, 49, '{"Supplier": "Smith Inc"}', '2025-06-18');
CALL AddProduct('Shoes', 'Clothing', 446.79, 645.93, 133, 11, '{"Supplier": "Lyons LLC"}', '2026-07-07');
CALL AddProduct('Toaster', 'Kitchen', 102.05, 112.86, 126, 42, '{"Supplier": "Maldonado"}', '2026-11-23');
CALL AddProduct('Shampoo', 'Beauty', 80.78, 102.89, 128, 12, '{"Supplier": "Miller"}', '2025-08-04');
CALL AddProduct('T-Shirt', 'Clothing', 447.28, 598.45, 191, 33, '{"Supplier": "Smith"}', '2024-07-26');
CALL AddProduct('Knife Set', 'Kitchen', 473.20, 705.46, 75, 35, '{"Supplier": "Butler Ltd"}', '2024-08-08');
CALL AddProduct('Dining Table', 'Furniture', 247.90, 296.93, 157, 46, '{"Supplier": "Martinez Inc"}', '2026-05-14');
CALL AddProduct('Chocolates', 'Food', 14.43, 18.89, 40, 34, '{"Supplier": "Cruz"}', '2024-02-28');
CALL AddProduct('Jeans', 'Clothing', 288.69, 400.10, 33, 30, '{"Supplier": "Jordan Group"}', '2024-02-17');
CALL AddProduct('Wardrobe', 'Furniture', 455.83, 610.04, 99, 10, '{"Supplier": "Jennings"}', '2025-06-23');
CALL AddProduct('Cereal', 'Food', 358.29, 515.66, 10, 43, '{"Supplier": "Dixon Inc"}', '2024-03-04');
CALL AddProduct('Pasta', 'Food', 284.89, 347.76, 125, 20, '{"Supplier": "Scott PLC"}', '2024-06-19');
CALL AddProduct('Dining Table', 'Furniture', 424.21, 516.02, 121, 31, '{"Supplier": "Foster-Roy"}', '2025-05-27');
CALL AddProduct('Football', 'Sports', 315.88, 468.68, 124, 23, '{"Supplier": "Watson and Sons"}', '2024-07-26');
CALL AddProduct('Pasta', 'Food', 321.04, 399.04, 30, 20, '{"Supplier": "Rogers-Sandoval"}', '2024-04-16');
CALL AddProduct('Shoes', 'Clothing', 111.46, 145.73, 120, 27, '{"Supplier": "Turner"}', '2024-08-29');
CALL AddProduct('Perfume', 'Beauty', 18.40, 20.80, 110, 31, '{"Supplier": "Barnes and Sons"}', '2025-12-25');
CALL AddProduct('Cookbook', 'Books', 156.95, 220.61, 147, 30, '{"Supplier": "Conner-Morales"}', '2025-06-25');
CALL AddProduct('Flower Pot', 'Gardening', 93.79, 113.32, 182, 50, '{"Supplier": "Miller Group"}', '2026-03-20');
CALL AddProduct('Action Figure', 'Toys', 360.41, 526.69, 46, 10, '{"Supplier": "Parks-Barrera"}', '2025-04-30');
CALL AddProduct('Tablet', 'Electronics', 185.67, 258.32, 147, 48, '{"Supplier": "Guerra-Trevino"}', '2024-07-16');
CALL AddProduct('Cookbook', 'Books', 164.11, 208.53, 168, 48, '{"Supplier": "Hood Group"}', '2026-12-27');
CALL AddProduct('Board Game', 'Toys', 173.19, 211.17, 156, 50, '{"Supplier": "Johnson"}', '2024-05-05');
CALL AddProduct('Cricket Bat', 'Sports', 260.16, 375.47, 74, 25, '{"Supplier": "Hanna Inc"}', '2025-05-27');
CALL AddProduct('Foundation', 'Beauty', 175.33, 239.99, 100, 35, '{"Supplier": "Graham"}', '2025-01-24');
CALL AddProduct('Dining Table', 'Furniture', 309.48, 450.73, 176, 19, '{"Supplier": "Johnson-Brown"}', '2025-02-20');
CALL AddProduct('Perfume', 'Beauty', 103.89, 137.23, 170, 23, '{"Supplier": "Smith and Sons"}', '2024-10-19');
CALL AddProduct('Smartwatch', 'Electronics', 23.40, 34.39, 160, 34, '{"Supplier": "Alvarado Ltd"}', '2025-03-31');
CALL AddProduct('Laptop', 'Electronics', 64.53, 72.53, 167, 18, '{"Supplier": "Berry and Sons"}', '2026-09-26');
CALL AddProduct('Biography', 'Books', 126.04, 158.21, 150, 49, '{"Supplier": "Martinez"}', '2025-01-04');
CALL AddProduct('Face Mask', 'Healthcare', 325.99, 363.79, 118, 13, '{"Supplier": "Williams Inc"}', '2024-05-20');
CALL AddProduct('Headphones', 'Electronics', 291.83, 430.39, 55, 42, '{"Supplier": "Murphy Inc"}', '2024-03-27');
CALL AddProduct('First Aid Kit', 'Healthcare', 202.09, 260.66, 88, 34, '{"Supplier": "Carlson"}', '2025-08-01');
CALL AddProduct('Board Game', 'Toys', 414.46, 558.44, 114, 22, '{"Supplier": "Coffey-Stevens"}', '2026-08-22');
CALL AddProduct('Motor Oil', 'Automotive', 383.03, 490.22, 136, 38, '{"Supplier": "Jones Group"}', '2026-10-16');
CALL AddProduct('T-Shirt', 'Clothing', 48.74, 55.06, 65, 34, '{"Supplier": "Simpson Inc"}', '2025-01-20');
CALL AddProduct('Face Mask', 'Healthcare', 146.15, 207.52, 146, 11, '{"Supplier": "Turner-Fuller"}', '2024-08-29');
CALL AddProduct('Headphones', 'Electronics', 354.11, 409.10, 26, 17, '{"Supplier": "Miller-Smith"}', '2025-11-11');
CALL AddProduct('Fertilizer', 'Gardening', 423.15, 538.16, 162, 34, '{"Supplier": "Brown-Cook"}', '2024-05-22');
CALL AddProduct('Toaster', 'Kitchen', 371.21, 483.50, 181, 45, '{"Supplier": "Macdonald"}', '2025-04-06');
CALL AddProduct('Action Figure', 'Toys', 384.97, 532.12, 128, 27, '{"Supplier": "Miller-Baker"}', '2026-08-30');
CALL AddProduct('Garden Hose', 'Gardening', 328.46, 443.63, 18, 29, '{"Supplier": "Randall and Sons"}', '2026-02-04');
CALL AddProduct('Blood Pressure Monitor', 'Healthcare', 251.42, 341.11, 40, 45, '{"Supplier": "Moore-Shelton"}', '2025-03-10');
CALL AddProduct('Dumbbells', 'Sports', 372.60, 491.00, 91, 14, '{"Supplier": "Dixon"}', '2024-08-22');
CALL AddProduct('Puzzle', 'Toys', 139.76, 191.43, 177, 10, '{"Supplier": "Gonzales Ltd"}', '2026-12-30');
CALL AddProduct('Shampoo', 'Beauty', 286.89, 429.95, 189, 48, '{"Supplier": "Price Group"}', '2025-10-17');
CALL AddProduct('Bed', 'Furniture', 100.56, 142.82, 0, 28, '{"Supplier": "Morales-Harris"}', '2026-06-03');
CALL AddProduct('Chair', 'Furniture', 311.23, 388.02, 197, 50, '{"Supplier": "Bowers-Fields"}', '2024-01-19');
CALL AddProduct('Chips', 'Food', 222.07, 328.97, 183, 10, '{"Supplier": "Johnson-Warren"}', '2024-10-17');
CALL AddProduct('Moisturizer', 'Beauty', 438.76, 497.95, 131, 22, '{"Supplier": "Pratt"}', '2025-06-19');
CALL AddProduct('Dumbbells', 'Sports', 478.50, 613.29, 98, 34, '{"Supplier": "Haney Inc"}', '2025-09-09');
CALL AddProduct('Toaster', 'Kitchen', 378.21, 493.49, 29, 18, '{"Supplier": "Gardner"}', '2024-11-26');
CALL AddProduct('First Aid Kit', 'Healthcare', 129.43, 153.28, 101, 48, '{"Supplier": "Morrow-Sharp"}', '2025-09-12');
CALL AddProduct('Toy Car', 'Toys', 489.74, 611.35, 74, 16, '{"Supplier": "Moody"}', '2025-04-13');
CALL AddProduct('Sweater', 'Clothing', 159.60, 183.00, 12, 17, '{"Supplier": "Ryan-Mejia"}', '2026-04-03');
CALL AddProduct('Smartphone', 'Electronics', 178.47, 225.80, 98, 40, '{"Supplier": "Morris"}', '2026-11-23');
CALL AddProduct('Headphones', 'Electronics', 382.41, 525.57, 8, 24, '{"Supplier": "Bauer Ltd"}', '2024-11-13');
CALL AddProduct('Perfume', 'Beauty', 235.01, 291.03, 15, 18, '{"Supplier": "Landry-Pineda"}', '2025-06-22');
CALL AddProduct('Car Battery', 'Automotive', 230.13, 327.64, 112, 35, '{"Supplier": "Lynch-Clements"}', '2026-06-20');
CALL AddProduct('Cricket Bat', 'Sports', 352.93, 443.56, 47, 12, '{"Supplier": "Fields LLC"}', '2026-06-23');
CALL AddProduct('Cookbook', 'Books', 214.23, 309.05, 196, 48, '{"Supplier": "Wagner-Williams"}', '2024-06-03');
CALL AddProduct('Chips', 'Food', 259.64, 366.09, 110, 42, '{"Supplier": "Murphy"}', '2024-05-24');
CALL AddProduct('Action Figure', 'Toys', 244.13, 306.28, 96, 40, '{"Supplier": "Cruz"}', '2024-03-08');
CALL AddProduct('Flower Pot', 'Gardening', 143.33, 186.36, 168, 13, '{"Supplier": "Rich and Sons"}', '2024-09-25');
CALL AddProduct('Football', 'Sports', 80.78, 95.29, 8, 25, '{"Supplier": "Perez"}', '2024-10-31');
CALL AddProduct('Car Wax', 'Automotive', 250.32, 322.61, 72, 20, '{"Supplier": "Wright"}', '2026-07-06');
CALL AddProduct('Sofa', 'Furniture', 315.64, 398.49, 157, 41, '{"Supplier": "Rodriguez"}', '2026-10-20');
CALL AddProduct('Shampoo', 'Beauty', 41.74, 51.57, 11, 41, '{"Supplier": "Lindsey and Sons"}', '2025-06-03');
CALL AddProduct('Jeans', 'Clothing', 207.69, 237.44, 113, 18, '{"Supplier": "Patterson LLC"}', '2025-10-16');
CALL AddProduct('Mystery Novel', 'Books', 457.61, 543.32, 55, 48, '{"Supplier": "Keith"}', '2025-01-09');
CALL AddProduct('Shoes', 'Clothing', 129.89, 159.30, 82, 10, '{"Supplier": "Blackwell"}', '2024-09-01');
CALL AddProduct('Knife Set', 'Kitchen', 192.51, 211.77, 39, 43, '{"Supplier": "Weeks"}', '2024-06-05');
CALL AddProduct('Car Wax', 'Automotive', 312.80, 376.11, 26, 23, '{"Supplier": "Miller"}', '2026-03-23');
CALL AddProduct('Dumbbells', 'Sports', 395.54, 529.32, 113, 22, '{"Supplier": "Mccoy"}', '2025-10-20');
CALL AddProduct('Fertilizer', 'Gardening', 121.00, 151.38, 79, 46, '{"Supplier": "Holland-Mitchell"}', '2024-07-06');
CALL AddProduct('Chair', 'Furniture', 32.61, 36.61, 100, 32, '{"Supplier": "Madden Inc"}', '2026-04-16');
CALL AddProduct('Smartphone', 'Electronics', 157.51, 230.81, 167, 22, '{"Supplier": "Garza-Atkinson"}', '2026-12-28');
CALL AddProduct('Perfume', 'Beauty', 46.14, 65.26, 45, 45, '{"Supplier": "Hendrix"}', '2024-06-05');
CALL AddProduct('Cookware Set', 'Kitchen', 270.28, 319.36, 76, 45, '{"Supplier": "Johnson LLC"}', '2024-06-09');
CALL AddProduct('Jacket', 'Clothing', 29.45, 35.87, 109, 12, '{"Supplier": "Kelly-Charles"}', '2025-12-27');
CALL AddProduct('Foundation', 'Beauty', 64.21, 77.01, 146, 31, '{"Supplier": "Carter Inc"}', '2024-11-30');
CALL AddProduct('Lawn Mower', 'Gardening', 57.60, 64.99, 39, 15, '{"Supplier": "Raymond Group"}', '2026-08-07');
CALL AddProduct('Sweater', 'Clothing', 475.70, 651.28, 50, 37, '{"Supplier": "Walker Ltd"}', '2025-01-06');
CALL AddProduct('Biography', 'Books', 226.71, 256.08, 188, 24, '{"Supplier": "Barr-Rogers"}', '2024-06-27');
CALL AddProduct('Cereal', 'Food', 310.96, 431.12, 8, 34, '{"Supplier": "Nolan and Sons"}', '2024-02-27');
CALL AddProduct('Laptop', 'Electronics', 46.05, 54.16, 184, 25, '{"Supplier": "West and Sons"}', '2026-02-08');
CALL AddProduct('Smartphone', 'Electronics', 114.77, 156.26, 168, 16, '{"Supplier": "Jenkins"}', '2026-11-07');
CALL AddProduct('Action Figure', 'Toys', 220.67, 304.08, 12, 49, '{"Supplier": "Logan"}', '2024-03-08');
CALL AddProduct('Wardrobe', 'Furniture', 64.64, 85.33, 48, 47, '{"Supplier": "White-Montgomery"}', '2026-08-14');
CALL AddProduct('Motor Oil', 'Automotive', 241.96, 356.06, 100, 48, '{"Supplier": "Flores"}', '2025-05-11');
CALL AddProduct('Doll', 'Toys', 489.42, 597.70, 146, 20, '{"Supplier": "Kline-Donaldson"}', '2026-09-15');
CALL AddProduct('Football', 'Sports', 379.41, 464.27, 64, 43, '{"Supplier": "Carroll Ltd"}', '2024-11-03');
CALL AddProduct('Shovel', 'Gardening', 323.74, 371.51, 38, 25, '{"Supplier": "Nelson"}', '2026-11-18');
CALL AddProduct('Tire', 'Automotive', 469.99, 548.20, 120, 38, '{"Supplier": "Rogers"}', '2025-08-25');
CALL AddProduct('Bed', 'Furniture', 141.01, 186.11, 2, 16, '{"Supplier": "Schwartz-Clayton"}', '2026-09-07');
CALL AddProduct('Doll', 'Toys', 28.61, 33.24, 147, 29, '{"Supplier": "Harris-Chang"}', '2026-10-16');
CALL AddProduct('Perfume', 'Beauty', 354.20, 525.40, 150, 26, '{"Supplier": "Rogers-Anderson"}', '2024-09-05');
CALL AddProduct('Shovel', 'Gardening', 298.01, 378.15, 167, 36, '{"Supplier": "Allison Ltd"}', '2026-12-25');
CALL AddProduct('Wardrobe', 'Furniture', 60.72, 87.44, 157, 35, '{"Supplier": "Blevins-Miller"}', '2026-01-21');
CALL AddProduct('Chair', 'Furniture', 83.74, 114.58, 147, 11, '{"Supplier": "Hoover Inc"}', '2024-07-26');
CALL AddProduct('Lawn Mower', 'Gardening', 37.87, 47.47, 112, 42, '{"Supplier": "Taylor"}', '2025-02-23');
CALL AddProduct('Football', 'Sports', 101.69, 122.59, 76, 40, '{"Supplier": "Maldonado"}', '2024-05-08');
CALL AddProduct('Cookware Set', 'Kitchen', 455.33, 558.81, 27, 46, '{"Supplier": "Gray"}', '2024-02-01');
CALL AddProduct('Toaster', 'Kitchen', 205.15, 232.51, 78, 17, '{"Supplier": "Kim-Jensen"}', '2025-11-01');
CALL AddProduct('Pasta', 'Food', 144.11, 204.35, 25, 48, '{"Supplier": "Snow Ltd"}', '2024-09-30');
CALL AddProduct('Sweater', 'Clothing', 234.53, 334.02, 121, 41, '{"Supplier": "Hayes-Miller"}', '2026-10-19');
CALL AddProduct('T-Shirt', 'Clothing', 158.09, 222.65, 68, 21, '{"Supplier": "Woodward"}', '2024-02-25');
CALL AddProduct('Cereal', 'Food', 447.08, 507.89, 47, 10, '{"Supplier": "Jordan"}', '2025-08-21');
CALL AddProduct('Microwave', 'Kitchen', 328.84, 481.59, 27, 23, '{"Supplier": "Figueroa"}', '2024-07-22');
CALL AddProduct('Knife Set', 'Kitchen', 165.14, 198.06, 176, 48, '{"Supplier": "Bush-Mitchell"}', '2025-05-13');
CALL AddProduct('Microwave', 'Kitchen', 251.16, 348.37, 15, 45, '{"Supplier": "Woodard"}', '2024-11-20');
CALL AddProduct('Vitamin C', 'Healthcare', 473.72, 607.42, 136, 49, '{"Supplier": "Gonzalez"}', '2024-07-05');
CALL AddProduct('Tire', 'Automotive', 369.55, 515.15, 181, 25, '{"Supplier": "Bryant"}', '2025-11-22');
CALL AddProduct('Knife Set', 'Kitchen', 408.46, 568.16, 158, 47, '{"Supplier": "Dawson PLC"}', '2024-05-20');
CALL AddProduct('Chocolates', 'Food', 20.64, 27.46, 106, 50, '{"Supplier": "Harrell LLC"}', '2024-11-10');
CALL AddProduct('Football', 'Sports', 178.75, 266.76, 161, 21, '{"Supplier": "Clark LLC"}', '2025-05-25');
CALL AddProduct('Air Filter', 'Automotive', 295.80, 343.53, 35, 36, '{"Supplier": "Garner and Sons"}', '2025-05-14');
CALL AddProduct('Cookware Set', 'Kitchen', 209.21, 285.52, 167, 20, '{"Supplier": "Gregory-Porter"}', '2026-07-17');
CALL AddProduct('Mystery Novel', 'Books', 418.28, 503.12, 42, 27, '{"Supplier": "Hernandez"}', '2026-09-22');
CALL AddProduct('Microwave', 'Kitchen', 318.04, 369.65, 180, 26, '{"Supplier": "Schmidt"}', '2025-12-06');
CALL AddProduct('Car Battery', 'Automotive', 236.44, 354.32, 151, 19, '{"Supplier": "Sanchez Group"}', '2024-11-03');
CALL AddProduct('Tablet', 'Electronics', 155.52, 182.05, 13, 26, '{"Supplier": "Love-Vasquez"}', '2024-11-21');
CALL AddProduct('Flower Pot', 'Gardening', 222.91, 286.35, 168, 39, '{"Supplier": "Bond-Ortiz"}', '2024-11-21');
CALL AddProduct('Car Battery', 'Automotive', 300.39, 332.82, 139, 10, '{"Supplier": "Peterson and Sons"}', '2024-03-06');
CALL AddProduct('Shoes', 'Clothing', 486.44, 550.82, 19, 11, '{"Supplier": "Moran"}', '2025-12-09');
CALL AddProduct('Chocolates', 'Food', 211.63, 240.47, 178, 44, '{"Supplier": "Hall LLC"}', '2024-12-21');
CALL AddProduct('Board Game', 'Toys', 140.39, 203.49, 128, 38, '{"Supplier": "Brown"}', '2025-11-14');
CALL AddProduct('Chocolates', 'Food', 193.21, 244.27, 57, 35, '{"Supplier": "Chambers-Gibson"}', '2024-06-01');
CALL AddProduct('Dining Table', 'Furniture', 475.98, 609.22, 128, 37, '{"Supplier": "Stone"}', '2025-02-11');
CALL AddProduct('Sofa', 'Furniture', 116.22, 139.94, 85, 43, '{"Supplier": "Olson-Palmer"}', '2026-07-25');
CALL AddProduct('Tennis Racket', 'Sports', 466.44, 611.52, 38, 12, '{"Supplier": "Jackson"}', '2026-06-12');
CALL AddProduct('Fertilizer', 'Gardening', 352.66, 457.75, 112, 29, '{"Supplier": "Lee"}', '2024-09-04');
CALL AddProduct('Cookies', 'Food', 143.02, 209.36, 119, 26, '{"Supplier": "Davis"}', '2025-07-16');
CALL AddProduct('Laptop', 'Electronics', 58.27, 66.40, 24, 44, '{"Supplier": "Lewis-Ibarra"}', '2026-09-14');
CALL AddProduct('Chips', 'Food', 207.02, 281.23, 105, 36, '{"Supplier": "Morgan"}', '2024-10-10');
CALL AddProduct('Smartphone', 'Electronics', 97.15, 142.35, 51, 48, '{"Supplier": "Werner and Sons"}', '2026-04-19');
CALL AddProduct('Microwave', 'Kitchen', 381.39, 569.45, 167, 32, '{"Supplier": "Smith PLC"}', '2024-07-02');
CALL AddProduct('Cereal', 'Food', 276.42, 344.39, 5, 33, '{"Supplier": "Graves"}', '2025-06-07');
CALL AddProduct('Football', 'Sports', 462.11, 532.45, 7, 49, '{"Supplier": "Davidson-Williams"}', '2025-02-17');
CALL AddProduct('Biography', 'Books', 168.09, 202.78, 75, 46, '{"Supplier": "Bridges"}', '2026-09-26');
CALL AddProduct('Toy Car', 'Toys', 16.08, 19.57, 117, 29, '{"Supplier": "Simpson"}', '2025-02-10');
CALL AddProduct('Jeans', 'Clothing', 232.51, 302.26, 43, 11, '{"Supplier": "Lynn-Bennett"}', '2025-12-15');
CALL AddProduct('Tablet', 'Electronics', 421.03, 489.51, 175, 18, '{"Supplier": "Sanchez-Mcdowell"}', '2025-08-01');
CALL AddProduct('Cookware Set', 'Kitchen', 316.57, 418.31, 9, 17, '{"Supplier": "Mayer LLC"}', '2024-11-21');
CALL AddProduct('Tennis Racket', 'Sports', 171.50, 203.60, 58, 23, '{"Supplier": "Martinez-Duffy"}', '2026-04-19');
CALL AddProduct('Flower Pot', 'Gardening', 199.21, 273.69, 126, 43, '{"Supplier": "Lopez"}', '2026-01-15');
CALL AddProduct('Tablet', 'Electronics', 174.76, 239.67, 170, 44, '{"Supplier": "Barrett"}', '2026-04-12');
CALL AddProduct('Flower Pot', 'Gardening', 300.76, 377.05, 24, 47, '{"Supplier": "Thomas Group"}', '2024-02-27');
CALL AddProduct('Motor Oil', 'Automotive', 180.76, 262.77, 54, 37, '{"Supplier": "Mendez Group"}', '2025-10-13');
CALL AddProduct('Blood Pressure Monitor', 'Healthcare', 122.00, 137.61, 138, 48, '{"Supplier": "Smith LLC"}', '2024-09-02');
CALL AddProduct('Thermometer', 'Healthcare', 58.20, 74.06, 8, 11, '{"Supplier": "Clayton"}', '2025-01-02');
CALL AddProduct('Jeans', 'Clothing', 82.25, 114.23, 169, 20, '{"Supplier": "Horn"}', '2025-07-15');
CALL AddProduct('Biography', 'Books', 111.59, 161.79, 128, 45, '{"Supplier": "Campbell-Wilcox"}', '2026-11-19');
CALL AddProduct('Toaster', 'Kitchen', 149.70, 179.07, 129, 15, '{"Supplier": "Ramirez"}', '2024-06-14');
CALL AddProduct('Headphones', 'Electronics', 80.09, 107.22, 39, 15, '{"Supplier": "Jenkins"}', '2026-10-15');
CALL AddProduct('Cereal', 'Food', 358.77, 512.47, 176, 15, '{"Supplier": "Arnold-Nguyen"}', '2025-01-27');
CALL AddProduct('Smartwatch', 'Electronics', 215.74, 243.64, 43, 47, '{"Supplier": "Gonzales-Owens"}', '2024-03-05');
CALL AddProduct('Tire', 'Automotive', 231.57, 307.98, 34, 28, '{"Supplier": "Hayes-Collins"}', '2024-04-18');
CALL AddProduct('Smartwatch', 'Electronics', 118.05, 156.78, 154, 41, '{"Supplier": "Ochoa-Hebert"}', '2025-10-28');
CALL AddProduct('Cookbook', 'Books', 376.05, 513.65, 67, 50, '{"Supplier": "Griffin Inc"}', '2024-11-22');
CALL AddProduct('Shampoo', 'Beauty', 412.39, 613.25, 182, 50, '{"Supplier": "Mcbride Ltd"}', '2025-04-06');
CALL AddProduct('Microwave', 'Kitchen', 279.04, 376.99, 185, 33, '{"Supplier": "Carter Inc"}', '2026-03-19');
CALL AddProduct('Biography', 'Books', 138.70, 184.75, 170, 34, '{"Supplier": "Mills-Harper"}', '2024-04-28');
CALL AddProduct('Tablet', 'Electronics', 136.95, 172.00, 63, 22, '{"Supplier": "Alvarado-Murphy"}', '2025-06-09');
CALL AddProduct('Tire', 'Automotive', 216.17, 274.20, 145, 36, '{"Supplier": "Miranda LLC"}', '2025-09-06');
CALL AddProduct('Blender', 'Kitchen', 45.48, 54.25, 172, 49, '{"Supplier": "Holt"}', '2026-03-02');
CALL AddProduct('Vitamin C', 'Healthcare', 30.40, 35.82, 43, 46, '{"Supplier": "Sosa"}', '2024-07-19');
CALL AddProduct('Dumbbells', 'Sports', 404.66, 580.05, 67, 12, '{"Supplier": "Martin-Taylor"}', '2024-12-01');
CALL AddProduct('Fantasy Book', 'Books', 461.69, 508.19, 106, 46, '{"Supplier": "Doyle-Richards"}', '2024-07-27');
CALL AddProduct('Smartphone', 'Electronics', 355.14, 399.50, 35, 25, '{"Supplier": "Morris-Grant"}', '2024-08-26');
CALL AddProduct('Blender', 'Kitchen', 255.29, 336.12, 33, 20, '{"Supplier": "Jackson-Skinner"}', '2024-02-24');
CALL AddProduct('Blender', 'Kitchen', 174.31, 253.38, 109, 12, '{"Supplier": "Osborn-Harrison"}', '2025-04-03');
CALL AddProduct('Perfume', 'Beauty', 172.97, 219.55, 125, 29, '{"Supplier": "Quinn-Petersen"}', '2024-10-08');
CALL AddProduct('Tablet', 'Electronics', 86.15, 128.56, 139, 20, '{"Supplier": "Rodgers"}', '2024-07-27');
CALL AddProduct('Sweater', 'Clothing', 339.09, 488.65, 87, 19, '{"Supplier": "Mckee and Sons"}', '2024-01-05');
CALL AddProduct('Mystery Novel', 'Books', 89.34, 128.36, 4, 46, '{"Supplier": "Ryan PLC"}', '2026-03-10');
CALL AddProduct('Flower Pot', 'Gardening', 285.00, 384.93, 84, 30, '{"Supplier": "Thomas-King"}', '2024-06-07');
CALL AddProduct('Jacket', 'Clothing', 75.23, 91.04, 56, 28, '{"Supplier": "Johnson"}', '2026-11-07');
CALL AddProduct('Biography', 'Books', 440.81, 497.06, 172, 40, '{"Supplier": "Hamilton-Thompson"}', '2025-06-16');
CALL AddProduct('Pasta', 'Food', 454.57, 583.66, 8, 33, '{"Supplier": "Gutierrez-York"}', '2025-07-12');
CALL AddProduct('Lipstick', 'Beauty', 307.72, 428.85, 140, 27, '{"Supplier": "Jones-Archer"}', '2025-04-05');
CALL AddProduct('Action Figure', 'Toys', 314.33, 391.29, 188, 32, '{"Supplier": "Ortiz and Sons"}', '2024-12-02');
CALL AddProduct('Mystery Novel', 'Books', 370.74, 505.36, 151, 25, '{"Supplier": "Luna"}', '2024-06-26');
CALL AddProduct('Biography', 'Books', 54.42, 64.20, 174, 27, '{"Supplier": "Reed PLC"}', '2026-09-08');
CALL AddProduct('Chocolates', 'Food', 152.44, 210.97, 182, 35, '{"Supplier": "Peters"}', '2024-08-10');
CALL AddProduct('Science Textbook', 'Books', 483.14, 681.17, 171, 13, '{"Supplier": "Bond Ltd"}', '2025-02-09');
CALL AddProduct('Cookware Set', 'Kitchen', 195.14, 269.73, 126, 20, '{"Supplier": "Ferguson Ltd"}', '2026-07-13');
CALL AddProduct('Cricket Bat', 'Sports', 245.71, 352.58, 57, 26, '{"Supplier": "Fox Ltd"}', '2026-09-27');
CALL AddProduct('Sofa', 'Furniture', 74.97, 86.96, 76, 32, '{"Supplier": "Levine"}', '2025-12-24');
CALL AddProduct('Dining Table', 'Furniture', 244.94, 273.09, 135, 25, '{"Supplier": "Olsen-Rose"}', '2026-02-20');
CALL AddProduct('Science Textbook', 'Books', 263.86, 348.18, 41, 10, '{"Supplier": "Love Inc"}', '2026-01-17');
CALL AddProduct('Blood Pressure Monitor', 'Healthcare', 436.94, 570.08, 36, 17, '{"Supplier": "Blanchard"}', '2024-03-22');
CALL AddProduct('Garden Hose', 'Gardening', 150.99, 167.06, 129, 26, '{"Supplier": "Fuller-Le"}', '2025-08-30');
CALL AddProduct('Puzzle', 'Toys', 327.80, 381.76, 147, 50, '{"Supplier": "Pratt"}', '2025-05-05');
CALL AddProduct('Puzzle', 'Toys', 364.67, 508.56, 31, 47, '{"Supplier": "Carr"}', '2025-04-27');
CALL AddProduct('Perfume', 'Beauty', 100.68, 126.55, 64, 31, '{"Supplier": "Vega-Rosario"}', '2025-01-07');
CALL AddProduct('Biography', 'Books', 27.78, 38.25, 178, 44, '{"Supplier": "Fisher-Williams"}', '2024-04-30');
CALL AddProduct('Headphones', 'Electronics', 241.73, 329.21, 99, 19, '{"Supplier": "Smith-Jones"}', '2025-03-14');
CALL AddProduct('Doll', 'Toys', 457.91, 684.59, 178, 17, '{"Supplier": "Byrd LLC"}', '2025-12-29');
CALL AddProduct('Mystery Novel', 'Books', 368.43, 417.13, 27, 15, '{"Supplier": "Smith"}', '2026-04-12');
CALL AddProduct('Toaster', 'Kitchen', 324.61, 429.10, 170, 24, '{"Supplier": "Reilly"}', '2026-03-05');
CALL AddProduct('Tablet', 'Electronics', 73.70, 85.37, 170, 50, '{"Supplier": "Short-Anderson"}', '2026-02-13');
CALL AddProduct('Pasta', 'Food', 219.32, 274.34, 75, 20, '{"Supplier": "Coffey"}', '2024-06-14');
CALL AddProduct('Board Game', 'Toys', 213.54, 283.45, 98, 23, '{"Supplier": "Travis and Sons"}', '2025-11-21');
CALL AddProduct('Blood Pressure Monitor', 'Healthcare', 373.24, 519.94, 78, 46, '{"Supplier": "Jackson"}', '2024-05-30');
CALL AddProduct('Doll', 'Toys', 280.99, 352.68, 197, 16, '{"Supplier": "Moses Ltd"}', '2025-03-11');
CALL AddProduct('Face Mask', 'Healthcare', 309.31, 459.52, 118, 20, '{"Supplier": "Reed and Sons"}', '2024-03-22');
CALL AddProduct('Sweater', 'Clothing', 372.17, 462.13, 11, 35, '{"Supplier": "Diaz"}', '2026-08-06');
CALL AddProduct('Garden Hose', 'Gardening', 497.48, 617.98, 139, 29, '{"Supplier": "Gilbert-Hanson"}', '2024-02-10');
CALL AddProduct('Chair', 'Furniture', 417.52, 586.17, 64, 39, '{"Supplier": "Norris"}', '2025-03-07');
CALL AddProduct('Blender', 'Kitchen', 65.46, 91.44, 78, 11, '{"Supplier": "Jackson PLC"}', '2024-03-28');
CALL AddProduct('Laptop', 'Electronics', 185.07, 236.11, 34, 19, '{"Supplier": "Shea Inc"}', '2026-09-17');
CALL AddProduct('Fantasy Book', 'Books', 49.83, 72.47, 191, 20, '{"Supplier": "Hull"}', '2025-03-09');
CALL AddProduct('Thermometer', 'Healthcare', 426.13, 563.61, 22, 38, '{"Supplier": "Mason"}', '2024-12-11');
CALL AddProduct('Motor Oil', 'Automotive', 464.49, 693.97, 184, 26, '{"Supplier": "Sanders-Jones"}', '2026-03-25');
CALL AddProduct('Headphones', 'Electronics', 181.89, 239.46, 79, 24, '{"Supplier": "Grant and Sons"}', '2026-09-12');
CALL AddProduct('Lipstick', 'Beauty', 440.18, 659.82, 22, 18, '{"Supplier": "Frazier"}', '2025-09-08');
CALL AddProduct('Jeans', 'Clothing', 462.69, 627.60, 174, 46, '{"Supplier": "Morrow PLC"}', '2024-06-04');
CALL AddProduct('Jacket', 'Clothing', 313.99, 418.35, 174, 49, '{"Supplier": "Pugh-Hendrix"}', '2024-05-10');
CALL AddProduct('Fertilizer', 'Gardening', 356.29, 413.26, 179, 27, '{"Supplier": "Jackson-Fuller"}', '2026-03-08');
CALL AddProduct('Fantasy Book', 'Books', 176.16, 245.11, 50, 34, '{"Supplier": "Hale"}', '2024-02-08');
CALL AddProduct('First Aid Kit', 'Healthcare', 107.26, 128.19, 190, 42, '{"Supplier": "Castillo Inc"}', '2025-10-21');
CALL AddProduct('Face Mask', 'Healthcare', 358.36, 450.16, 121, 19, '{"Supplier": "Evans-Charles"}', '2025-02-27');
CALL AddProduct('Air Filter', 'Automotive', 209.88, 265.00, 149, 40, '{"Supplier": "Andersen-Evans"}', '2025-06-10');
CALL AddProduct('Air Filter', 'Automotive', 192.57, 266.29, 5, 27, '{"Supplier": "Johnson Ltd"}', '2026-02-02');
CALL AddProduct('Car Wax', 'Automotive', 225.29, 335.88, 29, 23, '{"Supplier": "Boyer-Richmond"}', '2026-08-03');
CALL AddProduct('Cookies', 'Food', 401.41, 557.67, 188, 18, '{"Supplier": "Bell-Montgomery"}', '2024-10-16');
CALL AddProduct('Tablet', 'Electronics', 146.22, 186.10, 87, 31, '{"Supplier": "Hill"}', '2026-05-30');
CALL AddProduct('Shovel', 'Gardening', 138.06, 166.25, 49, 22, '{"Supplier": "Lynch PLC"}', '2026-04-23');
CALL AddProduct('Mystery Novel', 'Books', 107.12, 132.76, 137, 29, '{"Supplier": "Anderson-Phillips"}', '2024-03-31');
CALL AddProduct('Foundation', 'Beauty', 149.83, 215.41, 184, 24, '{"Supplier": "Coleman LLC"}', '2024-01-23');
CALL AddProduct('Microwave', 'Kitchen', 336.70, 435.85, 18, 16, '{"Supplier": "Barr-Ramsey"}', '2026-10-23');
CALL AddProduct('Dining Table', 'Furniture', 269.76, 327.32, 161, 11, '{"Supplier": "Mitchell"}', '2025-04-08');
CALL AddProduct('Perfume', 'Beauty', 243.97, 327.34, 16, 13, '{"Supplier": "Miller"}', '2024-09-30');
CALL AddProduct('Garden Hose', 'Gardening', 101.84, 135.99, 144, 33, '{"Supplier": "Jackson-Morrison"}', '2025-09-18');
CALL AddProduct('Motor Oil', 'Automotive', 133.76, 182.24, 126, 13, '{"Supplier": "Stein and Sons"}', '2026-12-04');
CALL AddProduct('Biography', 'Books', 399.68, 511.29, 149, 45, '{"Supplier": "Graham"}', '2026-11-15');
CALL AddProduct('First Aid Kit', 'Healthcare', 86.23, 98.41, 124, 46, '{"Supplier": "Martin-Rivers"}', '2025-09-22');
CALL AddProduct('Chair', 'Furniture', 424.95, 516.82, 29, 26, '{"Supplier": "Burch-Brown"}', '2024-06-30');
CALL AddProduct('Garden Hose', 'Gardening', 75.30, 87.86, 43, 18, '{"Supplier": "Walker-Meadows"}', '2024-01-01');
CALL AddProduct('Shovel', 'Gardening', 124.37, 144.36, 186, 45, '{"Supplier": "Harris Ltd"}', '2025-07-07');
CALL AddProduct('Chips', 'Food', 13.86, 18.41, 178, 42, '{"Supplier": "Jones"}', '2024-12-23');
CALL AddProduct('Mystery Novel', 'Books', 460.97, 508.82, 42, 15, '{"Supplier": "Bailey-Johnson"}', '2025-12-16');
CALL AddProduct('Wardrobe', 'Furniture', 211.19, 260.39, 48, 45, '{"Supplier": "Banks and Sons"}', '2025-07-25');
CALL AddProduct('Toaster', 'Kitchen', 53.22, 66.53, 8, 43, '{"Supplier": "Rush-Thompson"}', '2026-11-21');
CALL AddProduct('Toy Car', 'Toys', 467.42, 575.87, 162, 46, '{"Supplier": "Hubbard"}', '2024-01-12');
CALL AddProduct('Laptop', 'Electronics', 310.11, 394.52, 138, 15, '{"Supplier": "Welch PLC"}', '2026-04-21');
CALL AddProduct('Football', 'Sports', 199.47, 267.86, 0, 27, '{"Supplier": "Moon"}', '2025-11-09');
CALL AddProduct('Toy Car', 'Toys', 97.27, 125.90, 170, 47, '{"Supplier": "King-Lee"}', '2025-07-30');
CALL AddProduct('Motor Oil', 'Automotive', 258.11, 345.12, 142, 31, '{"Supplier": "Henderson"}', '2024-12-13');
CALL AddProduct('Flower Pot', 'Gardening', 220.36, 285.99, 111, 40, '{"Supplier": "Valentine-Oconnell"}', '2026-04-17');
CALL AddProduct('Cookware Set', 'Kitchen', 168.70, 244.46, 170, 22, '{"Supplier": "Bailey and Sons"}', '2025-05-04');
CALL AddProduct('Shoes', 'Clothing', 370.99, 420.56, 163, 22, '{"Supplier": "Marks"}', '2026-01-17');
CALL AddProduct('Shovel', 'Gardening', 131.54, 174.77, 180, 49, '{"Supplier": "Rogers and Sons"}', '2026-08-03');
CALL AddProduct('Chair', 'Furniture', 67.92, 89.74, 105, 23, '{"Supplier": "Bailey Inc"}', '2025-03-13');
CALL AddProduct('Jacket', 'Clothing', 149.98, 185.63, 94, 40, '{"Supplier": "Anderson-Knapp"}', '2026-08-14');
CALL AddProduct('Microwave', 'Kitchen', 480.00, 620.12, 103, 36, '{"Supplier": "Pratt-Ellison"}', '2025-02-26');
CALL AddProduct('First Aid Kit', 'Healthcare', 72.35, 82.48, 41, 21, '{"Supplier": "Brown LLC"}', '2024-02-05');
CALL AddProduct('Sweater', 'Clothing', 251.27, 334.47, 4, 45, '{"Supplier": "Rice"}', '2025-06-08');
CALL AddProduct('Tire', 'Automotive', 354.22, 515.39, 159, 46, '{"Supplier": "Campbell"}', '2025-03-18');
CALL AddProduct('Air Filter', 'Automotive', 212.67, 244.03, 87, 18, '{"Supplier": "Kelly and Sons"}', '2025-12-18');
CALL AddProduct('Action Figure', 'Toys', 12.17, 15.33, 46, 33, '{"Supplier": "Campbell"}', '2026-11-10');
CALL AddProduct('Toy Car', 'Toys', 189.74, 270.28, 157, 23, '{"Supplier": "Hobbs and Sons"}', '2026-06-10');
CALL AddProduct('Lipstick', 'Beauty', 225.17, 282.96, 176, 21, '{"Supplier": "Smith-Salazar"}', '2025-03-03');
CALL AddProduct('Fertilizer', 'Gardening', 381.60, 432.03, 21, 40, '{"Supplier": "Thomas"}', '2024-02-04');
CALL AddProduct('Yoga Mat', 'Sports', 96.34, 115.62, 59, 32, '{"Supplier": "Lopez"}', '2026-02-18');
CALL AddProduct('Jeans', 'Clothing', 317.46, 350.76, 66, 12, '{"Supplier": "Oneal-Vargas"}', '2026-01-31');
CALL AddProduct('Doll', 'Toys', 371.84, 493.57, 161, 48, '{"Supplier": "Yates"}', '2026-04-12');
CALL AddProduct('Doll', 'Toys', 449.45, 531.80, 86, 11, '{"Supplier": "Garcia-Martin"}', '2025-06-12');
CALL AddProduct('Garden Hose', 'Gardening', 286.54, 371.72, 180, 21, '{"Supplier": "Jenkins Inc"}', '2024-07-21');
CALL AddProduct('Thermometer', 'Healthcare', 160.12, 178.53, 8, 45, '{"Supplier": "Brown-Bruce"}', '2024-04-06');
CALL AddProduct('Car Wax', 'Automotive', 86.39, 128.52, 81, 16, '{"Supplier": "Russell"}', '2026-07-22');
CALL AddProduct('Mystery Novel', 'Books', 55.42, 67.31, 144, 11, '{"Supplier": "Garcia LLC"}', '2024-08-30');
CALL AddProduct('Toy Car', 'Toys', 350.86, 420.87, 81, 48, '{"Supplier": "Zamora-Elliott"}', '2024-09-09');
CALL AddProduct('Doll', 'Toys', 465.29, 657.87, 178, 43, '{"Supplier": "Thompson"}', '2025-10-07');
CALL AddProduct('Chocolates', 'Food', 204.18, 238.07, 4, 30, '{"Supplier": "Ruiz"}', '2024-07-09');
CALL AddProduct('Perfume', 'Beauty', 249.12, 274.14, 148, 23, '{"Supplier": "Wade"}', '2024-07-02');
CALL AddProduct('Smartphone', 'Electronics', 99.47, 121.13, 152, 12, '{"Supplier": "Bates-Simmons"}', '2024-07-05');
CALL AddProduct('Tire', 'Automotive', 281.76, 310.54, 161, 15, '{"Supplier": "Maldonado-Johnson"}', '2025-10-10');
CALL AddProduct('Action Figure', 'Toys', 435.53, 547.37, 112, 45, '{"Supplier": "Heath"}', '2026-06-06');
CALL AddProduct('Perfume', 'Beauty', 324.38, 433.00, 12, 14, '{"Supplier": "Smith-Frey"}', '2024-12-05');
CALL AddProduct('Cookware Set', 'Kitchen', 313.39, 347.12, 14, 15, '{"Supplier": "Keller-Hernandez"}', '2026-04-01');
CALL AddProduct('Shampoo', 'Beauty', 40.06, 56.06, 66, 35, '{"Supplier": "Pierce"}', '2024-05-18');
CALL AddProduct('Headphones', 'Electronics', 340.14, 480.63, 194, 27, '{"Supplier": "Miller"}', '2026-11-28');
CALL AddProduct('Mystery Novel', 'Books', 261.41, 368.51, 100, 23, '{"Supplier": "Fox-Davis"}', '2026-05-24');
CALL AddProduct('Cookies', 'Food', 292.13, 432.03, 20, 50, '{"Supplier": "Calderon"}', '2025-01-04');
CALL AddProduct('Foundation', 'Beauty', 70.97, 84.67, 80, 32, '{"Supplier": "Smith"}', '2024-06-27');
CALL AddProduct('Moisturizer', 'Beauty', 446.45, 550.74, 138, 20, '{"Supplier": "Robinson"}', '2025-02-03');
CALL AddProduct('Motor Oil', 'Automotive', 162.68, 230.83, 27, 44, '{"Supplier": "Price PLC"}', '2026-04-12');
CALL AddProduct('Toaster', 'Kitchen', 317.32, 468.13, 196, 16, '{"Supplier": "Brown"}', '2025-05-17');
CALL AddProduct('Tire', 'Automotive', 298.05, 335.61, 17, 21, '{"Supplier": "Davis-Cordova"}', '2024-12-20');
CALL AddProduct('Football', 'Sports', 26.86, 30.64, 55, 24, '{"Supplier": "Ramirez-Freeman"}', '2025-01-22');
CALL AddProduct('Tablet', 'Electronics', 430.30, 601.17, 177, 16, '{"Supplier": "Tucker"}', '2026-09-11');
CALL AddProduct('Chocolates', 'Food', 239.80, 331.07, 180, 22, '{"Supplier": "Luna"}', '2025-03-10');
CALL AddProduct('Pasta', 'Food', 486.35, 630.79, 21, 38, '{"Supplier": "Riley-Arnold"}', '2025-09-08');
CALL AddProduct('Thermometer', 'Healthcare', 206.17, 247.91, 132, 32, '{"Supplier": "Chapman-Fuentes"}', '2025-07-21');
CALL AddProduct('Fertilizer', 'Gardening', 21.78, 27.30, 108, 21, '{"Supplier": "Wilson PLC"}', '2024-03-18');
CALL AddProduct('Toaster', 'Kitchen', 71.12, 94.44, 90, 20, '{"Supplier": "Jones"}', '2025-10-19');
CALL AddProduct('Knife Set', 'Kitchen', 422.50, 475.82, 69, 36, '{"Supplier": "Reid and Sons"}', '2024-08-26');
CALL AddProduct('Biography', 'Books', 483.38, 635.18, 45, 22, '{"Supplier": "Huerta-Barnett"}', '2025-09-10');
CALL AddProduct('Face Mask', 'Healthcare', 466.03, 545.53, 87, 36, '{"Supplier": "Allen LLC"}', '2024-12-28');
CALL AddProduct('Garden Hose', 'Gardening', 244.56, 292.04, 15, 21, '{"Supplier": "Bernard"}', '2026-07-13');
CALL AddProduct('Dumbbells', 'Sports', 247.57, 279.32, 138, 32, '{"Supplier": "Bowen and Sons"}', '2026-06-21');
CALL AddProduct('Doll', 'Toys', 33.36, 47.50, 70, 38, '{"Supplier": "Hoffman Inc"}', '2026-12-02');
CALL AddProduct('Jacket', 'Clothing', 458.62, 608.90, 165, 14, '{"Supplier": "Mitchell-Greene"}', '2026-10-22');
CALL AddProduct('Board Game', 'Toys', 110.04, 159.45, 58, 11, '{"Supplier": "George"}', '2025-09-24');
CALL AddProduct('Toy Car', 'Toys', 88.60, 131.50, 177, 25, '{"Supplier": "West-Maldonado"}', '2026-08-30');
CALL AddProduct('Smartphone', 'Electronics', 88.43, 123.44, 199, 17, '{"Supplier": "Hughes"}', '2024-12-17');
CALL AddProduct('Motor Oil', 'Automotive', 91.02, 102.73, 50, 29, '{"Supplier": "Mendoza Group"}', '2026-11-15');
CALL AddProduct('Smartwatch', 'Electronics', 384.39, 570.58, 68, 46, '{"Supplier": "Brock-Mitchell"}', '2024-06-02');
CALL AddProduct('Chair', 'Furniture', 358.41, 534.49, 194, 12, '{"Supplier": "Wilson-Smith"}', '2026-02-22');
CALL AddProduct('Shoes', 'Clothing', 193.10, 222.50, 83, 48, '{"Supplier": "Hall Ltd"}', '2025-01-14');
CALL AddProduct('Tire', 'Automotive', 395.75, 443.09, 22, 48, '{"Supplier": "Taylor-Thornton"}', '2026-07-30');
CALL AddProduct('Lipstick', 'Beauty', 176.18, 248.59, 13, 33, '{"Supplier": "Taylor"}', '2025-11-15');
CALL AddProduct('Cookware Set', 'Kitchen', 472.32, 570.63, 151, 19, '{"Supplier": "Cook-Coleman"}', '2024-04-26');
CALL AddProduct('Laptop', 'Electronics', 273.64, 395.47, 127, 32, '{"Supplier": "Johnson-Lee"}', '2025-11-13');
CALL AddProduct('Sofa', 'Furniture', 438.92, 491.72, 2, 16, '{"Supplier": "Brown-Heath"}', '2026-08-23');
CALL AddProduct('Thermometer', 'Healthcare', 45.76, 65.42, 6, 31, '{"Supplier": "Williams LLC"}', '2025-05-22');
CALL AddProduct('Air Filter', 'Automotive', 356.86, 523.73, 176, 27, '{"Supplier": "Green"}', '2026-12-28');
CALL AddProduct('Fertilizer', 'Gardening', 200.15, 287.39, 20, 11, '{"Supplier": "Ross"}', '2026-03-25');
CALL AddProduct('Tennis Racket', 'Sports', 66.87, 85.65, 39, 45, '{"Supplier": "Vargas and Sons"}', '2025-02-11');
CALL AddProduct('Car Battery', 'Automotive', 406.85, 459.60, 176, 50, '{"Supplier": "Black Group"}', '2025-06-22');
CALL AddProduct('Chips', 'Food', 449.34, 591.32, 155, 47, '{"Supplier": "Johnson Inc"}', '2025-06-16');
CALL AddProduct('Dumbbells', 'Sports', 287.00, 404.48, 58, 16, '{"Supplier": "Garcia-Miller"}', '2025-06-04');
CALL AddProduct('Car Wax', 'Automotive', 110.07, 151.36, 110, 50, '{"Supplier": "Gross"}', '2024-06-02');
CALL AddProduct('Car Battery', 'Automotive', 482.24, 575.08, 37, 31, '{"Supplier": "Olson-Mitchell"}', '2025-07-17');
CALL AddProduct('Shovel', 'Gardening', 314.52, 375.01, 22, 29, '{"Supplier": "Acevedo"}', '2024-09-18');
CALL AddProduct('Blender', 'Kitchen', 488.88, 729.03, 174, 15, '{"Supplier": "Combs-Sexton"}', '2024-10-02');
CALL AddProduct('Sofa', 'Furniture', 316.79, 474.01, 39, 48, '{"Supplier": "Simpson and Sons"}', '2025-08-20');
CALL AddProduct('T-Shirt', 'Clothing', 418.62, 467.44, 89, 24, '{"Supplier": "Bruce-Carter"}', '2026-10-03');
CALL AddProduct('Smartphone', 'Electronics', 46.03, 54.50, 199, 49, '{"Supplier": "Rose-Torres"}', '2025-11-01');
CALL AddProduct('Pasta', 'Food', 90.45, 103.00, 11, 45, '{"Supplier": "Ayala PLC"}', '2024-02-24');
CALL AddProduct('Cookware Set', 'Kitchen', 195.02, 234.03, 47, 45, '{"Supplier": "Cunningham Ltd"}', '2026-06-25');
CALL AddProduct('Garden Hose', 'Gardening', 451.01, 508.09, 56, 19, '{"Supplier": "Neal-Allen"}', '2024-06-22');
CALL AddProduct('Vitamin C', 'Healthcare', 121.80, 179.60, 151, 44, '{"Supplier": "Kemp Inc"}', '2025-06-18');
CALL AddProduct('Smartwatch', 'Electronics', 421.00, 619.89, 122, 20, '{"Supplier": "Stokes"}', '2024-06-14');
CALL AddProduct('Dining Table', 'Furniture', 407.25, 452.59, 184, 37, '{"Supplier": "Johnson Group"}', '2024-07-04');
CALL AddProduct('Motor Oil', 'Automotive', 191.50, 284.93, 1, 15, '{"Supplier": "Heath-Wilson"}', '2026-10-25');
CALL AddProduct('Garden Hose', 'Gardening', 209.67, 273.31, 173, 27, '{"Supplier": "Haney"}', '2024-07-29');
CALL AddProduct('Dumbbells', 'Sports', 468.96, 689.11, 28, 22, '{"Supplier": "Scott-Jackson"}', '2026-03-03');
CALL AddProduct('Blood Pressure Monitor', 'Healthcare', 476.50, 664.99, 184, 35, '{"Supplier": "Hernandez-Robinson"}', '2024-06-07');
CALL AddProduct('Board Game', 'Toys', 316.51, 429.86, 16, 33, '{"Supplier": "Ramirez-Flores"}', '2025-06-24');
CALL AddProduct('Sweater', 'Clothing', 10.35, 12.57, 59, 39, '{"Supplier": "Aguilar LLC"}', '2026-03-21');
CALL AddProduct('Jeans', 'Clothing', 256.70, 298.72, 190, 15, '{"Supplier": "Neal-Osborn"}', '2025-10-28');
CALL AddProduct('Cookbook', 'Books', 431.00, 520.11, 73, 45, '{"Supplier": "Gonzalez"}', '2024-08-02');
CALL AddProduct('Garden Hose', 'Gardening', 443.66, 586.19, 169, 34, '{"Supplier": "Lam-Mclaughlin"}', '2025-03-18');
CALL AddProduct('Lawn Mower', 'Gardening', 98.64, 130.48, 81, 30, '{"Supplier": "White LLC"}', '2024-03-30');
CALL AddProduct('Smartwatch', 'Electronics', 150.75, 184.30, 44, 47, '{"Supplier": "Garcia Group"}', '2025-09-10');
CALL AddProduct('Yoga Mat', 'Sports', 472.71, 650.33, 189, 24, '{"Supplier": "Edwards Ltd"}', '2026-12-18');
CALL AddProduct('Shampoo', 'Beauty', 279.67, 382.01, 133, 12, '{"Supplier": "Roberts"}', '2024-11-15');
CALL AddProduct('Pasta', 'Food', 98.29, 141.17, 7, 33, '{"Supplier": "Turner"}', '2025-10-19');
CALL AddProduct('Mystery Novel', 'Books', 290.09, 417.00, 56, 43, '{"Supplier": "Shea Group"}', '2026-09-10');
CALL AddProduct('Thermometer', 'Healthcare', 467.94, 698.01, 81, 38, '{"Supplier": "Cook-Holt"}', '2024-12-08');
CALL AddProduct('Board Game', 'Toys', 120.06, 150.92, 191, 23, '{"Supplier": "Nelson"}', '2024-06-20');
CALL AddProduct('Yoga Mat', 'Sports', 398.49, 482.28, 96, 13, '{"Supplier": "Carter LLC"}', '2024-03-19');
CALL AddProduct('Mystery Novel', 'Books', 157.42, 215.75, 44, 27, '{"Supplier": "Daniels-Castillo"}', '2026-12-19');
CALL AddProduct('Science Textbook', 'Books', 446.06, 642.84, 11, 11, '{"Supplier": "Mcknight Inc"}', '2026-08-19');
CALL AddProduct('Smartwatch', 'Electronics', 139.28, 201.14, 153, 37, '{"Supplier": "Perez-Wilson"}', '2026-10-25');
CALL AddProduct('Air Filter', 'Automotive', 270.78, 301.31, 68, 20, '{"Supplier": "Welch-Padilla"}', '2024-06-30');
CALL AddProduct('Cereal', 'Food', 119.45, 174.14, 187, 49, '{"Supplier": "Hancock PLC"}', '2024-03-04');
CALL AddProduct('Chair', 'Furniture', 292.49, 324.35, 179, 20, '{"Supplier": "Miller-Berry"}', '2024-02-03');
CALL AddProduct('Foundation', 'Beauty', 479.53, 530.09, 86, 21, '{"Supplier": "Bailey"}', '2025-12-04');
CALL AddProduct('Face Mask', 'Healthcare', 170.31, 218.66, 88, 17, '{"Supplier": "Lee Inc"}', '2024-07-23');
CALL AddProduct('Cookbook', 'Books', 143.01, 163.58, 117, 34, '{"Supplier": "Ortiz"}', '2026-10-04');
CALL AddProduct('Smartwatch', 'Electronics', 51.78, 58.95, 124, 10, '{"Supplier": "Rivera PLC"}', '2024-06-22');
CALL AddProduct('Smartphone', 'Electronics', 252.87, 296.93, 70, 33, '{"Supplier": "Murphy PLC"}', '2025-03-20');
CALL AddProduct('Cereal', 'Food', 33.26, 46.40, 40, 33, '{"Supplier": "Powell-Weaver"}', '2025-05-04');
CALL AddProduct('Knife Set', 'Kitchen', 80.46, 119.53, 183, 25, '{"Supplier": "Snyder-Anderson"}', '2024-11-27');
CALL AddProduct('Toaster', 'Kitchen', 200.99, 249.10, 107, 35, '{"Supplier": "Kelley-Williams"}', '2026-01-31');
CALL AddProduct('Cricket Bat', 'Sports', 459.17, 668.77, 100, 49, '{"Supplier": "Roth Group"}', '2024-04-04');
CALL AddProduct('Moisturizer', 'Beauty', 200.15, 225.99, 128, 50, '{"Supplier": "Craig-Chandler"}', '2025-05-18');
CALL AddProduct('Smartphone', 'Electronics', 296.17, 437.23, 164, 42, '{"Supplier": "Hardy-Lawson"}', '2025-12-14');
CALL AddProduct('Dumbbells', 'Sports', 422.96, 554.24, 33, 25, '{"Supplier": "Alvarez LLC"}', '2025-01-07');
CALL AddProduct('Shoes', 'Clothing', 31.32, 46.66, 32, 12, '{"Supplier": "Johnson"}', '2024-08-04');
CALL AddProduct('Foundation', 'Beauty', 78.65, 93.65, 200, 47, '{"Supplier": "Garcia"}', '2024-10-14');
CALL AddProduct('Science Textbook', 'Books', 177.74, 229.34, 22, 20, '{"Supplier": "Lee-Campbell"}', '2024-05-03');
CALL AddProduct('Cricket Bat', 'Sports', 176.51, 212.20, 126, 15, '{"Supplier": "Park"}', '2026-07-18');
CALL AddProduct('Toaster', 'Kitchen', 374.37, 541.11, 70, 31, '{"Supplier": "Drake Ltd"}', '2024-10-15');
CALL AddProduct('Face Mask', 'Healthcare', 499.89, 696.51, 197, 18, '{"Supplier": "Roberts-Powers"}', '2024-10-22');
CALL AddProduct('T-Shirt', 'Clothing', 116.31, 170.15, 27, 18, '{"Supplier": "Green PLC"}', '2025-06-26');
CALL AddProduct('Blender', 'Kitchen', 311.81, 388.79, 78, 38, '{"Supplier": "Savage-Camacho"}', '2024-10-10');
CALL AddProduct('Sweater', 'Clothing', 372.40, 471.08, 150, 23, '{"Supplier": "Sanders"}', '2024-09-24');
CALL AddProduct('First Aid Kit', 'Healthcare', 102.07, 117.96, 40, 21, '{"Supplier": "Jackson-Powers"}', '2025-02-16');
CALL AddProduct('Lawn Mower', 'Gardening', 249.01, 332.94, 142, 19, '{"Supplier": "Rich-Watson"}', '2025-07-09');
CALL AddProduct('Flower Pot', 'Gardening', 137.36, 173.08, 131, 32, '{"Supplier": "Chang-Wilson"}', '2025-02-21');
CALL AddProduct('Cookware Set', 'Kitchen', 390.79, 481.71, 10, 47, '{"Supplier": "Sexton Inc"}', '2025-12-11');
CALL AddProduct('Air Filter', 'Automotive', 13.78, 15.68, 114, 17, '{"Supplier": "Thompson-Ramos"}', '2024-10-08');
CALL AddProduct('Smartwatch', 'Electronics', 236.92, 305.27, 200, 43, '{"Supplier": "Robinson"}', '2025-02-13');
CALL AddProduct('Biography', 'Books', 10.53, 15.10, 97, 16, '{"Supplier": "Hoover Group"}', '2024-07-11');
CALL AddProduct('Chips', 'Food', 241.32, 272.14, 14, 40, '{"Supplier": "Campbell-Lowe"}', '2025-07-05');
CALL AddProduct('Smartwatch', 'Electronics', 431.12, 592.31, 141, 47, '{"Supplier": "Mann-Nelson"}', '2024-12-30');
CALL AddProduct('Biography', 'Books', 396.32, 519.77, 37, 23, '{"Supplier": "Martinez"}', '2025-03-24');
CALL AddProduct('Car Battery', 'Automotive', 451.76, 661.37, 128, 15, '{"Supplier": "Kent Ltd"}', '2024-01-01');
CALL AddProduct('Mystery Novel', 'Books', 30.80, 35.14, 106, 28, '{"Supplier": "Hodges-Hardin"}', '2024-01-24');
CALL AddProduct('Flower Pot', 'Gardening', 389.76, 497.61, 27, 34, '{"Supplier": "Mckinney-Dixon"}', '2026-03-28');
CALL AddProduct('Tire', 'Automotive', 408.42, 557.84, 9, 46, '{"Supplier": "Roberts Inc"}', '2024-11-10');
CALL AddProduct('Jacket', 'Clothing', 292.40, 360.26, 46, 15, '{"Supplier": "Aguilar Inc"}', '2024-06-22');
CALL AddProduct('Fantasy Book', 'Books', 149.41, 183.42, 198, 11, '{"Supplier": "Short-Lopez"}', '2024-01-07');
CALL AddProduct('Motor Oil', 'Automotive', 399.63, 589.83, 156, 38, '{"Supplier": "Simmons"}', '2025-06-02');
CALL AddProduct('Football', 'Sports', 123.65, 180.47, 97, 33, '{"Supplier": "Bolton"}', '2026-04-19');
CALL AddProduct('First Aid Kit', 'Healthcare', 281.78, 422.46, 162, 47, '{"Supplier": "Wood-Huang"}', '2025-01-12');
CALL AddProduct('Moisturizer', 'Beauty', 409.27, 585.55, 125, 32, '{"Supplier": "Lopez LLC"}', '2025-01-31');
CALL AddProduct('Smartwatch', 'Electronics', 163.79, 237.95, 190, 36, '{"Supplier": "Blackwell-Gill"}', '2026-09-26');
CALL AddProduct('Smartphone', 'Electronics', 285.33, 418.62, 26, 23, '{"Supplier": "Robbins"}', '2026-09-29');
CALL AddProduct('Garden Hose', 'Gardening', 60.95, 71.16, 134, 20, '{"Supplier": "Miller-Smith"}', '2024-12-09');
CALL AddProduct('Cereal', 'Food', 259.32, 286.96, 51, 39, '{"Supplier": "Chan"}', '2024-11-04');
CALL AddProduct('Puzzle', 'Toys', 331.80, 465.96, 37, 45, '{"Supplier": "Graham-Reynolds"}', '2024-10-30');
CALL AddProduct('Fantasy Book', 'Books', 146.08, 213.20, 80, 47, '{"Supplier": "Cantu"}', '2024-01-17');
CALL AddProduct('Chocolates', 'Food', 46.87, 57.59, 87, 47, '{"Supplier": "Garrison Ltd"}', '2025-09-28');
CALL AddProduct('Dumbbells', 'Sports', 165.49, 189.11, 54, 30, '{"Supplier": "Anderson Group"}', '2026-11-30');
CALL AddProduct('Cookbook', 'Books', 207.39, 237.60, 175, 45, '{"Supplier": "Anderson"}', '2024-12-25');
CALL AddProduct('Jeans', 'Clothing', 190.87, 219.57, 178, 26, '{"Supplier": "Kim-Rodriguez"}', '2026-05-21');
CALL AddProduct('Car Wax', 'Automotive', 118.45, 162.85, 38, 14, '{"Supplier": "Parker-Goodman"}', '2024-04-20');
CALL AddProduct('Cookies', 'Food', 88.21, 108.54, 146, 14, '{"Supplier": "Lopez"}', '2024-04-02');
CALL AddProduct('Chips', 'Food', 287.91, 355.98, 138, 17, '{"Supplier": "Davis"}', '2024-06-25');
CALL AddProduct('Chocolates', 'Food', 18.65, 21.25, 66, 12, '{"Supplier": "Stewart"}', '2024-06-22');
CALL AddProduct('Football', 'Sports', 117.77, 176.09, 128, 24, '{"Supplier": "Morrison Ltd"}', '2025-07-30');
CALL AddProduct('Pasta', 'Food', 202.13, 251.71, 42, 12, '{"Supplier": "Sanchez-Bell"}', '2025-03-16');
CALL AddProduct('Board Game', 'Toys', 492.54, 732.35, 35, 28, '{"Supplier": "Mccoy"}', '2024-09-05');
CALL AddProduct('Cereal', 'Food', 461.95, 602.22, 123, 15, '{"Supplier": "Fischer LLC"}', '2025-08-01');
CALL AddProduct('Yoga Mat', 'Sports', 476.23, 683.00, 162, 41, '{"Supplier": "Woods"}', '2024-09-21');
CALL AddProduct('Microwave', 'Kitchen', 361.20, 440.85, 155, 34, '{"Supplier": "Smith"}', '2025-05-23');
CALL AddProduct('Face Mask', 'Healthcare', 26.64, 37.10, 132, 13, '{"Supplier": "Wallace"}', '2025-12-11');
CALL AddProduct('Tire', 'Automotive', 91.35, 121.10, 75, 13, '{"Supplier": "Ross"}', '2024-06-17');
CALL AddProduct('Microwave', 'Kitchen', 467.65, 645.45, 189, 15, '{"Supplier": "Orr-Mckenzie"}', '2025-08-15');
CALL AddProduct('Smartphone', 'Electronics', 179.42, 202.85, 76, 38, '{"Supplier": "Medina LLC"}', '2024-06-19');
CALL AddProduct('Cricket Bat', 'Sports', 142.46, 175.22, 26, 27, '{"Supplier": "Cole"}', '2025-10-26');
CALL AddProduct('Air Filter', 'Automotive', 75.62, 110.54, 131, 44, '{"Supplier": "Hanna"}', '2026-12-24');
CALL AddProduct('Blood Pressure Monitor', 'Healthcare', 310.87, 404.31, 74, 25, '{"Supplier": "Rodriguez Group"}', '2024-05-24');
CALL AddProduct('Cookware Set', 'Kitchen', 331.43, 433.17, 6, 16, '{"Supplier": "Thornton"}', '2026-03-17');
CALL AddProduct('Cricket Bat', 'Sports', 340.63, 497.99, 158, 31, '{"Supplier": "Winters"}', '2026-03-06');
CALL AddProduct('Doll', 'Toys', 483.22, 707.61, 49, 42, '{"Supplier": "Clark"}', '2025-02-23');
CALL AddProduct('Biography', 'Books', 306.49, 403.31, 165, 26, '{"Supplier": "Cochran Ltd"}', '2026-12-22');
CALL AddProduct('Foundation', 'Beauty', 408.08, 565.16, 151, 45, '{"Supplier": "Smith LLC"}', '2025-06-11');
CALL AddProduct('Shampoo', 'Beauty', 94.71, 137.66, 187, 20, '{"Supplier": "Moody-Stevenson"}', '2025-11-30');
CALL AddProduct('Biography', 'Books', 47.06, 60.52, 144, 45, '{"Supplier": "Byrd"}', '2026-06-10');
CALL AddProduct('Shovel', 'Gardening', 197.95, 252.01, 174, 18, '{"Supplier": "Dudley Ltd"}', '2024-01-17');
CALL AddProduct('Mystery Novel', 'Books', 316.80, 456.85, 48, 25, '{"Supplier": "Ball Inc"}', '2024-08-09');
CALL AddProduct('Sofa', 'Furniture', 160.72, 238.36, 57, 27, '{"Supplier": "Wood"}', '2026-02-03');
CALL AddProduct('Jeans', 'Clothing', 79.24, 87.93, 154, 22, '{"Supplier": "Ferrell Inc"}', '2026-04-02');
CALL AddProduct('Puzzle', 'Toys', 397.15, 495.37, 78, 37, '{"Supplier": "Scott"}', '2025-05-08');
CALL AddProduct('Knife Set', 'Kitchen', 413.77, 490.59, 13, 17, '{"Supplier": "Cooke-Collins"}', '2025-04-21');
CALL AddProduct('T-Shirt', 'Clothing', 173.21, 223.04, 76, 33, '{"Supplier": "Mendoza"}', '2026-07-25');
CALL AddProduct('T-Shirt', 'Clothing', 425.08, 527.03, 154, 16, '{"Supplier": "Jenkins and Sons"}', '2024-09-29');
CALL AddProduct('Vitamin C', 'Healthcare', 413.16, 602.56, 174, 29, '{"Supplier": "Stafford"}', '2025-10-16');
CALL AddProduct('Football', 'Sports', 473.83, 524.00, 42, 18, '{"Supplier": "Robertson-Suarez"}', '2026-08-26');
CALL AddProduct('Wardrobe', 'Furniture', 266.76, 326.01, 138, 24, '{"Supplier": "Murphy-Wise"}', '2024-04-30');
CALL AddProduct('Car Battery', 'Automotive', 374.90, 436.20, 115, 20, '{"Supplier": "Roman Inc"}', '2025-02-17');
CALL AddProduct('Sofa', 'Furniture', 301.10, 362.15, 123, 18, '{"Supplier": "Day Ltd"}', '2024-05-15');
CALL AddProduct('Face Mask', 'Healthcare', 416.78, 478.80, 181, 17, '{"Supplier": "Obrien"}', '2024-04-05');
CALL AddProduct('Garden Hose', 'Gardening', 373.81, 462.01, 122, 34, '{"Supplier": "Jacobson-Dean"}', '2025-11-11');
CALL AddProduct('Lawn Mower', 'Gardening', 254.66, 304.10, 107, 15, '{"Supplier": "Wagner"}', '2025-04-17');
CALL AddProduct('Tablet', 'Electronics', 428.31, 588.17, 179, 28, '{"Supplier": "Smith"}', '2025-09-24');
CALL AddProduct('Mystery Novel', 'Books', 307.26, 417.47, 188, 22, '{"Supplier": "Goodwin-Sampson"}', '2025-07-29');


use demo_erp;
INSERT INTO `sales` (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(70, 20, '2021-01-03', 9, 4251.16, 'Debit Card'),
(109, 31, '2021-01-04', 6, 748.54, 'Credit Card'),
(118, 16, '2021-01-05', 6, 1525.00, 'Online Payment'),
(153, 286, '2021-01-06', 8, 2059.32, 'Cash'),
(266, 250, '2021-01-07', 1, 207.73, 'Cash'),
(416, 261, '2021-01-08', 8, 1438.19, 'Cash'),
(313, 121, '2021-01-09', 3, 635.36, 'Credit Card'),
(261, 19, '2021-01-10', 4, 1081.78, 'Credit Card'),
(221, 142, '2021-01-11', 4, 604.49, 'Debit Card'),
(373, 272, '2021-01-12', 5, 1366.78, 'Debit Card'),
(384, 151, '2021-01-13', 2, 388.37, 'Online Payment'),
(59, 185, '2021-01-14', 1, 134.35, 'Credit Card'),
(185, 264, '2021-01-15', 6, 2709.19, 'Debit Card'),
(201, 218, '2021-01-16', 6, 2568.43, 'Debit Card'),
(262, 180, '2021-01-17', 3, 1344.04, 'Online Payment'),
(400, 233, '2021-01-18', 2, 520.55, 'Online Payment'),
(178, 178, '2021-01-19', 1, 48.04, 'Cash'),
(356, 108, '2021-01-20', 3, 542.62, 'Debit Card'),
(113, 199, '2021-01-21', 1, 387.64, 'Credit Card'),
(91, 240, '2021-01-22', 7, 3201.02, 'Cash'),
(255, 11, '2021-01-23', 9, 2804.47, 'Debit Card'),
(148, 45, '2021-01-24', 8, 3774.67, 'Cash'),
(343, 273, '2021-01-25', 8, 1319.36, 'Cash'),
(264, 294, '2021-01-26', 5, 453.30, 'Credit Card'),
(120, 206, '2021-01-27', 1, 27.22, 'Online Payment'),
(5, 164, '2021-01-28', 8, 626.78, 'Online Payment'),
(490, 256, '2021-01-29', 1, 218.38, 'Online Payment'),
(362, 77, '2021-01-30', 3, 809.67, 'Debit Card'),
(394, 269, '2021-01-31', 8, 1721.97, 'Online Payment'),
(459, 182, '2021-02-01', 2, 728.78, 'Debit Card'),
(403, 176, '2021-02-02', 4, 1990.18, 'Credit Card'),
(289, 138, '2021-02-03', 1, 54.86, 'Debit Card'),
(171, 5, '2021-02-04', 4, 920.47, 'Debit Card'),
(252, 49, '2021-02-05', 2, 714.17, 'Credit Card'),
(173, 19, '2021-02-06', 10, 2367.43, 'Online Payment'),
(403, 103, '2021-02-07', 4, 1821.54, 'Credit Card'),
(134, 278, '2021-02-08', 5, 1976.97, 'Debit Card'),
(192, 15, '2021-02-09', 3, 825.51, 'Debit Card'),
(16, 284, '2021-02-10', 7, 377.97, 'Debit Card'),
(129, 244, '2021-02-11', 9, 761.05, 'Online Payment');





use demo_erp;

INSERT INTO `sales` (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`)
VALUES
(252, 153, '2021-02-12', 3, 366.53, 'Debit Card'),
(136, 161, '2021-02-13', 7, 895.33, 'Credit Card'),
(31, 153, '2021-02-14', 8, 416.57, 'Online Payment'),
(5, 33, '2021-02-15', 3, 888.18, 'Cash'),
(243, 100, '2021-02-16', 8, 2033.61, 'Debit Card'),
(148, 102, '2021-02-17', 3, 1007.93, 'Debit Card'),
(423, 153, '2021-02-18', 8, 3924.05, 'Cash'),
(499, 171, '2021-02-19', 6, 1072.08, 'Online Payment'),
(431, 52, '2021-02-20', 5, 1728.57, 'Debit Card'),
(478, 77, '2021-02-21', 7, 2447.64, 'Cash'),
(111, 216, '2021-02-22', 6, 924.02, 'Online Payment'),
(416, 253, '2021-02-23', 1, 125.55, 'Online Payment'),
(498, 273, '2021-02-24', 1, 194.09, 'Credit Card'),
(471, 122, '2021-02-25', 4, 923.99, 'Credit Card'),
(472, 216, '2021-02-26', 5, 1760.70, 'Credit Card'),
(264, 98, '2021-02-27', 1, 246.41, 'Credit Card'),
(405, 270, '2021-02-28', 7, 1310.50, 'Debit Card'),
(56, 127, '2021-03-01', 6, 631.20, 'Debit Card'),
(7, 137, '2021-03-02', 3, 224.24, 'Credit Card'),
(279, 45, '2021-03-03', 10, 2056.68, 'Debit Card'),
(235, 138, '2021-03-04', 8, 3908.46, 'Credit Card'),
(433, 80, '2021-03-05', 7, 471.28, 'Debit Card'),
(385, 32, '2021-03-06', 6, 361.48, 'Debit Card'),
(296, 27, '2021-03-07', 3, 749.23, 'Online Payment'),
(200, 198, '2021-03-08', 9, 195.86, 'Debit Card'),
(239, 263, '2021-03-09', 4, 955.35, 'Cash'),
(440, 176, '2021-03-10', 1, 372.91, 'Debit Card'),
(182, 264, '2021-03-11', 9, 3476.55, 'Online Payment'),
(362, 99, '2021-03-12', 5, 242.45, 'Debit Card'),
(62, 248, '2021-03-13', 7, 2931.92, 'Cash'),
(367, 166, '2021-03-14', 2, 481.70, 'Cash'),
(377, 106, '2021-03-15', 2, 822.65, 'Online Payment'),
(319, 184, '2021-03-16', 7, 1531.79, 'Cash'),
(410, 9, '2021-03-17', 5, 866.62, 'Debit Card'),
(136, 28, '2021-03-18', 9, 589.64, 'Credit Card'),
(137, 239, '2021-03-19', 3, 1408.73, 'Online Payment'),
(148, 185, '2021-03-20', 2, 627.68, 'Cash'),
(306, 125, '2021-03-21', 6, 1071.93, 'Online Payment'),
(250, 289, '2021-03-22', 3, 1343.25, 'Debit Card'),
(198, 216, '2021-03-23', 1, 479.24, 'Credit Card'),
(344, 33, '2021-03-24', 8, 3091.95, 'Online Payment'),
(393, 237, '2021-03-25', 1, 114.50, 'Online Payment'),
(80, 75, '2021-03-26', 5, 1664.16, 'Credit Card'),
(344, 272, '2021-03-27', 6, 2003.29, 'Cash'),
(12, 57, '2021-03-28', 5, 2361.71, 'Online Payment'),
(138, 6, '2021-03-29', 7, 3396.61, 'Cash'),
(281, 179, '2021-03-30', 4, 1196.59, 'Online Payment'),
(88, 180, '2021-03-31', 5, 237.60, 'Cash'),
(183, 279, '2021-04-01', 9, 917.10, 'Debit Card'),
(86, 153, '2021-04-02', 1, 197.49, 'Credit Card'),
(221, 125, '2021-04-03', 6, 2839.16, 'Credit Card'),
(248, 285, '2021-04-04', 3, 1133.20, 'Credit Card'),
(488, 194, '2021-04-05', 3, 1399.09, 'Cash'),
(473, 180, '2021-04-06', 8, 2507.94, 'Online Payment');


INSERT INTO `sales` (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES
    (446,169,'2021-04-07',2,164.83,'Online Payment'),
    (111,44,'2021-04-08',1,272.16,'Online Payment'),
    (403,212,'2021-04-09',9,1117.31,'Online Payment'),
    (432,86,'2021-04-10',6,751.79,'Cash'),
    (472,225,'2021-04-11',3,745.29,'Cash'),
    (176,2,'2021-04-12',7,2377.13,'Cash'),
    (97,47,'2021-04-13',2,863.03,'Cash'),
    (497,293,'2021-04-14',3,976.63,'Online Payment'),
    (392,106,'2021-04-15',4,921.91,'Debit Card'),
    (299,250,'2021-04-16',5,1999.58,'Credit Card'),
    (34,25,'2021-04-17',9,1928.07,'Online Payment'),
    (255,90,'2021-04-18',6,2905.27,'Debit Card'),
    (276,199,'2021-04-19',3,889.00,'Cash'),
    (247,134,'2021-04-20',9,2836.30,'Credit Card'),
    (356,61,'2021-04-21',2,582.59,'Online Payment'),
    (403,90,'2021-04-22',7,97.62,'Credit Card'),
    (424,70,'2021-04-23',2,789.69,'Debit Card'),
    (28,224,'2021-04-24',7,3216.21,'Cash'),
    (454,72,'2021-04-25',2,582.17,'Credit Card'),
    (326,96,'2021-04-26',5,1073.98,'Debit Card'),
    (438,74,'2021-04-27',6,2354.16,'Debit Card'),
    (194,37,'2021-04-28',4,1392.03,'Online Payment'),
    (282,243,'2021-04-29',1,478.32,'Credit Card'),
    (453,231,'2021-04-30',1,295.28,'Online Payment'),
    (115,239,'2021-05-01',8,1012.48,'Debit Card'),
    (375,152,'2021-05-02',9,1788.99,'Online Payment'),
    (173,193,'2021-05-03',10,2189.64,'Cash'),
    (103,114,'2021-05-04',1,25.38,'Credit Card'),
    (178,240,'2021-05-05',8,2337.49,'Online Payment'),
    (258,164,'2021-05-06',3,541.63,'Debit Card'),
    (324,61,'2021-05-07',10,3470.13,'Online Payment'),
    (222,213,'2021-05-08',4,1105.06,'Debit Card'),
    (470,86,'2021-05-09',2,943.68,'Cash'),
    (183,279,'2021-05-10',5,1150.27,'Cash'),
    (101,143,'2021-05-11',2,466.44,'Credit Card'),
    (122,116,'2021-05-12',10,2235.41,'Cash'),
    (371,149,'2021-05-13',1,67.50,'Credit Card'),
    (139,34,'2021-05-14',5,1848.75,'Online Payment'),
    (121,77,'2021-05-15',8,560.53,'Cash'),
    (439,30,'2021-05-16',3,797.16,'Online Payment'),
    (18,47,'2021-05-17',5,1499.15,'Credit Card'),
    (223,173,'2021-05-18',4,1969.62,'Cash'),
    (395,93,'2021-05-19',8,2272.45,'Debit Card'),
    (86,72,'2021-05-20',4,1213.27,'Debit Card'),
    (28,296,'2021-05-21',6,2716.12,'Credit Card'),
    (275,119,'2021-05-22',4,1443.40,'Online Payment'),
    (171,19,'2021-05-23',1,160.20,'Online Payment'),
    (98,106,'2021-05-24',6,1150.54,'Cash'),
    (450,133,'2021-05-25',1,372.56,'Cash'),
    (484,20,'2021-05-26',10,1969.75,'Cash');


INSERT INTO Sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`)
VALUES
(372, 63, '2021-05-27', 7, 1293.94, 'Debit Card'),
(289, 114, '2021-05-28', 4, 192.30, 'Debit Card'),
(248, 293, '2021-05-29', 10, 3339.31, 'Credit Card'),
(232, 118, '2021-05-30', 5, 75.41, 'Debit Card'),
(65, 298, '2021-05-31', 10, 872.61, 'Cash'),
(467, 176, '2021-06-01', 7, 527.39, 'Online Payment'),
(111, 296, '2021-06-02', 10, 3848.85, 'Debit Card'),
(442, 224, '2021-06-03', 9, 2746.17, 'Credit Card'),
(240, 164, '2021-06-04', 7, 2310.59, 'Debit Card'),
(298, 278, '2021-06-05', 5, 1521.32, 'Online Payment'),
(113, 162, '2021-06-06', 7, 767.54, 'Online Payment'),
(498, 241, '2021-06-07', 1, 489.52, 'Debit Card'),
(64, 74, '2021-06-08', 2, 894.70, 'Cash'),
(262, 295, '2021-06-09', 1, 401.57, 'Cash'),
(72, 10, '2021-06-10', 1, 499.03, 'Debit Card'),
(97, 20, '2021-06-11', 8, 2494.52, 'Debit Card'),
(472, 243, '2021-06-12', 10, 3696.71, 'Debit Card'),
(45, 114, '2021-06-13', 6, 285.87, 'Cash'),
(142, 5, '2021-06-14', 4, 1995.60, 'Debit Card'),
(14, 20, '2021-06-15', 3, 218.41, 'Debit Card'),
(222, 296, '2021-06-16', 5, 951.83, 'Online Payment'),
(495, 114, '2021-06-17', 3, 1068.56, 'Online Payment'),
(335, 282, '2021-06-18', 6, 447.66, 'Credit Card'),
(157, 225, '2021-06-19', 10, 2575.37, 'Cash'),
(330, 269, '2021-06-20', 4, 1402.40, 'Cash'),
(389, 276, '2021-06-21', 3, 1428.58, 'Cash'),
(495, 167, '2021-06-22', 5, 829.24, 'Cash'),
(30, 259, '2021-06-23', 8, 534.33, 'Debit Card'),
(500, 283, '2021-06-24', 5, 711.16, 'Debit Card'),
(102, 285, '2021-06-25', 4, 1836.54, 'Debit Card'),
(295, 121, '2021-06-26', 3, 50.49, 'Debit Card'),
(482, 23, '2021-06-27', 1, 144.32, 'Online Payment'),
(339, 203, '2021-06-28', 8, 609.08, 'Credit Card'),
(440, 38, '2021-06-29', 4, 815.50, 'Credit Card'),
(300, 172, '2021-06-30', 8, 3794.48, 'Credit Card'),
(262, 288, '2021-07-01', 1, 380.51, 'Debit Card'),
(119, 6, '2021-07-02', 6, 1168.25, 'Online Payment'),
(437, 74, '2021-07-03', 6, 2776.79, 'Credit Card'),
(70, 155, '2021-07-04', 9, 1634.75, 'Cash'),
(389, 120, '2021-07-05', 1, 421.20, 'Cash'),
(363, 165, '2021-07-06', 2, 836.93, 'Debit Card'),
(262, 59, '2021-07-07', 9, 4499.63, 'Debit Card'),
(432, 123, '2021-07-08', 9, 4398.92, 'Cash'),
(138, 246, '2021-07-09', 6, 865.65, 'Online Payment'),
(217, 149, '2021-07-10', 2, 192.30, 'Cash'),
(442, 223, '2021-07-11', 2, 843.24, 'Cash'),
(85, 71, '2021-07-12', 1, 95.96, 'Debit Card'),
(296, 66, '2021-07-13', 10, 1179.42, 'Cash'),
(224, 44, '2021-07-14', 7, 1272.45, 'Online Payment'),
(252, 92, '2021-07-15', 4, 1138.36, 'Debit Card');


INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(321, 72, '2021-07-16', 9, 3894.98, 'Online Payment'),
(201, 241, '2021-07-17', 1, 33.21, 'Online Payment'),
(424, 184, '2021-07-18', 6, 2473.09, 'Cash'),
(210, 178, '2021-07-19', 8, 986.50, 'Debit Card'),
(415, 19, '2021-07-20', 9, 1999.64, 'Online Payment'),
(389, 116, '2021-07-21', 4, 203.55, 'Online Payment'),
(188, 117, '2021-07-22', 6, 1540.34, 'Online Payment'),
(72, 177, '2021-07-23', 5, 1730.71, 'Credit Card'),
(394, 224, '2021-07-24', 8, 3706.04, 'Cash'),
(252, 36, '2021-07-25', 1, 398.87, 'Online Payment'),
(328, 184, '2021-07-26', 4, 1588.97, 'Debit Card'),
(458, 50, '2021-07-27', 2, 229.85, 'Debit Card'),
(432, 97, '2021-07-28', 2, 837.11, 'Online Payment'),
(198, 210, '2021-07-29', 5, 1509.16, 'Online Payment'),
(440, 221, '2021-07-30', 3, 581.21, 'Credit Card'),
(267, 153, '2021-07-31', 7, 2376.38, 'Debit Card'),
(355, 288, '2021-08-01', 6, 810.54, 'Online Payment'),
(441, 20, '2021-08-02', 8, 1753.96, 'Cash'),
(377, 115, '2021-08-03', 7, 279.48, 'Cash'),
(55, 63, '2021-08-04', 9, 4084.54, 'Debit Card'),
(76, 102, '2021-08-05', 10, 1593.57, 'Cash'),
(305, 84, '2021-08-06', 2, 310.59, 'Online Payment'),
(162, 258, '2021-08-07', 7, 1839.23, 'Debit Card'),
(70, 279, '2021-08-08', 2, 382.18, 'Debit Card'),
(321, 245, '2021-08-09', 5, 1049.51, 'Cash'),
(175, 213, '2021-08-10', 1, 100.27, 'Debit Card'),
(55, 140, '2021-08-11', 9, 3500.61, 'Online Payment'),
(141, 185, '2021-08-12', 2, 821.76, 'Cash'),
(467, 67, '2021-08-13', 6, 1722.51, 'Debit Card'),
(445, 109, '2021-08-14', 2, 667.20, 'Credit Card'),
(234, 99, '2021-08-15', 3, 849.67, 'Debit Card'),
(167, 120, '2021-08-16', 5, 2091.12, 'Debit Card'),
(350, 271, '2021-08-17', 3, 990.99, 'Debit Card'),
(401, 185, '2021-08-18', 4, 137.80, 'Online Payment'),
(434, 173, '2021-08-19', 5, 1299.00, 'Credit Card'),
(432, 97, '2021-08-20', 8, 2195.14, 'Credit Card'),
(55, 43, '2021-08-21', 9, 3221.45, 'Online Payment'),
(294, 93, '2021-08-22', 1, 72.29, 'Online Payment'),
(82, 283, '2021-08-23', 4, 904.05, 'Cash'),
(100, 7, '2021-08-24', 2, 908.28, 'Cash'),
(299, 236, '2021-08-25', 6, 2985.53, 'Debit Card'),
(351, 158, '2021-08-26', 9, 3606.88, 'Debit Card'),
(169, 203, '2021-08-27', 3, 979.11, 'Credit Card'),
(81, 62, '2021-08-28', 1, 71.62, 'Debit Card'),
(190, 171, '2021-08-29', 5, 218.83, 'Credit Card'),
(18, 109, '2021-08-30', 6, 657.23, 'Online Payment'),
(373, 4, '2021-08-31', 7, 2737.24, 'Cash'),
(434, 72, '2021-09-01', 10, 2997.92, 'Debit Card'),
(37, 163, '2021-09-02', 9, 4494.69, 'Cash'),
(473, 105, '2021-09-03', 1, 229.19, 'Debit Card');



INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES
(198, 293, '2021-09-04', 4, 1156.42, 'Online Payment'),
(201, 248, '2021-09-05', 1, 449.54, 'Debit Card'),
(153, 271, '2021-09-06', 4, 486.66, 'Online Payment'),
(82, 240, '2021-09-07', 2, 873.74, 'Cash'),
(449, 278, '2021-09-08', 6, 2725.26, 'Online Payment'),
(485, 268, '2021-09-09', 2, 913.45, 'Cash'),
(257, 161, '2021-09-10', 9, 3464.72, 'Online Payment'),
(487, 216, '2021-09-11', 8, 1913.09, 'Credit Card'),
(115, 253, '2021-09-12', 8, 1076.68, 'Cash'),
(216, 111, '2021-09-13', 9, 3612.51, 'Online Payment'),
(134, 52, '2021-09-14', 10, 3525.60, 'Credit Card'),
(191, 147, '2021-09-15', 6, 2617.36, 'Debit Card'),
(259, 10, '2021-09-16', 3, 221.21, 'Credit Card'),
(494, 78, '2021-09-17', 5, 1902.56, 'Online Payment'),
(106, 147, '2021-09-18', 8, 3755.97, 'Credit Card'),
(78, 223, '2021-09-19', 2, 996.06, 'Online Payment'),
(328, 94, '2021-09-20', 2, 666.31, 'Online Payment'),
(211, 217, '2021-09-21', 3, 1193.92, 'Cash'),
(205, 205, '2021-09-22', 2, 872.53, 'Cash'),
(287, 277, '2021-09-23', 6, 1424.01, 'Credit Card'),
(139, 295, '2021-09-24', 6, 1979.10, 'Cash'),
(470, 152, '2021-09-25', 7, 3481.22, 'Cash'),
(261, 179, '2021-09-26', 2, 280.77, 'Cash'),
(16, 291, '2021-09-27', 10, 4318.72, 'Cash'),
(449, 229, '2021-09-28', 10, 4290.17, 'Debit Card'),
(431, 267, '2021-09-29', 6, 2025.36, 'Debit Card'),
(245, 161, '2021-09-30', 4, 1421.34, 'Cash'),
(414, 139, '2021-10-01', 8, 1757.01, 'Debit Card'),
(415, 76, '2021-10-02', 4, 1262.96, 'Credit Card'),
(407, 79, '2021-10-03', 8, 1554.05, 'Credit Card'),
(100, 55, '2021-10-04', 2, 307.26, 'Cash'),
(353, 36, '2021-10-05', 10, 2342.55, 'Cash'),
(245, 183, '2021-10-06', 5, 2435.88, 'Cash'),
(265, 156, '2021-10-07', 9, 3119.48, 'Online Payment'),
(132, 15, '2021-10-08', 8, 2279.95, 'Online Payment'),
(346, 181, '2021-10-09', 6, 926.48, 'Online Payment'),
(120, 76, '2021-10-10', 3, 1349.00, 'Online Payment'),
(440, 177, '2021-10-11', 9, 770.23, 'Debit Card'),
(214, 154, '2021-10-12', 6, 555.70, 'Cash'),
(495, 142, '2021-10-13', 1, 482.17, 'Credit Card'),
(48, 186, '2021-10-14', 4, 1370.10, 'Cash'),
(109, 293, '2021-10-15', 4, 1899.41, 'Debit Card'),
(358, 138, '2021-10-16', 4, 562.09, 'Credit Card'),
(209, 231, '2021-10-17', 1, 351.55, 'Debit Card'),
(103, 237, '2021-10-18', 3, 1495.54, 'Debit Card'),
(296, 93, '2021-10-19', 4, 1623.99, 'Debit Card'),
(191, 283, '2021-10-20', 1, 149.59, 'Online Payment'),
(386, 266, '2021-10-21', 6, 2157.18, 'Debit Card'),
(336, 259, '2021-10-22', 9, 737.47, 'Credit Card'),
(105, 227, '2021-10-23', 8, 2332.65, 'Credit Card');



INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(211, 61, '2021-10-24', 3, 1002.11, 'Credit Card'),
(62, 97, '2021-10-25', 2, 73.83, 'Credit Card'),
(346, 45, '2021-10-26', 3, 282.57, 'Debit Card'),
(7, 285, '2021-10-27', 2, 786.50, 'Debit Card'),
(320, 240, '2021-10-28', 4, 480.90, 'Debit Card'),
(195, 294, '2021-10-29', 10, 4793.92, 'Debit Card'),
(206, 174, '2021-10-30', 7, 2310.06, 'Debit Card'),
(11, 109, '2021-10-31', 7, 3056.66, 'Cash'),
(339, 140, '2021-11-01', 2, 187.43, 'Online Payment'),
(223, 255, '2021-11-02', 10, 2840.37, 'Credit Card'),
(283, 179, '2021-11-03', 5, 2387.43, 'Cash'),
(66, 193, '2021-11-04', 1, 66.45, 'Online Payment'),
(126, 96, '2021-11-05', 9, 4127.29, 'Cash'),
(101, 77, '2021-11-06', 6, 833.94, 'Credit Card'),
(407, 44, '2021-11-07', 3, 1200.98, 'Online Payment'),
(490, 109, '2021-11-08', 4, 1892.95, 'Debit Card'),
(150, 38, '2021-11-09', 6, 1658.10, 'Cash'),
(125, 285, '2021-11-10', 10, 4160.96, 'Online Payment'),
(13, 158, '2021-11-11', 10, 521.61, 'Online Payment'),
(308, 40, '2021-11-12', 2, 399.40, 'Credit Card'),
(177, 131, '2021-11-13', 4, 877.35, 'Online Payment'),
(74, 201, '2021-11-14', 5, 941.34, 'Debit Card'),
(401, 216, '2021-11-15', 8, 1433.24, 'Credit Card'),
(287, 17, '2021-11-16', 7, 972.10, 'Credit Card'),
(75, 47, '2021-11-17', 5, 810.36, 'Credit Card'),
(69, 88, '2021-11-18', 2, 737.68, 'Cash'),
(264, 285, '2021-11-19', 8, 3967.77, 'Credit Card'),
(359, 80, '2021-11-20', 1, 398.05, 'Credit Card'),
(424, 123, '2021-11-21', 1, 243.44, 'Debit Card'),
(194, 203, '2021-11-22', 2, 655.67, 'Credit Card'),
(362, 267, '2021-11-23', 10, 3700.60, 'Online Payment'),
(30, 170, '2021-11-24', 7, 2122.03, 'Online Payment'),
(495, 64, '2021-11-25', 1, 399.84, 'Online Payment'),
(119, 180, '2021-11-26', 9, 922.50, 'Credit Card'),
(24, 172, '2021-11-27', 6, 2972.01, 'Online Payment'),
(3, 134, '2021-11-28', 4, 114.20, 'Online Payment'),
(21, 253, '2021-11-29', 7, 3022.83, 'Cash'),
(28, 17, '2021-11-30', 3, 865.06, 'Credit Card'),
(45, 38, '2021-12-01', 9, 2671.36, 'Online Payment'),
(233, 180, '2021-12-02', 1, 268.69, 'Online Payment'),
(31, 283, '2021-12-03', 7, 1273.45, 'Online Payment'),
(62, 54, '2021-12-04', 10, 1864.61, 'Cash'),
(477, 96, '2021-12-05', 6, 863.18, 'Credit Card'),
(427, 229, '2021-12-06', 3, 77.81, 'Debit Card'),
(169, 284, '2021-12-07', 8, 889.65, 'Credit Card'),
(24, 3, '2021-12-08', 9, 4127.86, 'Cash'),
(339, 220, '2021-12-09', 9, 490.52, 'Cash'),
(11, 87, '2021-12-10', 8, 2352.94, 'Online Payment'),
(37, 73, '2021-12-11', 9, 950.15, 'Credit Card'),
(80, 168, '2021-12-12', 7, 3404.72, 'Online Payment'),
(350, 177, '2021-12-13', 10, 843.08, 'Debit Card'),
(208, 37, '2021-12-14', 7, 3421.89, 'Debit Card'),
(24, 180, '2021-12-15', 4, 1186.64, 'Cash'),
(53, 87, '2021-12-16', 10, 1741.85, 'Debit Card'),
(316, 9, '2021-12-17', 7, 1376.05, 'Credit Card'),
(60, 48, '2021-12-18', 2, 75.66, 'Credit Card'),
(141, 269, '2021-12-19', 9, 3290.68, 'Cash'),
(87, 203, '2021-12-20', 7, 878.03, 'Credit Card'),
(311, 254, '2021-12-21', 7, 2642.10, 'Online Payment'),
(404, 99, '2021-12-22', 5, 330.19, 'Debit Card');




INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(477,42,'2021-12-23',6,2665.69,'Debit Card'),
(199,174,'2021-12-24',9,208.39,'Credit Card'),
(244,206,'2021-12-25',6,1716.80,'Online Payment'),
(371,236,'2021-12-26',10,2384.49,'Online Payment'),
(19,288,'2021-12-27',8,2913.82,'Debit Card'),
(375,24,'2021-12-28',10,1369.74,'Online Payment'),
(69,108,'2021-12-29',10,495.66,'Debit Card'),
(420,253,'2021-12-30',6,1177.81,'Online Payment'),
(325,93,'2021-12-31',10,2491.01,'Cash'),
(115,166,'2022-01-01',4,267.00,'Cash'),
(4,168,'2022-01-02',4,898.75,'Online Payment'),
(393,62,'2022-01-03',1,358.54,'Debit Card'),
(479,270,'2022-01-04',10,2609.61,'Credit Card'),
(479,153,'2022-01-05',5,1367.97,'Credit Card'),
(183,26,'2022-01-06',5,1837.43,'Cash'),
(266,12,'2022-01-07',9,885.08,'Cash'),
(370,30,'2022-01-08',5,640.62,'Online Payment'),
(465,45,'2022-01-09',9,1385.64,'Debit Card'),
(48,137,'2022-01-10',9,635.04,'Cash'),
(182,140,'2022-01-11',8,2254.13,'Cash'),
(190,170,'2022-01-12',3,145.99,'Online Payment'),
(278,121,'2022-01-13',6,624.01,'Debit Card'),
(349,42,'2022-01-14',2,156.61,'Debit Card'),
(261,122,'2022-01-15',4,663.12,'Cash'),
(66,222,'2022-01-16',8,704.53,'Online Payment'),
(94,124,'2022-01-17',1,164.41,'Debit Card'),
(324,232,'2022-01-18',5,448.26,'Credit Card'),
(122,57,'2022-01-19',7,2818.57,'Online Payment'),
(122,229,'2022-01-20',7,497.80,'Debit Card'),
(28,9,'2022-01-21',8,2930.88,'Online Payment'),
(146,218,'2022-01-22',10,2189.09,'Online Payment'),
(346,183,'2022-01-23',8,2112.26,'Credit Card'),
(285,228,'2022-01-24',4,1799.02,'Debit Card'),
(232,12,'2022-01-25',9,2922.05,'Online Payment'),
(41,10,'2022-01-26',10,3868.05,'Credit Card'),
(150,144,'2022-01-27',9,2069.22,'Online Payment'),
(359,276,'2022-01-28',9,2943.96,'Credit Card'),
(470,164,'2022-01-29',10,925.65,'Online Payment'),
(259,3,'2022-01-30',6,386.82,'Credit Card'),
(361,104,'2022-01-31',3,1298.38,'Cash'),
(215,111,'2022-02-01',3,859.34,'Cash'),
(201,159,'2022-02-02',6,2122.60,'Credit Card'),
(41,149,'2022-02-03',4,1452.80,'Credit Card'),
(126,136,'2022-02-04',5,732.11,'Debit Card'),
(36,130,'2022-02-05',4,1925.22,'Cash'),
(279,133,'2022-02-06',1,22.88,'Cash'),
(437,169,'2022-02-07',1,42.41,'Credit Card'),
(37,163,'2022-02-08',8,524.92,'Credit Card'),
(485,193,'2022-02-09',1,145.01,'Debit Card'),
(499,68,'2022-02-10',5,397.59,'Online Payment'),
(471,128,'2022-02-11',1,357.66,'Debit Card'),
(97,225,'2022-02-12',7,3241.81,'Online Payment'),
(314,62,'2022-02-13',10,3201.25,'Credit Card'),
(199,88,'2022-02-14',8,1076.49,'Cash'),
(140,173,'2022-02-15',10,2095.23,'Debit Card'),
(2,140,'2022-02-16',2,610.41,'Credit Card'),
(237,90,'2022-02-17',7,2597.28,'Debit Card'),
(64,102,'2022-02-18',5,1344.09,'Credit Card'),
(195,264,'2022-02-19',5,1564.86,'Cash'),
(495,180,'2022-02-20',4,1418.80,'Debit Card');


INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(449, 298, '2022-02-21', 10, 4824.66, 'Debit Card'),
(412, 255, '2022-02-22', 3, 1086.40, 'Credit Card'),
(204, 75, '2022-02-23', 1, 254.65, 'Cash'),
(426, 133, '2022-02-24', 9, 3013.80, 'Debit Card'),
(362, 16, '2022-02-25', 4, 289.09, 'Online Payment'),
(279, 19, '2022-02-26', 2, 407.11, 'Online Payment'),
(493, 49, '2022-02-27', 1, 142.46, 'Cash'),
(495, 50, '2022-02-28', 1, 229.74, 'Debit Card'),
(20, 202, '2022-03-01', 2, 449.93, 'Credit Card'),
(266, 278, '2022-03-02', 2, 443.84, 'Credit Card'),
(45, 100, '2022-03-03', 1, 98.18, 'Debit Card'),
(432, 150, '2022-03-04', 7, 2159.15, 'Online Payment'),
(250, 127, '2022-03-05', 1, 249.42, 'Credit Card'),
(495, 239, '2022-03-06', 1, 461.59, 'Credit Card'),
(365, 162, '2022-03-07', 10, 2757.73, 'Credit Card'),
(30, 268, '2022-03-08', 5, 1016.87, 'Cash'),
(293, 160, '2022-03-09', 4, 910.26, 'Credit Card'),
(191, 155, '2022-03-10', 9, 336.28, 'Cash'),
(442, 64, '2022-03-11', 5, 504.70, 'Cash'),
(56, 198, '2022-03-12', 8, 3255.21, 'Credit Card'),
(140, 69, '2022-03-13', 5, 1955.37, 'Credit Card'),
(343, 54, '2022-03-14', 5, 2102.12, 'Debit Card'),
(230, 234, '2022-03-15', 8, 172.48, 'Debit Card'),
(183, 51, '2022-03-16', 5, 121.52, 'Debit Card'),
(94, 203, '2022-03-17', 2, 621.80, 'Credit Card'),
(185, 108, '2022-03-18', 9, 1197.24, 'Debit Card'),
(261, 153, '2022-03-19', 6, 822.34, 'Credit Card'),
(20, 185, '2022-03-20', 8, 1097.91, 'Online Payment'),
(265, 44, '2022-03-21', 7, 3013.27, 'Debit Card'),
(391, 174, '2022-03-22', 9, 1322.20, 'Credit Card'),
(388, 280, '2022-03-23', 2, 418.19, 'Cash'),
(328, 85, '2022-03-24', 4, 1768.73, 'Cash'),
(349, 178, '2022-03-25', 1, 367.59, 'Cash'),
(478, 61, '2022-03-26', 1, 307.36, 'Debit Card'),
(64, 272, '2022-03-27', 8, 3775.07, 'Online Payment'),
(472, 185, '2022-03-28', 6, 603.35, 'Online Payment'),
(243, 88, '2022-03-29', 4, 425.55, 'Credit Card'),
(393, 297, '2022-03-30', 7, 1701.24, 'Online Payment'),
(139, 42, '2022-03-31', 4, 1869.47, 'Debit Card'),
(107, 178, '2022-04-01', 3, 1390.24, 'Credit Card');


INSERT INTO `sales` (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) VALUES
(56, 153, '2022-04-02', 9, 4082.95, 'Debit Card'),
(186, 12, '2022-04-03', 6, 1526.42, 'Online Payment'),
(215, 94, '2022-04-04', 5, 1998.49, 'Cash'),
(66, 9, '2022-04-05', 2, 674.75, 'Cash'),
(237, 103, '2022-04-06', 8, 3845.17, 'Credit Card'),
(149, 89, '2022-04-07', 9, 2885.42, 'Credit Card'),
(287, 292, '2022-04-08', 5, 816.79, 'Credit Card'),
(200, 189, '2022-04-09', 3, 685.60, 'Cash'),
(499, 247, '2022-04-10', 4, 597.85, 'Credit Card'),
(359, 196, '2022-04-11', 8, 3286.93, 'Online Payment'),
(258, 46, '2022-04-12', 3, 1032.87, 'Cash'),
(449, 268, '2022-04-13', 9, 3967.68, 'Cash'),
(290, 205, '2022-04-14', 5, 1885.97, 'Online Payment'),
(400, 39, '2022-04-15', 8, 3382.91, 'Debit Card'),
(198, 83, '2022-04-16', 6, 2963.76, 'Cash'),
(165, 35, '2022-04-17', 6, 1013.77, 'Debit Card'),
(473, 23, '2022-04-18', 9, 1244.07, 'Online Payment'),
(439, 88, '2022-04-19', 2, 377.29, 'Online Payment'),
(321, 185, '2022-04-20', 7, 2407.10, 'Debit Card'),
(430, 36, '2022-04-21', 3, 543.04, 'Debit Card'),
(324, 186, '2022-04-22', 3, 581.28, 'Debit Card'),
(160, 144, '2022-04-23', 8, 675.69, 'Credit Card'),
(200, 268, '2022-04-24', 4, 1292.30, 'Credit Card'),
(237, 177, '2022-04-25', 3, 587.86, 'Online Payment'),
(240, 100, '2022-04-26', 2, 43.77, 'Credit Card'),
(222, 77, '2022-04-27', 10, 3393.87, 'Online Payment'),
(7, 69, '2022-04-28', 8, 2686.13, 'Debit Card'),
(176, 72, '2022-04-29', 8, 304.87, 'Debit Card'),
(75, 60, '2022-04-30', 10, 1260.76, 'Cash'),
(153, 51, '2022-05-01', 8, 876.91, 'Online Payment'),
(298, 232, '2022-05-02', 8, 3887.11, 'Debit Card'),
(233, 17, '2022-05-03', 1, 196.49, 'Credit Card'),
(141, 287, '2022-05-04', 9, 1154.46, 'Cash'),
(228, 276, '2022-05-05', 6, 194.75, 'Credit Card'),
(90, 177, '2022-05-06', 5, 1523.54, 'Debit Card'),
(1, 285, '2022-05-07', 7, 1387.02, 'Credit Card'),
(376, 214, '2022-05-08', 4, 680.44, 'Debit Card'),
(351, 255, '2022-05-09', 3, 566.73, 'Cash'),
(247, 298, '2022-05-10', 6, 986.59, 'Cash'),
(168, 267, '2022-05-11', 1, 86.71, 'Credit Card'),
(88, 196, '2022-05-12', 1, 204.10, 'Credit Card'),
(195, 216, '2022-05-13', 6, 2404.04, 'Online Payment'),
(141, 52, '2022-05-14', 3, 1152.75, 'Cash'),
(90, 141, '2022-05-15', 1, 137.89, 'Credit Card'),
(107, 102, '2022-05-16', 8, 2021.51, 'Debit Card'),
(499, 219, '2022-05-17', 4, 1423.82, 'Debit Card'),
(351, 204, '2022-05-18', 1, 490.52, 'Debit Card'),
(245, 23, '2022-05-19', 1, 364.67, 'Online Payment'),
(328, 78, '2022-05-20', 4, 95.55, 'Online Payment'),
(422, 97, '2022-05-21', 3, 513.46, 'Cash'),
(301, 152, '2022-05-22', 10, 3192.89, 'Cash'),
(178, 119, '2022-05-23', 5, 188.94, 'Credit Card'),
(88, 230, '2022-05-24', 2, 176.43, 'Debit Card'),
(291, 119, '2022-05-25', 10, 2061.06, 'Debit Card'),
(152, 145, '2022-05-26', 9, 2184.69, 'Online Payment'),
(186, 41, '2022-05-27', 9, 2516.22, 'Debit Card'),
(166, 60, '2022-05-28', 6, 844.72, 'Debit Card'),
(3, 22, '2022-05-29', 4, 410.10, 'Debit Card'),
(117, 212, '2022-05-30', 4, 560.01, 'Credit Card'),
(34, 169, '2022-05-31', 8, 559.04, 'Cash'),
(195, 282, '2022-06-01', 2, 545.12, 'Credit Card'),
(422, 204, '2022-06-02', 1, 11.62, 'Cash'),
(377, 290, '2022-06-03', 5, 2166.98, 'Credit Card'),
(379, 170, '2022-06-04', 9, 1649.15, 'Online Payment'),
(405, 151, '2022-06-05', 9, 2617.63, 'Credit Card');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) VALUES
(407, 201, '2022-06-06', 10, 1243.18, 'Credit Card'),
(43, 133, '2022-06-07', 5, 1606.69, 'Online Payment'),
(325, 132, '2022-06-08', 2, 342.48, 'Cash'),
(150, 28, '2022-06-09', 10, 1461.83, 'Debit Card'),
(338, 284, '2022-06-10', 5, 272.47, 'Credit Card'),
(324, 125, '2022-06-11', 7, 2736.58, 'Credit Card'),
(68, 37, '2022-06-12', 3, 433.43, 'Cash'),
(246, 19, '2022-06-13', 4, 1305.54, 'Cash'),
(392, 153, '2022-06-14', 4, 760.30, 'Debit Card'),
(45, 99, '2022-06-15', 4, 1324.83, 'Credit Card'),
(52, 145, '2022-06-16', 2, 699.00, 'Credit Card'),
(228, 148, '2022-06-17', 3, 409.76, 'Online Payment'),
(129, 267, '2022-06-18', 1, 121.38, 'Debit Card'),
(487, 276, '2022-06-19', 6, 1382.72, 'Online Payment'),
(186, 252, '2022-06-20', 1, 118.79, 'Cash'),
(198, 15, '2022-06-21', 8, 1622.51, 'Debit Card'),
(339, 150, '2022-06-22', 5, 1388.57, 'Credit Card'),
(222, 188, '2022-06-23', 3, 1026.11, 'Debit Card'),
(383, 119, '2022-06-24', 7, 1135.90, 'Cash'),
(235, 227, '2022-06-25', 6, 1119.72, 'Credit Card'),
(19, 64, '2022-06-26', 2, 570.37, 'Cash'),
(45, 27, '2022-06-27', 1, 454.70, 'Debit Card'),
(446, 14, '2022-06-28', 6, 2963.90, 'Online Payment'),
(136, 77, '2022-06-29', 7, 514.62, 'Debit Card'),
(468, 43, '2022-06-30', 5, 2186.84, 'Cash'),
(19, 84, '2022-07-01', 4, 1738.70, 'Cash'),
(156, 260, '2022-07-02', 4, 1804.89, 'Credit Card'),
(116, 33, '2022-07-03', 1, 464.54, 'Credit Card'),
(171, 7, '2022-07-04', 4, 526.03, 'Debit Card'),
(68, 172, '2022-07-05', 7, 1574.12, 'Cash'),
(70, 81, '2022-07-06', 1, 345.96, 'Cash'),
(170, 179, '2022-07-07', 10, 1670.63, 'Online Payment'),
(361, 47, '2022-07-08', 3, 1287.46, 'Debit Card'),
(314, 145, '2022-07-09', 7, 1495.82, 'Debit Card'),
(147, 43, '2022-07-10', 7, 2585.33, 'Debit Card'),
(486, 66, '2022-07-11', 10, 4158.36, 'Credit Card'),
(230, 194, '2022-07-12', 8, 723.61, 'Online Payment'),
(136, 232, '2022-07-13', 4, 193.77, 'Online Payment'),
(379, 233, '2022-07-14', 3, 1387.23, 'Credit Card'),
(180, 254, '2022-07-15', 7, 2577.29, 'Cash'),
(36, 80, '2022-07-16', 7, 255.92, 'Credit Card'),
(255, 44, '2022-07-17', 10, 3576.67, 'Credit Card'),
(271, 279, '2022-07-18', 2, 125.35, 'Credit Card'),
(230, 244, '2022-07-19', 3, 490.44, 'Debit Card'),
(307, 287, '2022-07-20', 2, 418.80, 'Credit Card'),
(318, 109, '2022-07-21', 1, 92.91, 'Cash'),
(411, 275, '2022-07-22', 8, 1290.12, 'Cash'),
(318, 133, '2022-07-23', 6, 1065.66, 'Debit Card'),
(357, 25, '2022-07-24', 2, 487.95, 'Online Payment'),
(105, 203, '2022-07-25', 9, 3644.13, 'Cash'),
(90, 57, '2022-07-26', 8, 295.32, 'Debit Card'),
(302, 122, '2022-07-27', 8, 1793.08, 'Credit Card'),
(356, 11, '2022-07-28', 9, 4392.44, 'Credit Card'),
(236, 10, '2022-07-29', 6, 2728.57, 'Debit Card'),
(93, 213, '2022-07-30', 3, 287.58, 'Credit Card'),
(428, 239, '2022-07-31', 2, 283.29, 'Debit Card'),
(37, 153, '2022-08-01', 4, 229.87, 'Cash'),
(84, 2, '2022-08-02', 4, 1369.84, 'Debit Card'),
(345, 285, '2022-08-03', 1, 374.93, 'Cash'),
(325, 102, '2022-08-04', 10, 1486.91, 'Cash'),
(176, 297, '2022-08-05', 10, 1323.62, 'Debit Card'),
(328, 165, '2022-08-06', 5, 2108.66, 'Online Payment'),
(337, 109, '2022-08-07', 2, 190.89, 'Credit Card'),
(490, 298, '2022-08-08', 6, 1633.84, 'Online Payment'),
(353, 272, '2022-08-09', 6, 1971.21, 'Debit Card'),
(265, 84, '2022-08-10', 5, 1956.23, 'Online Payment'),
(325, 42, '2022-08-11', 6, 2337.93, 'Debit Card'),
(441, 70, '2022-08-12', 10, 3173.89, 'Debit Card'),
(120, 255, '2022-08-13', 5, 2293.56, 'Online Payment'),
(287, 244, '2022-08-14', 9, 927.95, 'Online Payment'),
(441, 78, '2022-08-15', 7, 830.47, 'Online Payment'),
(248, 95, '2022-08-16', 7, 1584.76, 'Debit Card'),
(212, 124, '2022-08-17', 10, 3064.99, 'Online Payment'),
(232, 43, '2022-08-18', 10, 1070.64, 'Credit Card'),
(297, 184, '2022-08-19', 6, 987.73, 'Debit Card');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(316, 123, '2022-08-20', 5, 1710.82, 'Online Payment'),
(126, 121, '2022-08-21', 1, 225.11, 'Credit Card'),
(412, 186, '2022-08-22', 1, 385.04, 'Cash'),
(199, 155, '2022-08-23', 7, 2770.81, 'Cash'),
(98, 25, '2022-08-24', 6, 1446.77, 'Credit Card'),
(246, 82, '2022-08-25', 5, 2430.69, 'Cash'),
(41, 159, '2022-08-26', 7, 2264.93, 'Online Payment'),
(416, 122, '2022-08-27', 7, 3305.12, 'Credit Card'),
(201, 293, '2022-08-28', 2, 946.93, 'Online Payment'),
(271, 73, '2022-08-29', 8, 1663.85, 'Online Payment'),
(439, 47, '2022-08-30', 9, 2351.07, 'Cash'),
(217, 62, '2022-08-31', 2, 20.37, 'Debit Card'),
(478, 93, '2022-09-01', 3, 286.49, 'Debit Card'),
(103, 161, '2022-09-02', 6, 1817.56, 'Cash'),
(302, 186, '2022-09-03', 8, 799.95, 'Online Payment'),
(20, 207, '2022-09-04', 8, 1726.71, 'Debit Card'),
(5, 207, '2022-09-05', 1, 411.65, 'Credit Card'),
(199, 152, '2022-09-06', 8, 1526.95, 'Online Payment'),
(395, 84, '2022-09-07', 8, 1362.19, 'Online Payment'),
(389, 283, '2022-09-08', 10, 4591.12, 'Credit Card'),
(106, 42, '2022-09-09', 8, 1697.27, 'Debit Card'),
(201, 298, '2022-09-10', 1, 70.82, 'Credit Card'),
(93, 244, '2022-09-11', 1, 272.33, 'Debit Card'),
(433, 47, '2022-09-12', 10, 4329.16, 'Credit Card'),
(116, 211, '2022-09-13', 7, 2927.70, 'Debit Card'),
(400, 54, '2022-09-14', 8, 569.90, 'Debit Card'),
(214, 237, '2022-09-15', 3, 1405.86, 'Cash'),
(246, 193, '2022-09-16', 5, 1616.35, 'Online Payment'),
(157, 274, '2022-09-17', 8, 1670.09, 'Cash'),
(468, 244, '2022-09-18', 10, 2001.16, 'Cash'),
(358, 136, '2022-09-19', 3, 36.67, 'Online Payment'),
(314, 181, '2022-09-20', 3, 910.92, 'Online Payment'),
(135, 138, '2022-09-21', 4, 383.07, 'Debit Card'),
(290, 56, '2022-09-22', 4, 1901.82, 'Credit Card'),
(237, 212, '2022-09-23', 10, 4961.57, 'Cash'),
(86, 130, '2022-09-24', 8, 2673.28, 'Debit Card'),
(159, 89, '2022-09-25', 9, 3719.80, 'Credit Card'),
(492, 159, '2022-09-26', 10, 1385.72, 'Debit Card'),
(48, 52, '2022-09-27', 6, 2162.09, 'Online Payment'),
(93, 92, '2022-09-28', 9, 313.60, 'Debit Card'),
(20, 81, '2022-09-29', 3, 818.16, 'Debit Card'),
(241, 197, '2022-09-30', 8, 1105.38, 'Online Payment'),
(302, 256, '2022-10-01', 7, 290.81, 'Cash'),
(258, 263, '2022-10-02', 6, 2790.59, 'Cash'),
(355, 239, '2022-10-03', 7, 2573.51, 'Credit Card'),
(180, 234, '2022-10-04', 10, 2663.69, 'Debit Card'),
(404, 103, '2022-10-05', 4, 543.55, 'Debit Card'),
(59, 57, '2022-10-06', 2, 933.27, 'Online Payment'),
(7, 129, '2022-10-07', 9, 2189.64, 'Cash'),
(97, 230, '2022-10-08', 9, 3547.37, 'Credit Card'),
(163, 269, '2022-10-09', 6, 444.54, 'Online Payment'),
(12, 50, '2022-10-10', 9, 711.79, 'Online Payment'),
(485, 8, '2022-10-11', 10, 1705.99, 'Credit Card'),
(330, 105, '2022-10-12', 7, 694.22, 'Credit Card'),
(209, 292, '2022-10-13', 2, 386.82, 'Debit Card'),
(171, 79, '2022-10-14', 8, 2626.01, 'Cash'),
(67, 213, '2022-10-15', 3, 796.27, 'Debit Card'),
(233, 30, '2022-10-16', 2, 680.77, 'Credit Card'),
(250, 28, '2022-10-17', 10, 3906.78, 'Credit Card'),
(398, 266, '2022-10-18', 5, 850.89, 'Credit Card'),
(383, 73, '2022-10-19', 6, 1310.71, 'Credit Card'),
(428, 100, '2022-10-20', 2, 203.23, 'Cash'),
(239, 112, '2022-10-21', 10, 113.99, 'Cash'),
(307, 186, '2022-10-22', 4, 379.84, 'Online Payment'),
(173, 264, '2022-10-23', 1, 116.68, 'Online Payment'),
(126, 233, '2022-10-24', 8, 3288.81, 'Online Payment'),
(203, 268, '2022-10-25', 9, 3657.01, 'Debit Card'),
(321, 272, '2022-10-26', 9, 2589.91, 'Debit Card'),
(52, 30, '2022-10-27', 1, 434.43, 'Cash'),
(66, 75, '2022-10-28', 1, 67.77, 'Cash'),
(55, 137, '2022-10-29', 10, 3909.68, 'Debit Card'),
(286, 84, '2022-10-30', 3, 515.88, 'Cash'),
(297, 260, '2022-10-31', 6, 2601.28, 'Cash'),
(86, 170, '2022-11-01', 7, 1238.84, 'Cash'),
(259, 110, '2022-11-02', 2, 321.64, 'Debit Card');

INSERT INTO `sales` (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) VALUES 
(224, 223, '2022-11-03', 2, 38.15, 'Online Payment'),
(250, 279, '2022-11-04', 7, 1494.99, 'Credit Card'),
(56, 74, '2022-11-05', 4, 1837.38, 'Debit Card'),
(122, 184, '2022-11-06', 8, 551.72, 'Cash'),
(446, 55, '2022-11-07', 10, 2630.28, 'Online Payment'),
(367, 292, '2022-11-08', 6, 2772.71, 'Online Payment'),
(5, 8, '2022-11-09', 4, 353.01, 'Online Payment'),
(225, 55, '2022-11-10', 4, 1393.94, 'Cash'),
(488, 173, '2022-11-11', 1, 150.33, 'Credit Card'),
(306, 199, '2022-11-12', 9, 364.20, 'Online Payment'),
(497, 96, '2022-11-13', 1, 484.69, 'Online Payment'),
(234, 214, '2022-11-14', 5, 907.43, 'Credit Card'),
(62, 128, '2022-11-15', 6, 1133.49, 'Cash'),
(121, 172, '2022-11-16', 9, 4380.15, 'Debit Card'),
(318, 183, '2022-11-17', 7, 3411.02, 'Cash'),
(222, 60, '2022-11-18', 9, 2689.56, 'Online Payment'),
(354, 112, '2022-11-19', 4, 528.97, 'Debit Card'),
(136, 259, '2022-11-20', 2, 724.56, 'Credit Card'),
(485, 113, '2022-11-21', 2, 698.45, 'Debit Card'),
(368, 114, '2022-11-22', 10, 2023.05, 'Credit Card'),
(100, 282, '2022-11-23', 8, 1661.65, 'Debit Card'),
(279, 213, '2022-11-24', 6, 2764.53, 'Online Payment'),
(262, 109, '2022-11-25', 8, 2218.61, 'Credit Card'),
(495, 122, '2022-11-26', 4, 428.57, 'Online Payment'),
(198, 284, '2022-11-27', 1, 96.34, 'Credit Card'),
(275, 157, '2022-11-28', 8, 641.32, 'Cash'),
(160, 212, '2022-11-29', 5, 748.16, 'Debit Card'),
(255, 105, '2022-11-30', 4, 1029.55, 'Online Payment'),
(398, 297, '2022-12-01', 3, 1093.43, 'Credit Card'),
(264, 261, '2022-12-02', 3, 1380.91, 'Debit Card'),
(344, 154, '2022-12-03', 8, 2994.13, 'Online Payment'),
(36, 297, '2022-12-04', 8, 539.16, 'Debit Card'),
(465, 138, '2022-12-05', 7, 3492.97, 'Debit Card'),
(353, 78, '2022-12-06', 8, 2480.99, 'Credit Card'),
(74, 30, '2022-12-07', 7, 1641.87, 'Cash'),
(356, 86, '2022-12-08', 8, 778.81, 'Debit Card'),
(431, 181, '2022-12-09', 9, 2118.33, 'Online Payment'),
(2, 4, '2022-12-10', 8, 693.44, 'Cash'),
(473, 208, '2022-12-11', 7, 512.68, 'Credit Card'),
(190, 54, '2022-12-12', 6, 2325.70, 'Debit Card'),
(24, 27, '2022-12-13', 4, 515.65, 'Online Payment'),
(393, 156, '2022-12-14', 1, 233.01, 'Cash'),
(78, 11, '2022-12-15', 6, 2612.77, 'Cash'),
(237, 103, '2022-12-16', 4, 1141.39, 'Credit Card'),
(212, 18, '2022-12-17', 6, 1089.25, 'Credit Card'),
(125, 161, '2022-12-18', 3, 111.25, 'Credit Card'),
(282, 77, '2022-12-19', 1, 23.78, 'Cash'),
(208, 123, '2022-12-20', 7, 1080.07, 'Debit Card'),
(129, 29, '2022-12-21', 8, 1765.29, 'Online Payment'),
(371, 208, '2022-12-22', 6, 1124.33, 'Cash'),
(203, 189, '2022-12-23', 2, 937.93, 'Credit Card'),
(298, 240, '2022-12-24', 5, 704.72, 'Online Payment'),
(188, 274, '2022-12-25', 10, 4620.89, 'Cash'),
(398, 221, '2022-12-26', 10, 1864.19, 'Credit Card'),
(373, 219, '2022-12-27', 3, 970.06, 'Online Payment'),
(366, 17, '2022-12-28', 10, 1535.13, 'Debit Card'),
(308, 199, '2022-12-29', 9, 3055.95, 'Credit Card'),
(315, 67, '2022-12-30', 9, 3038.59, 'Credit Card'),
(307, 5, '2022-12-31', 10, 1703.76, 'Credit Card'),
(350, 38, '2023-01-01', 2, 855.20, 'Cash'),
(395, 93, '2023-01-02', 7, 1066.85, 'Cash'),
(376, 19, '2023-01-03', 7, 1907.46, 'Credit Card'),
(186, 59, '2023-01-04', 10, 1738.12, 'Online Payment'),
(345, 102, '2023-01-05', 7, 2508.91, 'Cash'),
(112, 210, '2023-01-06', 4, 63.66, 'Online Payment'),
(225, 281, '2023-01-07', 10, 916.05, 'Cash'),
(401, 208, '2023-01-08', 6, 775.65, 'Credit Card'),
(384, 159, '2023-01-09', 4, 719.69, 'Credit Card'),
(102, 170, '2023-01-10', 1, 49.88, 'Credit Card'),
(216, 208, '2023-01-11', 7, 2476.01, 'Credit Card'),
(377, 37, '2023-01-12', 7, 3429.94, 'Debit Card'),
(24, 86, '2023-01-13', 7, 824.79, 'Online Payment'),
(137, 289, '2023-01-14', 1, 202.84, 'Credit Card'),
(459, 63, '2023-01-15', 6, 896.19, 'Cash'),
(147, 278, '2023-01-16', 1, 150.21, 'Online Payment');


INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(379, 211, '2023-01-17', 2, 160.91, 'Cash'),
(88, 138, '2023-01-18', 9, 3896.20, 'Online Payment'),
(434, 102, '2023-01-19', 4, 837.26, 'Credit Card'),
(75, 269, '2023-01-20', 1, 191.92, 'Online Payment'),
(125, 281, '2023-01-21', 5, 435.44, 'Online Payment'),
(40, 164, '2023-01-22', 6, 345.49, 'Debit Card'),
(485, 156, '2023-01-23', 7, 625.04, 'Debit Card'),
(98, 83, '2023-01-24', 2, 966.86, 'Credit Card'),
(218, 17, '2023-01-25', 9, 3695.21, 'Credit Card'),
(271, 250, '2023-01-26', 5, 81.63, 'Cash'),
(453, 187, '2023-01-27', 6, 226.56, 'Cash'),
(190, 237, '2023-01-28', 6, 195.54, 'Debit Card'),
(321, 1, '2023-01-29', 9, 1398.73, 'Online Payment'),
(165, 50, '2023-01-30', 7, 2387.39, 'Cash'),
(12, 56, '2023-01-31', 7, 1342.11, 'Credit Card'),
(116, 48, '2023-02-01', 9, 2283.71, 'Cash'),
(187, 203, '2023-02-02', 6, 1947.46, 'Debit Card'),
(306, 251, '2023-02-03', 9, 2813.78, 'Online Payment'),
(132, 85, '2023-02-04', 8, 169.09, 'Cash'),
(489, 89, '2023-02-05', 1, 67.04, 'Debit Card'),
(45, 23, '2023-02-06', 3, 365.78, 'Online Payment'),
(349, 28, '2023-02-07', 8, 3094.38, 'Credit Card'),
(59, 235, '2023-02-08', 3, 1368.96, 'Debit Card'),
(300, 4, '2023-02-09', 2, 178.15, 'Cash'),
(164, 184, '2023-02-10', 6, 2069.69, 'Cash'),
(205, 93, '2023-02-11', 3, 1402.08, 'Cash'),
(498, 225, '2023-02-12', 6, 2729.50, 'Online Payment'),
(34, 276, '2023-02-13', 4, 159.25, 'Credit Card'),
(401, 15, '2023-02-14', 2, 136.36, 'Credit Card'),
(337, 39, '2023-02-15', 2, 205.45, 'Debit Card'),
(361, 217, '2023-02-16', 9, 1787.10, 'Cash'),
(252, 242, '2023-02-17', 6, 1184.03, 'Online Payment'),
(472, 261, '2023-02-18', 3, 1375.29, 'Online Payment'),
(228, 256, '2023-02-19', 9, 676.05, 'Debit Card'),
(478, 133, '2023-02-20', 10, 4855.53, 'Debit Card'),
(499, 173, '2023-02-21', 5, 2423.63, 'Online Payment'),
(348, 71, '2023-02-22', 5, 854.40, 'Debit Card'),
(103, 212, '2023-02-23', 3, 460.45, 'Cash'),
(9, 35, '2023-02-24', 3, 492.35, 'Credit Card'),
(296, 21, '2023-02-25', 6, 1853.51, 'Debit Card'),
(286, 207, '2023-02-26', 7, 2738.45, 'Online Payment'),
(19, 122, '2023-02-27', 4, 947.23, 'Cash'),
(335, 55, '2023-02-28', 6, 1536.27, 'Cash'),
(164, 296, '2023-03-01', 6, 124.44, 'Credit Card'),
(368, 285, '2023-03-02', 4, 1895.56, 'Debit Card'),
(401, 128, '2023-03-03', 7, 130.52, 'Cash'),
(358, 55, '2023-03-04', 2, 194.31, 'Credit Card'),
(382, 238, '2023-03-05', 5, 2165.78, 'Credit Card'),
(486, 10, '2023-03-06', 5, 2234.06, 'Cash'),
(48, 281, '2023-03-07', 6, 1030.45, 'Debit Card'),
(193, 214, '2023-03-08', 2, 77.98, 'Online Payment'),
(499, 65, '2023-03-09', 2, 331.42, 'Debit Card'),
(282, 72, '2023-03-10', 1, 482.64, 'Credit Card'),
(189, 186, '2023-03-11', 7, 2278.14, 'Credit Card'),
(445, 189, '2023-03-12', 3, 1116.35, 'Credit Card'),
(221, 94, '2023-03-13', 7, 1959.13, 'Debit Card'),
(389, 60, '2023-03-14', 5, 1501.41, 'Cash'),
(486, 149, '2023-03-15', 9, 1218.98, 'Cash'),
(74, 120, '2023-03-16', 2, 220.57, 'Credit Card'),
(12, 212, '2023-03-17', 8, 3197.02, 'Credit Card'),
(145, 189, '2023-03-18', 8, 840.71, 'Debit Card'),
(456, 78, '2023-03-19', 3, 547.80, 'Cash'),
(240, 25, '2023-03-20', 9, 3961.21, 'Credit Card'),
(379, 25, '2023-03-21', 2, 868.48, 'Credit Card'),
(440, 17, '2023-03-22', 9, 653.95, 'Credit Card'),
(261, 86, '2023-03-23', 3, 1360.19, 'Credit Card'),
(255, 127, '2023-03-24', 4, 1862.87, 'Online Payment'),
(477, 190, '2023-03-25', 3, 561.47, 'Cash'),
(490, 102, '2023-03-26', 4, 1669.39, 'Credit Card'),
(34, 163, '2023-03-27', 1, 36.11, 'Cash'),
(423, 252, '2023-03-28', 6, 2519.35, 'Debit Card'),
(210, 282, '2023-03-29', 9, 3482.85, 'Debit Card'),
(309, 107, '2023-03-30', 5, 268.54, 'Credit Card'),
(203, 277, '2023-03-31', 8, 958.85, 'Debit Card'),
(37, 38, '2023-04-01', 4, 789.71, 'Credit Card');

INSERT INTO sales (ProductID, CustomerID, Date, Quantity, TotalAmount, PaymentMethod) VALUES 
(188, 147, '2023-04-02', 9, 4208.11, 'Debit Card'),
(53, 44, '2023-04-03', 5, 2268.09, 'Credit Card'),
(319, 228, '2023-04-04', 10, 4200.13, 'Online Payment'),
(210, 206, '2023-04-05', 4, 1889.01, 'Debit Card'),
(198, 186, '2023-04-06', 7, 201.80, 'Online Payment'),
(223, 184, '2023-04-07', 4, 1567.49, 'Debit Card'),
(474, 109, '2023-04-08', 3, 1038.64, 'Debit Card'),
(86, 139, '2023-04-09', 5, 137.78, 'Cash'),
(478, 55, '2023-04-10', 6, 134.07, 'Online Payment'),
(483, 10, '2023-04-11', 8, 3452.74, 'Debit Card'),
(19, 244, '2023-04-12', 2, 524.97, 'Credit Card'),
(426, 167, '2023-04-13', 1, 349.25, 'Debit Card'),
(314, 286, '2023-04-14', 5, 1219.31, 'Online Payment'),
(139, 231, '2023-04-15', 7, 3139.19, 'Cash'),
(427, 234, '2023-04-16', 8, 835.49, 'Debit Card'),
(204, 270, '2023-04-17', 2, 324.78, 'Debit Card'),
(478, 100, '2023-04-18', 3, 721.74, 'Online Payment'),
(7, 107, '2023-04-19', 2, 373.82, 'Credit Card'),
(286, 103, '2023-04-20', 4, 1797.57, 'Online Payment'),
(424, 78, '2023-04-21', 1, 497.22, 'Online Payment'),
(319, 205, '2023-04-22', 2, 841.76, 'Debit Card'),
(278, 200, '2023-04-23', 7, 3467.45, 'Online Payment'),
(228, 248, '2023-04-24', 7, 2548.85, 'Cash'),
(109, 154, '2023-04-25', 7, 325.72, 'Cash'),
(220, 199, '2023-04-26', 4, 1656.78, 'Credit Card'),
(167, 192, '2023-04-27', 8, 2817.81, 'Debit Card'),
(75, 263, '2023-04-28', 5, 2166.32, 'Cash'),
(186, 205, '2023-04-29', 8, 207.07, 'Credit Card'),
(294, 228, '2023-04-30', 6, 1328.77, 'Debit Card'),
(141, 13, '2023-05-01', 9, 1099.09, 'Debit Card'),
(437, 56, '2023-05-02', 4, 959.45, 'Credit Card'),
(361, 28, '2023-05-03', 8, 2472.06, 'Online Payment'),
(53, 158, '2023-05-04', 3, 1120.17, 'Online Payment'),
(463, 20, '2023-05-05', 9, 4413.46, 'Debit Card'),
(411, 188, '2023-05-06', 4, 118.11, 'Online Payment'),
(185, 152, '2023-05-07', 5, 1155.52, 'Debit Card'),
(30, 22, '2023-05-08', 5, 1604.64, 'Online Payment'),
(5, 187, '2023-05-09', 8, 2509.71, 'Online Payment'),
(404, 51, '2023-05-10', 9, 4207.40, 'Online Payment'),
(152, 90, '2023-05-11', 5, 2301.34, 'Online Payment'),
(212, 15, '2023-05-12', 2, 906.89, 'Credit Card'),
(157, 254, '2023-05-13', 4, 1032.12, 'Cash'),
(24, 154, '2023-05-14', 8, 2355.64, 'Cash'),
(389, 68, '2023-05-15', 9, 1927.92, 'Cash'),
(102, 224, '2023-05-16', 2, 571.41, 'Cash'),
(206, 141, '2023-05-17', 1, 39.54, 'Debit Card'),
(112, 97, '2023-05-18', 7, 2928.23, 'Credit Card'),
(316, 41, '2023-05-19', 10, 3179.08, 'Online Payment'),
(372, 205, '2023-05-20', 2, 830.40, 'Credit Card'),
(136, 2, '2023-05-21', 8, 3454.73, 'Debit Card'),
(490, 13, '2023-05-22', 1, 416.11, 'Cash'),
(400, 283, '2023-05-23', 8, 1036.02, 'Online Payment'),
(493, 278, '2023-05-24', 6, 216.07, 'Credit Card'),
(344, 228, '2023-05-25', 4, 1337.24, 'Credit Card'),
(43, 209, '2023-05-26', 7, 791.78, 'Online Payment'),
(65, 268, '2023-05-27', 1, 245.45, 'Online Payment'),
(484, 227, '2023-05-28', 6, 1431.94, 'Online Payment'),
(236, 234, '2023-05-29', 9, 1007.41, 'Debit Card'),
(199, 1, '2023-05-30', 9, 1562.99, 'Credit Card'),
(2, 79, '2023-05-31', 7, 2556.67, 'Debit Card'),
(153, 30, '2023-06-01', 10, 4287.05, 'Debit Card'),
(419, 163, '2023-06-02', 7, 2950.86, 'Credit Card'),
(463, 112, '2023-06-03', 4, 617.44, 'Online Payment'),
(206, 253, '2023-06-04', 4, 1344.44, 'Credit Card'),
(430, 14, '2023-06-05', 6, 2716.44, 'Online Payment'),
(257, 236, '2023-06-06', 1, 479.54, 'Online Payment'),
(430, 63, '2023-06-07', 10, 1006.96, 'Debit Card'),
(474, 103, '2023-06-08', 2, 318.99, 'Online Payment'),
(426, 165, '2023-06-09', 5, 986.19, 'Credit Card'),
(350, 195, '2023-06-10', 3, 280.49, 'Debit Card'),
(112, 279, '2023-06-11', 10, 3484.23, 'Online Payment'),
(383, 38, '2023-06-12', 1, 444.27, 'Credit Card'),
(412, 22, '2023-06-13', 2, 629.97, 'Online Payment'),
(419, 249, '2023-06-14', 3, 628.76, 'Credit Card'),
(306, 154, '2023-06-15', 1, 328.41, 'Credit Card'),
(286, 99, '2023-06-16', 7, 2695.02, 'Debit Card');

INSERT INTO `sales` (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES
(283, 29, '2023-06-17', 2, 454.17, 'Online Payment'),
(100, 263, '2023-06-18', 1, 174.61, 'Cash'),
(479, 82, '2023-06-19', 8, 110.66, 'Online Payment'),
(298, 268, '2023-06-20', 4, 1180.96, 'Online Payment'),
(171, 285, '2023-06-21', 9, 1534.94, 'Online Payment'),
(382, 113, '2023-06-22', 1, 133.19, 'Online Payment'),
(328, 96, '2023-06-23', 5, 1370.54, 'Online Payment'),
(279, 56, '2023-06-24', 7, 2894.98, 'Debit Card'),
(215, 114, '2023-06-25', 5, 2195.97, 'Credit Card'),
(473, 256, '2023-06-26', 3, 78.32, 'Debit Card'),
(318, 187, '2023-06-27', 8, 481.03, 'Debit Card'),
(232, 31, '2023-06-28', 7, 1776.21, 'Cash'),
(276, 222, '2023-06-29', 6, 1091.30, 'Cash'),
(221, 251, '2023-06-30', 10, 625.32, 'Credit Card'),
(234, 245, '2023-07-01', 3, 1422.41, 'Online Payment'),
(164, 92, '2023-07-02', 10, 1712.16, 'Debit Card'),
(415, 230, '2023-07-03', 8, 518.24, 'Debit Card'),
(229, 226, '2023-07-04', 1, 307.60, 'Cash'),
(498, 5, '2023-07-05', 9, 3555.56, 'Cash'),
(275, 47, '2023-07-06', 5, 595.30, 'Debit Card'),
(428, 22, '2023-07-07', 2, 293.05, 'Credit Card'),
(86, 175, '2023-07-08', 8, 1405.17, 'Debit Card'),
(175, 241, '2023-07-09', 4, 341.34, 'Online Payment'),
(2, 290, '2023-07-10', 4, 593.86, 'Debit Card'),
(379, 32, '2023-07-11', 9, 2887.51, 'Online Payment'),
(499, 215, '2023-07-12', 9, 3801.03, 'Cash'),
(377, 296, '2023-07-13', 7, 1694.43, 'Credit Card'),
(42, 113, '2023-07-14', 6, 1040.94, 'Credit Card'),
(363, 86, '2023-07-15', 8, 2817.16, 'Online Payment'),
(121, 174, '2023-07-16', 3, 584.34, 'Online Payment'),
(402, 213, '2023-07-17', 5, 642.38, 'Cash'),
(422, 294, '2023-07-18', 3, 1346.66, 'Credit Card'),
(145, 246, '2023-07-19', 5, 868.07, 'Online Payment'),
(412, 256, '2023-07-20', 5, 590.68, 'Debit Card'),
(497, 104, '2023-07-21', 7, 2002.24, 'Cash'),
(17, 147, '2023-07-22', 1, 293.30, 'Debit Card'),
(359, 204, '2023-07-23', 8, 3997.37, 'Online Payment'),
(344, 280, '2023-07-24', 3, 1243.04, 'Cash'),
(358, 289, '2023-07-25', 4, 1708.16, 'Online Payment'),
(90, 1, '2023-07-26', 10, 507.52, 'Cash'),
(456, 203, '2023-07-27', 1, 207.12, 'Online Payment'),
(103, 165, '2023-07-28', 8, 3440.40, 'Credit Card'),
(81, 85, '2023-07-29', 3, 1179.83, 'Credit Card'),
(294, 114, '2023-07-30', 3, 255.57, 'Cash'),
(380, 146, '2023-07-31', 6, 1175.72, 'Debit Card'),
(285, 57, '2023-08-01', 3, 978.88, 'Debit Card'),
(245, 59, '2023-08-02', 7, 1637.35, 'Online Payment'),
(290, 132, '2023-08-03', 6, 1578.27, 'Online Payment'),
(182, 168, '2023-08-04', 4, 1868.88, 'Credit Card'),
(137, 274, '2023-08-05', 8, 3492.79, 'Cash'),
(107, 4, '2023-08-06', 2, 347.31, 'Debit Card'),
(69, 218, '2023-08-07', 7, 2417.60, 'Debit Card'),
(72, 143, '2023-08-08', 8, 3648.97, 'Online Payment'),
(291, 46, '2023-08-09', 7, 2538.50, 'Debit Card'),
(21, 294, '2023-08-10', 9, 607.19, 'Debit Card'),
(14, 174, '2023-08-11', 4, 1712.55, 'Debit Card'),
(330, 234, '2023-08-12', 2, 269.04, 'Credit Card'),
(308, 220, '2023-08-13', 5, 475.52, 'Debit Card'),
(278, 291, '2023-08-14', 6, 2697.33, 'Online Payment');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) VALUES
(240, 206, '2023-08-15', 2, 226.08, 'Online Payment'),
(216, 145, '2023-08-16', 6, 1931.01, 'Credit Card'),
(336, 90, '2023-08-17', 10, 1437.64, 'Debit Card'),
(159, 207, '2023-08-18', 7, 2461.92, 'Cash'),
(367, 144, '2023-08-19', 9, 433.79, 'Credit Card'),
(443, 72, '2023-08-20', 6, 517.97, 'Cash'),
(230, 138, '2023-08-21', 6, 2681.94, 'Online Payment'),
(134, 258, '2023-08-22', 5, 1789.02, 'Online Payment'),
(80, 120, '2023-08-23', 6, 2376.82, 'Cash'),
(233, 15, '2023-08-24', 5, 879.32, 'Online Payment'),
(205, 35, '2023-08-25', 10, 3110.35, 'Debit Card'),
(12, 149, '2023-08-26', 2, 31.38, 'Credit Card'),
(176, 165, '2023-08-27', 2, 985.08, 'Credit Card'),
(348, 107, '2023-08-28', 9, 4116.72, 'Debit Card'),
(118, 152, '2023-08-29', 3, 1432.25, 'Credit Card'),
(105, 205, '2023-08-30', 10, 2989.14, 'Credit Card'),
(170, 73, '2023-08-31', 4, 1417.37, 'Online Payment'),
(438, 101, '2023-09-01', 4, 500.20, 'Online Payment'),
(167, 169, '2023-09-02', 7, 207.25, 'Cash'),
(373, 186, '2023-09-03', 4, 192.37, 'Credit Card'),
(203, 12, '2023-09-04', 1, 206.90, 'Debit Card'),
(195, 249, '2023-09-05', 6, 2931.64, 'Cash'),
(216, 25, '2023-09-06', 6, 498.87, 'Credit Card'),
(20, 250, '2023-09-07', 4, 1195.74, 'Online Payment'),
(428, 2, '2023-09-08', 8, 514.93, 'Credit Card'),
(335, 114, '2023-09-09', 9, 3938.90, 'Online Payment'),
(432, 209, '2023-09-10', 4, 1828.34, 'Debit Card'),
(445, 113, '2023-09-11', 4, 639.16, 'Credit Card'),
(119, 41, '2023-09-12', 3, 610.01, 'Debit Card'),
(45, 253, '2023-09-13', 2, 485.38, 'Online Payment'),
(437, 160, '2023-09-14', 2, 988.31, 'Cash'),
(175, 73, '2023-09-15', 10, 4329.66, 'Credit Card'),
(135, 138, '2023-09-16', 10, 1444.47, 'Credit Card'),
(130, 63, '2023-09-17', 10, 2756.23, 'Debit Card'),
(474, 178, '2023-09-18', 10, 2400.43, 'Credit Card'),
(357, 24, '2023-09-19', 9, 1368.20, 'Cash'),
(8, 194, '2023-09-20', 4, 1111.82, 'Cash'),
(88, 174, '2023-09-21', 10, 4692.03, 'Debit Card'),
(293, 94, '2023-09-22', 3, 479.59, 'Debit Card'),
(318, 48, '2023-09-23', 10, 987.19, 'Credit Card');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(34, 127, '2023-09-24', 10, 2052.68, 'Credit Card'),
(349, 246, '2023-09-25', 9, 1826.46, 'Online Payment'),
(402, 172, '2023-09-26', 9, 4185.41, 'Cash'),
(169, 145, '2023-09-27', 4, 544.15, 'Online Payment'),
(205, 290, '2023-09-28', 8, 193.38, 'Debit Card'),
(486, 26, '2023-09-29', 6, 515.93, 'Online Payment');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(98, 171, '2023-09-30', 10, 4528.66, 'Debit Card'),
(109, 200, '2023-10-01', 8, 464.80, 'Credit Card'),
(37, 128, '2023-10-02', 6, 583.71, 'Debit Card'),
(476, 286, '2023-10-03', 8, 2868.37, 'Debit Card'),
(75, 253, '2023-10-04', 5, 1472.83, 'Online Payment'),
(206, 282, '2023-10-05', 4, 1935.76, 'Credit Card'),
(422, 265, '2023-10-06', 7, 2134.32, 'Online Payment'),
(471, 72, '2023-10-07', 7, 1711.26, 'Credit Card'),
(477, 108, '2023-10-08', 7, 3339.74, 'Cash'),
(156, 215, '2023-10-09', 1, 88.68, 'Online Payment'),
(344, 15, '2023-10-10', 1, 35.08, 'Debit Card'),
(53, 274, '2023-10-11', 4, 161.70, 'Cash'),
(279, 156, '2023-10-12', 2, 456.30, 'Online Payment'),
(76, 272, '2023-10-13', 5, 2213.35, 'Debit Card'),
(376, 101, '2023-10-14', 9, 1797.69, 'Cash'),
(467, 27, '2023-10-15', 1, 80.46, 'Credit Card'),
(7, 3, '2023-10-16', 6, 717.63, 'Debit Card'),
(214, 238, '2023-10-17', 3, 1032.87, 'Online Payment'),
(265, 8, '2023-10-18', 7, 1024.61, 'Online Payment'),
(350, 151, '2023-10-19', 5, 2438.80, 'Cash'),
(84, 93, '2023-10-20', 10, 3125.38, 'Debit Card'),
(398, 85, '2023-10-21', 8, 3415.68, 'Cash'),
(21, 66, '2023-10-22', 5, 1568.10, 'Online Payment'),
(24, 14, '2023-10-23', 7, 3151.90, 'Credit Card'),
(319, 158, '2023-10-24', 6, 1957.71, 'Online Payment'),
(155, 143, '2023-10-25', 6, 1679.34, 'Credit Card'),
(212, 202, '2023-10-26', 1, 35.81, 'Credit Card'),
(400, 44, '2023-10-27', 1, 389.36, 'Online Payment'),
(371, 12, '2023-10-28', 5, 940.33, 'Debit Card'),
(177, 102, '2023-10-29', 2, 967.75, 'Cash'),
(102, 58, '2023-10-30', 7, 1735.18, 'Credit Card'),
(426, 251, '2023-10-31', 2, 141.66, 'Cash'),
(105, 290, '2023-11-01', 2, 953.23, 'Online Payment'),
(365, 149, '2023-11-02', 9, 3492.23, 'Debit Card'),
(4, 37, '2023-11-03', 9, 2786.75, 'Credit Card'),
(205, 76, '2023-11-04', 3, 227.10, 'Cash'),
(230, 108, '2023-11-05', 10, 1889.41, 'Credit Card'),
(55, 36, '2023-11-06', 6, 1829.13, 'Credit Card'),
(70, 250, '2023-11-07', 2, 252.41, 'Debit Card'),
(56, 191, '2023-11-08', 2, 813.39, 'Debit Card'),
(209, 197, '2023-11-09', 9, 1967.76, 'Debit Card'),
(274, 65, '2023-11-10', 10, 3674.73, 'Cash'),
(349, 247, '2023-11-11', 8, 859.01, 'Online Payment'),
(146, 119, '2023-11-12', 2, 509.27, 'Debit Card'),
(236, 234, '2023-11-13', 2, 350.43, 'Cash'),
(244, 78, '2023-11-14', 10, 185.51, 'Debit Card'),
(451, 61, '2023-11-15', 6, 1806.19, 'Cash'),
(109, 217, '2023-11-16', 8, 1786.70, 'Debit Card'),
(72, 26, '2023-11-17', 1, 475.89, 'Credit Card'),
(261, 104, '2023-11-18', 1, 25.90, 'Online Payment'),
(412, 49, '2023-11-19', 1, 71.28, 'Credit Card'),
(368, 60, '2023-11-20', 9, 2320.31, 'Cash'),
(186, 118, '2023-11-21', 4, 907.25, 'Online Payment'),
(379, 154, '2023-11-22', 7, 651.73, 'Cash');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) VALUES
(164, 205, '2023-11-23', 9, 773.82, 'Debit Card'),
(138, 21, '2023-11-24', 4, 1877.33, 'Debit Card'),
(303, 60, '2023-11-25', 1, 309.33, 'Debit Card'),
(437, 237, '2023-11-26', 1, 35.52, 'Debit Card'),
(178, 49, '2023-11-27', 1, 482.44, 'Debit Card'),
(141, 94, '2023-11-28', 6, 2855.63, 'Debit Card'),
(412, 157, '2023-11-29', 3, 184.86, 'Online Payment'),
(416, 99, '2023-11-30', 8, 357.68, 'Cash'),
(49, 97, '2023-12-01', 4, 413.78, 'Cash'),
(44, 70, '2023-12-02', 6, 2484.46, 'Credit Card'),
(147, 122, '2023-12-03', 2, 657.09, 'Online Payment'),
(41, 47, '2023-12-04', 10, 3959.77, 'Cash'),
(375, 76, '2023-12-05', 1, 51.79, 'Debit Card'),
(307, 286, '2023-12-06', 7, 2498.99, 'Online Payment'),
(442, 257, '2023-12-07', 7, 2654.39, 'Online Payment'),
(261, 289, '2023-12-08', 7, 1646.45, 'Online Payment'),
(300, 16, '2023-12-09', 2, 709.25, 'Online Payment'),
(451, 8, '2023-12-10', 2, 944.13, 'Cash'),
(292, 227, '2023-12-11', 8, 2978.32, 'Credit Card'),
(427, 82, '2023-12-12', 1, 36.02, 'Credit Card'),
(498, 196, '2023-12-13', 2, 612.70, 'Debit Card'),
(113, 172, '2023-12-14', 3, 1142.46, 'Debit Card'),
(14, 255, '2023-12-15', 3, 544.75, 'Online Payment'),
(18, 182, '2023-12-16', 9, 116.94, 'Debit Card'),
(346, 286, '2023-12-17', 6, 1255.34, 'Debit Card'),
(328, 253, '2023-12-18', 3, 752.85, 'Debit Card'),
(330, 167, '2023-12-19', 8, 2868.16, 'Cash'),
(440, 292, '2023-12-20', 3, 1366.94, 'Debit Card'),
(393, 56, '2023-12-21', 1, 275.85, 'Cash'),
(132, 77, '2023-12-22', 9, 1106.46, 'Debit Card'),
(93, 173, '2023-12-23', 7, 3117.72, 'Online Payment'),
(205, 241, '2023-12-24', 5, 505.91, 'Cash'),
(120, 141, '2023-12-25', 1, 228.15, 'Cash'),
(404, 215, '2023-12-26', 7, 1520.29, 'Debit Card'),
(391, 149, '2023-12-27', 5, 1781.11, 'Credit Card'),
(4, 156, '2023-12-28', 5, 499.54, 'Credit Card'),
(467, 255, '2023-12-29', 10, 4155.40, 'Online Payment'),
(125, 90, '2023-12-30', 4, 560.80, 'Online Payment'),
(93, 64, '2023-12-31', 4, 76.70, 'Cash'),
(373, 56, '2024-01-01', 6, 174.47, 'Online Payment'),
(212, 229, '2024-01-02', 1, 287.43, 'Debit Card'),
(246, 178, '2024-01-03', 3, 1348.89, 'Credit Card'),
(370, 250, '2024-01-04', 7, 1662.06, 'Credit Card'),
(212, 84, '2024-01-05', 3, 1107.12, 'Debit Card'),
(336, 116, '2024-01-06', 8, 778.26, 'Cash'),
(313, 284, '2024-01-07', 8, 898.58, 'Debit Card'),
(309, 60, '2024-01-08', 2, 598.62, 'Credit Card'),
(214, 210, '2024-01-09', 9, 1450.18, 'Cash'),
(365, 92, '2024-01-10', 4, 1935.06, 'Cash'),
(223, 230, '2024-01-11', 5, 307.44, 'Online Payment'),
(222, 176, '2024-01-12', 2, 446.94, 'Credit Card'),
(147, 276, '2024-01-13', 10, 326.35, 'Credit Card'),
(262, 190, '2024-01-14', 10, 1975.22, 'Credit Card'),
(311, 142, '2024-01-15', 1, 93.59, 'Credit Card'),
(383, 122, '2024-01-16', 2, 532.84, 'Debit Card'),
(59, 135, '2024-01-17', 9, 3032.76, 'Cash'),
(59, 294, '2024-01-18', 10, 4973.09, 'Cash'),
(424, 197, '2024-01-19', 9, 4229.67, 'Credit Card'),
(232, 79, '2024-01-20', 3, 1208.09, 'Credit Card'),
(371, 16, '2024-01-21', 8, 3332.07, 'Credit Card'),
(313, 115, '2024-01-22', 8, 1926.63, 'Cash'),
(487, 11, '2024-01-23', 8, 1161.37, 'Credit Card'),
(113, 75, '2024-01-24', 3, 418.13, 'Credit Card'),
(385, 57, '2024-01-25', 5, 1118.60, 'Debit Card'),
(445, 30, '2024-01-26', 9, 1943.96, 'Debit Card');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(271, 129, '2024-01-27', 7, 1397.90, 'Debit Card'),
(113, 231, '2024-01-28', 2, 491.54, 'Online Payment'),
(1, 195, '2024-01-29', 9, 445.59, 'Debit Card'),
(365, 198, '2024-01-30', 9, 1514.05, 'Online Payment'),
(471, 28, '2024-01-31', 5, 190.00, 'Debit Card'),
(302, 261, '2024-02-01', 5, 368.69, 'Credit Card'),
(175, 201, '2024-02-02', 5, 205.19, 'Credit Card'),
(292, 263, '2024-02-03', 3, 265.50, 'Credit Card'),
(66, 134, '2024-02-04', 8, 473.20, 'Cash'),
(335, 118, '2024-02-05', 3, 1282.98, 'Cash'),
(484, 191, '2024-02-06', 8, 1444.11, 'Credit Card'),
(217, 146, '2024-02-07', 7, 2757.67, 'Debit Card'),
(217, 47, '2024-02-08', 9, 1240.63, 'Cash'),
(119, 262, '2024-02-09', 1, 65.88, 'Cash'),
(72, 127, '2024-02-10', 7, 2264.04, 'Credit Card'),
(248, 191, '2024-02-11', 6, 1369.82, 'Debit Card'),
(145, 198, '2024-02-12', 9, 329.72, 'Credit Card'),
(438, 30, '2024-02-13', 6, 853.77, 'Debit Card'),
(135, 136, '2024-02-14', 9, 982.04, 'Credit Card'),
(388, 225, '2024-02-15', 9, 3693.15, 'Debit Card'),
(86, 7, '2024-02-16', 6, 735.70, 'Credit Card'),
(403, 186, '2024-02-17', 9, 128.41, 'Debit Card'),
(111, 46, '2024-02-18', 8, 2650.61, 'Online Payment'),
(206, 274, '2024-02-19', 5, 215.46, 'Debit Card'),
(278, 91, '2024-02-20', 6, 488.80, 'Online Payment'),
(130, 108, '2024-02-21', 4, 478.30, 'Online Payment'),
(471, 34, '2024-02-22', 3, 810.96, 'Debit Card'),
(318, 234, '2024-02-23', 2, 464.93, 'Credit Card'),
(374, 197, '2024-02-24', 9, 3041.85, 'Online Payment'),
(48, 103, '2024-02-25', 1, 55.94, 'Credit Card'),
(297, 260, '2024-02-26', 7, 1659.05, 'Credit Card'),
(416, 47, '2024-02-27', 5, 801.60, 'Online Payment'),
(492, 181, '2024-02-28', 3, 931.71, 'Credit Card'),
(140, 64, '2024-02-29', 6, 1033.50, 'Debit Card'),
(499, 149, '2024-03-01', 8, 1804.61, 'Cash'),
(440, 20, '2024-03-02', 5, 1903.88, 'Cash'),
(352, 139, '2024-03-03', 2, 388.07, 'Debit Card'),
(264, 13, '2024-03-04', 10, 3568.69, 'Debit Card'),
(314, 285, '2024-03-05', 3, 385.14, 'Credit Card'),
(453, 64, '2024-03-06', 5, 1994.12, 'Credit Card'),
(384, 168, '2024-03-07', 8, 548.95, 'Debit Card'),
(20, 33, '2024-03-08', 8, 3824.57, 'Cash'),
(168, 235, '2024-03-09', 9, 1552.13, 'Online Payment'),
(385, 28, '2024-03-10', 7, 1859.62, 'Debit Card'),
(267, 142, '2024-03-11', 6, 316.08, 'Online Payment');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) VALUES
(229, 31, '2024-03-12', 9, 1534.66, 'Cash'),
(229, 154, '2024-03-13', 6, 1336.72, 'Debit Card'),
(493, 43, '2024-03-14', 9, 3019.00, 'Cash'),
(115, 96, '2024-03-15', 9, 1188.36, 'Cash'),
(355, 17, '2024-03-16', 2, 141.83, 'Debit Card'),
(315, 247, '2024-03-17', 7, 2568.88, 'Online Payment'),
(414, 200, '2024-03-18', 3, 1318.18, 'Credit Card'),
(357, 292, '2024-03-19', 2, 370.47, 'Cash'),
(307, 106, '2024-03-20', 10, 3208.32, 'Debit Card'),
(94, 79, '2024-03-21', 6, 1908.55, 'Cash'),
(382, 200, '2024-03-22', 4, 892.89, 'Debit Card'),
(331, 237, '2024-03-23', 7, 297.67, 'Online Payment'),
(422, 55, '2024-03-24', 7, 3304.40, 'Debit Card'),
(478, 95, '2024-03-25', 1, 256.66, 'Debit Card'),
(28, 166, '2024-03-26', 2, 272.06, 'Credit Card'),
(103, 165, '2024-03-27', 7, 3160.79, 'Online Payment'),
(160, 185, '2024-03-28', 10, 1414.69, 'Online Payment'),
(371, 125, '2024-03-29', 1, 428.69, 'Online Payment'),
(126, 292, '2024-03-30', 5, 1027.29, 'Cash'),
(348, 214, '2024-03-31', 1, 52.35, 'Credit Card'),
(423, 278, '2024-04-01', 3, 1128.45, 'Online Payment'),
(13, 18, '2024-04-02', 10, 2309.02, 'Debit Card'),
(283, 208, '2024-04-03', 7, 2173.38, 'Credit Card'),
(278, 267, '2024-04-04', 6, 570.02, 'Credit Card'),
(362, 31, '2024-04-05', 9, 2496.29, 'Credit Card'),
(72, 110, '2024-04-06', 7, 236.98, 'Debit Card'),
(279, 195, '2024-04-07', 1, 51.19, 'Online Payment'),
(401, 198, '2024-04-08', 6, 1958.85, 'Cash'),
(376, 79, '2024-04-09', 9, 3847.60, 'Cash'),
(75, 5, '2024-04-10', 5, 2035.60, 'Credit Card'),
(67, 250, '2024-04-11', 9, 2404.96, 'Debit Card'),
(316, 229, '2024-04-12', 8, 1029.72, 'Cash'),
(169, 134, '2024-04-13', 6, 2236.56, 'Online Payment'),
(290, 26, '2024-04-14', 8, 1830.06, 'Cash'),
(339, 208, '2024-04-15', 1, 58.72, 'Cash'),
(473, 57, '2024-04-16', 9, 2140.34, 'Online Payment'),
(20, 208, '2024-04-17', 5, 2459.06, 'Online Payment'),
(162, 208, '2024-04-18', 6, 776.11, 'Debit Card'),
(402, 2, '2024-04-19', 2, 292.57, 'Cash'),
(309, 50, '2024-04-20', 6, 808.49, 'Cash'),
(252, 20, '2024-04-21', 4, 707.31, 'Credit Card'),
(49, 166, '2024-04-22', 3, 1271.35, 'Debit Card'),
(370, 265, '2024-04-23', 7, 1710.21, 'Debit Card'),
(16, 142, '2024-04-24', 9, 4485.86, 'Credit Card'),
(470, 232, '2024-04-25', 10, 1395.42, 'Debit Card'),
(198, 147, '2024-04-26', 6, 1209.61, 'Debit Card'),
(203, 226, '2024-04-27', 2, 55.11, 'Debit Card'),
(442, 288, '2024-04-28', 4, 996.31, 'Cash'),
(400, 7, '2024-04-29', 7, 2294.00, 'Online Payment'),
(121, 114, '2024-04-30', 9, 3115.14, 'Cash'),
(282, 194, '2024-05-01', 6, 74.09, 'Online Payment'),
(265, 80, '2024-05-02', 2, 813.39, 'Credit Card'),
(241, 28, '2024-05-03', 2, 351.23, 'Online Payment'),
(335, 269, '2024-05-04', 8, 3404.76, 'Online Payment'),
(36, 21, '2024-05-05', 6, 827.37, 'Debit Card');

INSERT INTO sales (`ProductID`,`CustomerID`,`Date`,`Quantity`,`TotalAmount`,`PaymentMethod`) 
VALUES 
(373,239,'2024-05-06',7,1908.29,'Online Payment'),
(380,35,'2024-05-07',3,810.27,'Credit Card'),
(150,73,'2024-05-08',1,121.58,'Debit Card'),
(365,113,'2024-05-09',2,640.36,'Credit Card'),
(2,127,'2024-05-10',5,394.52,'Debit Card'),
(140,83,'2024-05-11',5,218.21,'Online Payment'),
(477,125,'2024-05-12',3,1314.22,'Cash'),
(471,220,'2024-05-13',3,488.28,'Credit Card'),
(499,276,'2024-05-14',10,4879.42,'Credit Card'),
(126,205,'2024-05-15',6,1695.56,'Online Payment'),
(214,56,'2024-05-16',10,4654.83,'Cash'),
(148,216,'2024-05-17',7,2959.60,'Cash'),
(470,240,'2024-05-18',3,693.75,'Cash'),
(423,97,'2024-05-19',5,1573.38,'Credit Card'),
(433,231,'2024-05-20',10,1173.05,'Credit Card'),
(472,57,'2024-05-21',1,329.22,'Credit Card'),
(194,92,'2024-05-22',7,2223.90,'Credit Card'),
(48,182,'2024-05-23',7,2336.06,'Online Payment'),
(12,238,'2024-05-24',2,999.21,'Debit Card'),
(186,257,'2024-05-25',10,1183.78,'Cash'),
(500,40,'2024-05-26',4,1726.61,'Credit Card'),
(245,75,'2024-05-27',8,902.04,'Credit Card'),
(254,56,'2024-05-28',6,1198.64,'Cash'),
(438,131,'2024-05-29',7,3022.91,'Cash'),
(487,59,'2024-05-30',2,673.15,'Cash'),
(3,184,'2024-05-31',5,1332.39,'Online Payment'),
(30,15,'2024-06-01',5,683.60,'Online Payment'),
(232,255,'2024-06-02',8,876.14,'Cash'),
(454,174,'2024-06-03',4,1276.24,'Online Payment'),
(11,79,'2024-06-04',4,933.47,'Cash'),
(166,154,'2024-06-05',10,1951.54,'Credit Card'),
(237,163,'2024-06-06',8,3008.44,'Credit Card'),
(493,8,'2024-06-07',3,427.21,'Cash'),
(430,270,'2024-06-08',1,138.16,'Credit Card'),
(297,242,'2024-06-09',6,1339.78,'Credit Card'),
(138,115,'2024-06-10',6,2003.01,'Debit Card'),
(41,201,'2024-06-11',1,455.09,'Online Payment'),
(192,97,'2024-06-12',2,224.30,'Credit Card'),
(140,91,'2024-06-13',8,1800.91,'Online Payment'),
(415,55,'2024-06-14',2,290.73,'Cash'),
(206,194,'2024-06-15',1,199.14,'Credit Card'),
(442,159,'2024-06-16',5,2148.79,'Online Payment'),
(440,236,'2024-06-17',10,1814.74,'Credit Card'),
(147,143,'2024-06-18',4,590.04,'Credit Card'),
(214,265,'2024-06-19',9,1864.05,'Cash'),
(191,192,'2024-06-20',8,516.91,'Online Payment'),
(233,113,'2024-06-21',10,2839.94,'Credit Card'),
(303,54,'2024-06-22',7,2279.94,'Credit Card'),
(450,147,'2024-06-23',8,401.36,'Debit Card'),
(195,150,'2024-06-24',4,1582.97,'Cash');

INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES
(159, 13, '2024-06-25', 3, 1432.80, 'Cash'),
(233, 164, '2024-06-26', 10, 3455.07, 'Online Payment'),
(191, 252, '2024-06-27', 7, 145.88, 'Debit Card'),
(250, 76, '2024-06-28', 10, 1110.55, 'Credit Card'),
(498, 43, '2024-06-29', 3, 185.89, 'Credit Card'),
(74, 196, '2024-06-30', 9, 2025.83, 'Debit Card'),
(164, 291, '2024-07-01', 1, 267.53, 'Credit Card'),
(19, 42, '2024-07-02', 8, 3109.60, 'Online Payment'),
(362, 213, '2024-07-03', 3, 1458.20, 'Online Payment'),
(188, 135, '2024-07-04', 2, 334.79, 'Cash'),
(427, 245, '2024-07-05', 5, 2083.36, 'Online Payment'),
(115, 137, '2024-07-06', 8, 3521.02, 'Debit Card'),
(207, 30, '2024-07-06', 8, 1243.04, 'Cash'),
(54, 99, '2024-07-07', 10, 3302.59, 'Cash'),
(480, 73, '2024-07-08', 2, 294.47, 'Credit Card'),
(480, 175, '2024-07-09', 8, 3183.44, 'Cash'),
(399, 16, '2024-07-10', 8, 2216.30, 'Cash'),
(341, 196, '2024-07-11', 8, 2514.52, 'Cash'),
(172, 5, '2024-07-12', 9, 339.53, 'Cash'),
(47, 264, '2024-07-13', 4, 309.22, 'Debit Card'),
(22, 40, '2024-07-14', 2, 553.20, 'Credit Card'),
(83, 175, '2024-07-15', 3, 1069.35, 'Credit Card'),
(260, 152, '2024-07-16', 9, 3378.14, 'Debit Card'),
(466, 273, '2024-07-17', 4, 1939.51, 'Credit Card'),
(323, 18, '2024-07-18', 8, 873.51, 'Debit Card'),
(381, 68, '2024-07-19', 7, 216.14, 'Cash'),
(143, 284, '2024-07-20', 4, 1062.24, 'Debit Card'),
(231, 13, '2024-07-21', 7, 1468.27, 'Debit Card'),
(197, 25, '2024-07-22', 5, 2458.26, 'Debit Card'),
(184, 231, '2024-07-23', 6, 800.61, 'Cash'),
(249, 281, '2024-07-24', 7, 1583.14, 'Online Payment'),
(27, 71, '2024-07-25', 2, 173.34, 'Debit Card'),
(108, 67, '2024-07-26', 4, 1369.11, 'Debit Card'),
(50, 242, '2024-07-27', 7, 2563.08, 'Credit Card'),
(396, 127, '2024-07-28', 10, 2106.27, 'Debit Card'),
(161, 86, '2024-07-29', 7, 1910.53, 'Cash'),
(284, 129, '2024-07-30', 1, 41.69, 'Debit Card'),
(219, 152, '2024-07-31', 2, 413.85, 'Online Payment'),
(340, 187, '2024-08-01', 10, 209.44, 'Debit Card'),
(238, 190, '2024-08-02', 9, 3775.28, 'Credit Card'),
(347, 163, '2024-08-03', 1, 360.41, 'Online Payment'),
(127, 261, '2024-08-04', 8, 1299.88, 'Debit Card'),
(448, 22, '2024-08-05', 1, 34.21, 'Credit Card'),
(381, 82, '2024-08-06', 3, 256.48, 'Credit Card'),
(131, 280, '2024-08-07', 2, 425.27, 'Debit Card'),
(242, 222, '2024-08-08', 4, 1937.48, 'Debit Card'),
(480, 282, '2024-08-09', 4, 1201.96, 'Cash'),
(179, 53, '2024-08-10', 6, 2540.86, 'Debit Card'),
(238, 87, '2024-08-11', 2, 596.56, 'Credit Card'),
(481, 8, '2024-08-12', 4, 1860.36, 'Cash');
INSERT INTO `sales` (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) VALUES
(95, 211, '2024-08-13', 8, 3939.08, 'Online Payment'),
(143, 90, '2024-08-14', 10, 3671.03, 'Credit Card'),
(15, 67, '2024-08-15', 3, 1342.66, 'Online Payment'),
(57, 13, '2024-08-16', 5, 832.28, 'Cash'),
(158, 170, '2024-08-17', 4, 1281.20, 'Cash'),
(213, 123, '2024-08-18', 7, 343.15, 'Cash'),
(202, 149, '2024-08-19', 2, 652.69, 'Cash'),
(50, 166, '2024-08-20', 3, 878.06, 'Online Payment'),
(58, 117, '2024-08-21', 3, 945.16, 'Credit Card'),
(369, 182, '2024-08-22', 4, 865.58, 'Credit Card'),
(421, 186, '2024-08-23', 4, 1313.89, 'Cash'),
(425, 96, '2024-08-24', 2, 66.72, 'Debit Card'),
(151, 203, '2024-08-25', 8, 3956.26, 'Credit Card'),
(46, 69, '2024-08-26', 1, 441.60, 'Debit Card'),
(263, 110, '2024-08-27', 1, 371.81, 'Cash'),
(460, 37, '2024-08-28', 4, 1518.83, 'Credit Card'),
(161, 21, '2024-08-29', 3, 137.40, 'Credit Card'),
(329, 171, '2024-08-30', 9, 3071.81, 'Online Payment'),
(253, 45, '2024-08-31', 5, 2058.08, 'Debit Card'),
(421, 176, '2024-09-01', 4, 1271.28, 'Online Payment'),
(461, 144, '2024-09-02', 7, 2605.22, 'Debit Card'),
(6, 208, '2024-09-03', 6, 1005.92, 'Credit Card'),
(284, 181, '2024-09-04', 2, 185.61, 'Debit Card'),
(79, 109, '2024-09-05', 9, 4242.68, 'Cash'),
(397, 2, '2024-09-06', 8, 919.02, 'Debit Card'),
(378, 271, '2024-09-07', 4, 796.76, 'Credit Card'),
(10, 144, '2024-09-08', 3, 880.13, 'Online Payment'),
(124, 52, '2024-09-09', 4, 1433.65, 'Credit Card'),
(226, 99, '2024-09-10', 5, 2295.86, 'Debit Card'),
(481, 227, '2024-09-11', 9, 3231.71, 'Debit Card'),
(461, 279, '2024-09-12', 9, 244.44, 'Cash'),
(381, 27, '2024-09-13', 1, 291.25, 'Debit Card'),
(242, 56, '2024-09-14', 7, 1976.44, 'Credit Card'),
(77, 127, '2024-09-15', 2, 385.42, 'Online Payment'),
(464, 249, '2024-09-16', 5, 1352.42, 'Debit Card'),
(238, 118, '2024-09-17', 7, 684.09, 'Credit Card'),
(387, 6, '2024-09-18', 10, 3431.07, 'Debit Card'),
(50, 195, '2024-09-19', 8, 1952.32, 'Cash'),
(23, 59, '2024-09-20', 7, 1182.05, 'Cash'),
(397, 293, '2024-09-21', 8, 984.33, 'Credit Card'),
(47, 258, '2024-09-22', 4, 1956.60, 'Online Payment'),
(151, 253, '2024-09-23', 5, 2180.97, 'Online Payment'),
(73, 127, '2024-09-24', 10, 1365.19, 'Cash'),
(38, 6, '2024-09-25', 1, 69.67, 'Credit Card'),
(425, 92, '2024-09-26', 2, 214.92, 'Credit Card'),
(158, 255, '2024-09-27', 6, 1508.74, 'Cash'),
(154, 277, '2024-09-28', 5, 1458.88, 'Online Payment'),
(158, 118, '2024-09-29', 4, 1546.70, 'Credit Card'),
(202, 107, '2024-09-30', 1, 202.99, 'Online Payment'),
(22, 269, '2024-10-01', 9, 855.41, 'Cash'),
(47, 249, '2024-10-02', 6, 2878.89, 'Credit Card'),
(397, 247, '2024-10-03', 3, 204.86, 'Credit Card'),
(381, 71, '2024-10-04', 8, 3008.03, 'Online Payment'),
(6, 213, '2024-10-05', 10, 1563.48, 'Online Payment'),
(124, 27, '2024-10-06', 8, 3707.37, 'Cash'),
(480, 90, '2024-10-07', 2, 246.58, 'Debit Card'),
(77, 199, '2024-10-08', 10, 3125.61, 'Cash'),
(396, 135, '2024-10-09', 3, 1389.18, 'Online Payment'),
(317, 42, '2024-10-10', 1, 459.54, 'Credit Card'),
(61, 87, '2024-10-11', 8, 1904.65, 'Debit Card'),
(77, 210, '2024-10-12', 3, 351.70, 'Online Payment'),
(114, 165, '2024-10-13', 2, 699.39, 'Debit Card'),
(242, 152, '2024-10-14', 1, 104.78, 'Debit Card'),
(89, 91, '2024-10-15', 3, 1287.99, 'Debit Card'),
(219, 17, '2024-10-16', 8, 744.67, 'Online Payment');


INSERT INTO sales (`ProductID`, `CustomerID`, `Date`, `Quantity`, `TotalAmount`, `PaymentMethod`) 
VALUES 
(35, 204, '2024-10-17', 8, 1056.08, 'Credit Card'),
(464, 256, '2024-10-18', 2, 856.73, 'Online Payment'),
(77, 185, '2024-10-19', 9, 3479.65, 'Credit Card'),
(288, 215, '2024-10-20', 3, 286.56, 'Cash'),
(92, 278, '2024-10-21', 4, 1557.14, 'Credit Card'),
(310, 286, '2024-10-22', 7, 2351.71, 'Credit Card'),
(288, 3, '2024-10-23', 1, 339.78, 'Credit Card'),
(196, 268, '2024-10-24', 3, 734.79, 'Online Payment'),
(249, 1, '2024-10-25', 1, 197.33, 'Online Payment'),
(127, 268, '2024-10-26', 9, 1118.29, 'Credit Card'),
(202, 82, '2024-10-27', 5, 2247.11, 'Debit Card'),
(73, 260, '2024-10-28', 2, 624.84, 'Online Payment'),
(364, 262, '2024-10-29', 4, 1268.96, 'Credit Card'),
(71, 19, '2024-10-30', 7, 1872.44, 'Online Payment'),
(57, 32, '2024-10-31', 5, 534.68, 'Debit Card'),
(154, 173, '2024-11-01', 2, 392.55, 'Credit Card'),
(161, 74, '2024-11-02', 2, 160.29, 'Debit Card'),
(25, 77, '2024-11-03', 1, 28.70, 'Debit Card'),
(462, 148, '2024-11-04', 3, 558.60, 'Online Payment'),
(334, 48, '2024-11-05', 7, 2336.06, 'Credit Card'),
(172, 197, '2024-11-06', 6, 125.63, 'Debit Card'),
(417, 214, '2024-11-07', 8, 335.19, 'Credit Card'),
(413, 158, '2024-11-08', 7, 2132.21, 'Credit Card'),
(143, 92, '2024-11-09', 1, 236.88, 'Cash'),
(50, 135, '2024-11-10', 8, 3980.70, 'Debit Card'),
(151, 31, '2024-11-11', 7, 2509.57, 'Online Payment'),
(22, 52, '2024-11-12', 6, 2650.59, 'Debit Card'),
(151, 112, '2024-11-13', 3, 1353.93, 'Online Payment'),
(213, 267, '2024-11-14', 6, 317.28, 'Debit Card'),
(322, 48, '2024-11-15', 2, 516.32, 'Online Payment'),
(342, 284, '2024-11-16', 3, 705.90, 'Credit Card'),
(213, 27, '2024-11-17', 3, 1166.48, 'Debit Card'),
(15, 192, '2024-11-18', 10, 3265.01, 'Online Payment'),
(179, 171, '2024-11-19', 2, 169.23, 'Online Payment'),
(46, 218, '2024-11-20', 7, 94.00, 'Cash'),
(172, 263, '2024-11-21', 1, 346.13, 'Credit Card'),
(399, 131, '2024-11-22', 3, 245.01, 'Cash'),
(89, 229, '2024-11-23', 5, 749.36, 'Cash'),
(38, 298, '2024-11-24', 2, 908.36, 'Credit Card'),
(23, 223, '2024-11-25', 10, 2966.20, 'Online Payment'),
(181, 87, '2024-11-26', 2, 707.90, 'Debit Card'),
(71, 46, '2024-11-27', 3, 720.40, 'Cash'),
(327, 89, '2024-11-28', 8, 362.85, 'Cash'),
(249, 53, '2024-11-29', 10, 4324.92, 'Cash'),
(226, 17, '2024-11-30', 8, 2750.80, 'Credit Card'),
(108, 240, '2024-12-01', 7, 2713.89, 'Online Payment'),
(54, 282, '2024-12-02', 9, 391.45, 'Cash'),
(334, 133, '2024-12-03', 7, 2345.32, 'Credit Card'),
(360, 233, '2024-12-04', 10, 3189.09, 'Online Payment'),
(369, 59, '2024-12-05', 2, 755.92, 'Online Payment'),
(29, 99, '2024-12-06', 7, 370.30, 'Online Payment'),
(480, 49, '2024-12-07', 9, 2041.74, 'Debit Card'),
(184, 86, '2024-12-08', 3, 887.76, 'Debit Card'),
(409, 169, '2024-12-09', 1, 366.22, 'Cash'),
(184, 126, '2024-12-10', 1, 351.19, 'Online Payment'),
(475, 102, '2024-12-11', 2, 450.33, 'Credit Card'),
(58, 42, '2024-12-12', 4, 1000.94, 'Credit Card'),
(364, 246, '2024-12-13', 6, 97.81, 'Online Payment'),
(35, 131, '2024-12-14', 10, 4179.77, 'Cash'),
(447, 246, '2024-12-15', 2, 668.29, 'Cash'),
(288, 42, '2024-12-16', 4, 1772.99, 'Cash'),
(242, 75, '2024-12-17', 10, 3183.73, 'Credit Card'),
(99, 284, '2024-12-18', 7, 250.36, 'Online Payment'),
(253, 274, '2024-12-19', 3, 475.94, 'Credit Card'),
(96, 15, '2024-12-20', 6, 2055.19, 'Debit Card'),
(334, 135, '2024-12-21', 7, 1471.72, 'Cash'),
(491, 8, '2024-12-22', 2, 64.20, 'Debit Card'),
(251, 1, '2024-12-23', 3, 104.03, 'Credit Card'),
(396, 87, '2024-12-24', 10, 2692.92, 'Debit Card'),
(413, 48, '2024-12-25', 10, 3707.70, 'Debit Card'),
(154, 97, '2024-12-26', 3, 167.19, 'Credit Card'),
(322, 26, '2024-12-27', 3, 867.36, 'Credit Card'),
(6, 165, '2024-12-28', 7, 3407.47, 'Online Payment'),
(227, 36, '2024-12-29', 5, 1051.27, 'Credit Card'),
(47, 29, '2024-12-30', 1, 495.02, 'Online Payment'),
(333, 116, '2024-12-31', 5, 1719.20, 'Debit Card'),
(333, 39, '2025-01-01', 7, 241.84, 'Debit Card'),
(304, 82, '2025-01-02', 10, 3333.21, 'Credit Card');




-- REGISTRATION 
DELIMITER //

CREATE  PROCEDURE Registration(
    IN p_MailID VARCHAR(255),
    IN p_Name VARCHAR(255),
    IN p_Password VARCHAR(255),
    IN p_Role VARCHAR(50)
)
BEGIN
    DECLARE v_HashedPassword VARCHAR(255);

    -- Validate email inline using regex
    IF NOT (p_MailID REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Invalid email format. Please provide a valid email address.';
    END IF;

    -- Validate name
    IF p_Name IS NULL OR LENGTH(TRIM(p_Name)) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Name cannot be empty.';
    END IF;

    -- Validate password
    IF p_Password IS NULL OR LENGTH(p_Password) < 6 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Password must be at least 6 characters long.';
    END IF;

    -- Validate role
    IF p_Role IS NULL OR LENGTH(TRIM(p_Role)) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Role cannot be empty.';
    END IF;

    -- Hash the password using SHA-256
    SET v_HashedPassword = SHA2(p_Password, 256);

    -- Insert user details into the USERS table
    INSERT INTO USERS (MailID, Name, Password, Role)
    VALUES (p_MailID, p_Name, v_HashedPassword, p_Role);
END;
//

DELIMITER ;

-- Triger to store the regular user data to Customer table 
DELIMITER //

CREATE TRIGGER after_user_insert
AFTER INSERT ON Users
FOR EACH ROW
BEGIN
    -- Check if the Role of the newly inserted user is 'Regular'
    IF NEW.Role = 'Regular' THEN
        -- Insert the corresponding customer data into the Customers table
        INSERT INTO Customers (Name, Email, Phone, Address, PurchaseHistory, LoyaltyPoints)
        VALUES (NEW.Name, NEW.MailID, NULL, NULL, NULL, 0);
    END IF;
END;
//

DELIMITER ;


-- Authentication

DELIMITER //

CREATE  FUNCTION Authentication(
    p_MailID VARCHAR(255),
    p_Password VARCHAR(255)
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_HashedPassword VARCHAR(255);
    DECLARE v_StoredPassword VARCHAR(255);
    DECLARE v_Flag INT DEFAULT 0; -- 0 for failure, 1 for success

    -- Hash the input password using SHA-256
    SET v_HashedPassword = SHA2(p_Password, 256);

    -- Retrieve the stored hashed password for the given email and role 'Regular'
    BEGIN
        -- Use a handler to gracefully manage cases where no rows are found
        DECLARE EXIT HANDLER FOR NOT FOUND 
        BEGIN
            -- Set v_Flag to 0 (authentication failure) if no record is found
            SET v_Flag = 0;
        END;

        -- Attempt to fetch the stored password
        SELECT Password INTO v_StoredPassword
        FROM USERS
        WHERE MailID = p_MailID AND Role = 'regular';
    END;

    -- If the hashed password matches the stored password, authentication is successful
    IF v_HashedPassword = v_StoredPassword THEN
        SET v_Flag = 1; -- Authentication successful
    ELSE
        SET v_Flag = 0; -- Authentication failed
    END IF;

    -- Return the authentication flag (1 = success, 0 = failure)
    RETURN v_Flag;
END;
//

DELIMITER ;

-- Admin Authentication

DELIMITER //
CREATE  FUNCTION AdminAuthentication(
    p_MailID VARCHAR(255),
    p_Password VARCHAR(255)
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_HashedPassword VARCHAR(255);
    DECLARE v_StoredPassword VARCHAR(255);
    DECLARE v_Flag INT DEFAULT 0; -- 0 for failure, 1 for success

    -- Hash the input password using SHA-256
    SET v_HashedPassword = SHA2(p_Password, 256);

    -- Retrieve the stored hashed password for the given email and role 'Regular'
    BEGIN
        -- Use a handler to gracefully manage cases where no rows are found
        DECLARE EXIT HANDLER FOR NOT FOUND 
        BEGIN
            -- Set v_Flag to 0 (authentication failure) if no record is found
            SET v_Flag = 0;
        END;

        -- Attempt to fetch the stored password
        SELECT Password INTO v_StoredPassword
        FROM USERS
        WHERE MailID = p_MailID AND Role = 'Admin';
    END;

    -- If the hashed password matches the stored password, authentication is successful
    IF v_HashedPassword = v_StoredPassword THEN
        SET v_Flag = 1; -- Authentication successful
    ELSE
        SET v_Flag = 0; -- Authentication failed
    END IF;

    -- Return the authentication flag (1 = success, 0 = failure)
    RETURN v_Flag;
END;
//

DELIMITER ;



-- Function to Purchase a product

DELIMITER //

CREATE FUNCTION PurchaseProduct(
    p_ProductID INT,
    p_CustomerID INT,
    p_Quantity INT,
    p_PaymentMethod VARCHAR(50)
)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE v_Stock INT;
    DECLARE v_SellingPrice DECIMAL(10, 2);
    DECLARE v_TotalCost DECIMAL(10, 2);
    
    -- Retrieve current stock and selling price for the product
    SELECT Stock, SellingPrice INTO v_Stock, v_SellingPrice
    FROM Products
    WHERE ProductID = p_ProductID;
    
    -- Check if sufficient stock is available
    IF v_Stock < p_Quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient stock for the requested quantity.';
    END IF;
    
    -- Calculate the total cost of the purchase
    SET v_TotalCost = p_Quantity * v_SellingPrice;
    
    -- Update the product stock
    UPDATE Products
    SET Stock = Stock - p_Quantity
    WHERE ProductID = p_ProductID;
    
    -- Record the sale in the Sales table
    INSERT INTO Sales (ProductID, CustomerID, Date, Quantity, TotalAmount, PaymentMethod)
    VALUES (p_ProductID, p_CustomerID, NOW(), p_Quantity, v_TotalCost, p_PaymentMethod);
    
    -- Set session variables for future use
    SET @LastProductID = p_ProductID;
    SET @LastCustomerID = p_CustomerID;
    
    -- Return the total cost of the purchase
    RETURN v_TotalCost;
END;
//

DELIMITER ;  


-- Procedure to submit the feedback

DELIMITER //

CREATE PROCEDURE SubmitFeedback(
    IN p_Comments TEXT,      -- Feedback Comments
    IN p_Ratings INT         -- Feedback Ratings
)
BEGIN
    DECLARE v_ProductID INT;
    DECLARE v_CustomerID INT;

    -- Retrieve the ProductID and CustomerID from session variables
    SET v_ProductID = @LastProductID;
    SET v_CustomerID = @LastCustomerID;

    -- If no recent purchase exists, raise an error
    IF v_ProductID IS NULL OR v_CustomerID IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No recent purchase found for the user.';
    END IF;

    -- Insert the feedback into the Feedback table
    INSERT INTO Feedback (ProductID, CustomerID, Comments, Ratings, Timestamp)
    VALUES (v_ProductID, v_CustomerID, p_Comments, p_Ratings, NOW());
END;
//

DELIMITER ;




-- USER MANAGEMENTS
-- View Regular Users

DELIMITER //

CREATE PROCEDURE ViewRegularUsers()
BEGIN
    -- Select all details of users with the role 'Regular'
    SELECT UserID, MailID, Name, Role
    FROM Users
    WHERE Role = 'Regular';
END;
//

DELIMITER ;


-- Edit User Details
DELIMITER //

CREATE  PROCEDURE EditUserDetails(
    IN p_UserID INT,
    IN p_Name VARCHAR(255),
    IN p_MailID VARCHAR(255),
    IN p_Role VARCHAR(50)
)
BEGIN
    -- Update the user details based on UserID
    UPDATE Users
    SET 
        Name = IFNULL(p_Name, Name),        -- Only update if new value is provided
        MailID = IFNULL(p_MailID, MailID),  -- Only update if new value is provided
        Role = IFNULL(p_Role, Role)         -- Only update if new value is provided
    WHERE UserID = p_UserID;

    -- Check if any rows were updated
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'User not found.';
    END IF;
END;
//

DELIMITER ;


-- Activate or Deactivate Users




-- Product Management

-- Add the Products

DELIMITER //

CREATE  PROCEDURE AddProduct(
    IN p_Name VARCHAR(255),
    IN p_Category VARCHAR(100),
    IN p_Cost DECIMAL(10, 2),
    IN p_SellingPrice DECIMAL(10, 2),
    IN p_Stock INT,
    IN p_ReorderLevel INT,
    IN p_SupplierInfo VARCHAR(255),
    IN p_ExpiryDate DATE
)
BEGIN
    -- Insert the product details into the Products table
    INSERT INTO Products (Name, Category, Cost, SellingPrice, Stock, ReorderLevel, SupplierInfo, ExpiryDate)
    VALUES (p_Name, p_Category, p_Cost, p_SellingPrice, p_Stock, p_ReorderLevel, p_SupplierInfo, p_ExpiryDate);
END;
//

DELIMITER ;

-- Update a Product
DELIMITER //

CREATE PROCEDURE EditProduct(
    IN p_ProductID INT,
    IN p_Name VARCHAR(255),
    IN p_Category VARCHAR(100),
    IN p_Cost DECIMAL(10, 2),
    IN p_SellingPrice DECIMAL(10, 2),
    IN p_Stock INT,
    IN p_ReorderLevel INT,
    IN p_SupplierInfo VARCHAR(255),
    IN p_ExpiryDate DATE
)
BEGIN
    -- Update the product details based on ProductID
    UPDATE Products
    SET 
        Name = IFNULL(p_Name, Name),                -- Only update if new value is provided
        Category = IFNULL(p_Category, Category),    -- Only update if new value is provided
        Cost = IFNULL(p_Cost, Cost),                -- Only update if new value is provided
        SellingPrice = IFNULL(p_SellingPrice, SellingPrice), -- Only update if new value is provided
        Stock = IFNULL(p_Stock, Stock),             -- Only update if new value is provided
        ReorderLevel = IFNULL(p_ReorderLevel, ReorderLevel), -- Only update if new value is provided
        SupplierInfo = IFNULL(p_SupplierInfo, SupplierInfo), -- Only update if new value is provided
        ExpiryDate = IFNULL(p_ExpiryDate, ExpiryDate) -- Only update if new value is provided
    WHERE ProductID = p_ProductID;

    -- Check if any rows were updated
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Product not found.';
    END IF;
END;
//

DELIMITER ;



-- Delete a Product
DELIMITER //

CREATE  PROCEDURE DeleteProduct(
    IN p_ProductID INT
)
BEGIN
    -- Delete the product with the specified ProductID
    DELETE FROM Products
    WHERE ProductID = p_ProductID;

    -- Check if any rows were deleted
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Product not found.';
    END IF;
END;
//

DELIMITER ;

-- Feedback Management

-- View the Feedback

DELIMITER //

CREATE  FUNCTION ViewFeedbacks(
    p_ProductID INT
)
RETURNS JSON
DETERMINISTIC
BEGIN
    -- Return feedbacks as a JSON object
    RETURN (
        SELECT JSON_ARRAYAGG(   
            JSON_OBJECT(
                'FeedbackID', FeedbackID,
                'ProductID', ProductID,
                'CustomerID', CustomerID,
                'Comments', Comments,
                'Ratings', Ratings,
                'Timestamp', Timestamp
            )
        )
        FROM Feedback
        WHERE ProductID = IFNULL(p_ProductID, ProductID)
    );
END;
//

DELIMITER ;

-- Responding to the feedback
DELIMITER //

CREATE TRIGGER RespondToFeedback
AFTER INSERT ON Feedback
FOR EACH ROW
BEGIN
    -- Signal a custom message as feedback response
    SIGNAL SQLSTATE '01000'
SET MESSAGE_TEXT = 'Your feedback has been successfully submitted. Thank you!';

END;
//

DELIMITER ;





-- Sales Trend Algorithm
DELIMITER $$

CREATE FUNCTION SalesTrend()
RETURNS JSON
DETERMINISTIC
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_month VARCHAR(20);
    DECLARE v_month_sales DECIMAL(10, 2);
    DECLARE v_previous_sales DECIMAL(10, 2) DEFAULT 0;
    DECLARE v_percentage_change DECIMAL(10, 2);
    DECLARE v_result JSON DEFAULT JSON_ARRAY();

    -- Declare cursor for fetching monthly sales data
    DECLARE sales_cursor CURSOR FOR 
        SELECT DATE_FORMAT(Date, '%Y-%m') AS month, SUM(TotalAmount) AS total_sales
        FROM Sales
        GROUP BY DATE_FORMAT(Date, '%Y-%m')
        ORDER BY month;

    -- Handler for cursor loop
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN sales_cursor;

    -- Loop through the cursor
    read_loop: LOOP
        FETCH sales_cursor INTO v_month, v_month_sales;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Calculate percentage change
        IF v_previous_sales > 0 THEN
            SET v_percentage_change = ((v_month_sales - v_previous_sales) * 100) / v_month_sales;
        ELSE
            SET v_percentage_change = NULL; -- No percentage change for the first month
        END IF;

        -- Append the result to JSON array
        SET v_result = JSON_ARRAY_APPEND(v_result, '$', JSON_OBJECT('month', v_month, 'percentage_change', v_percentage_change));

        -- Update previous month's sales
        SET v_previous_sales = v_month_sales;
    END LOOP;

    CLOSE sales_cursor;

    -- Check if the algorithm entry exists in the Logs table
    IF EXISTS (SELECT 1 FROM Logs WHERE AlgorithmName = 'SalesTrend') THEN
        -- Update the existing entry
        UPDATE Logs 
        SET Timestamp = CURRENT_TIMESTAMP, Results = v_result 
        WHERE AlgorithmName = 'SalesTrend';
    ELSE
        -- Insert a new entry
        INSERT INTO Logs (AlgorithmName, Timestamp, Results) 
        VALUES ('SalesTrend', CURRENT_TIMESTAMP, v_result);
    END IF;

    -- Return the result as JSON
    RETURN v_result;

END$$

DELIMITER ;




-- ABC Classification 

DELIMITER $$

CREATE FUNCTION ABC_Classification()
RETURNS JSON
DETERMINISTIC
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_product_id INT;
    DECLARE v_acv DECIMAL(10, 2);
    DECLARE v_total_acv DECIMAL(10, 2);
    DECLARE v_cumulative_acv DECIMAL(10, 2) DEFAULT 0;
    DECLARE v_percentage DECIMAL(5, 2);
    DECLARE v_class VARCHAR(1);
    DECLARE v_result JSON DEFAULT JSON_ARRAY();
    
    -- Declare a cursor to select products and their ACV in descending order
    DECLARE product_cursor CURSOR FOR 
        SELECT ProductID, SUM(TotalAmount) AS ACV
        FROM Sales
        GROUP BY ProductID
        ORDER BY ACV DESC;

    -- Handler to manage the end of the cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Calculate total ACV of all products
    SELECT SUM(TotalAmount) INTO v_total_acv FROM Sales;
    
    OPEN product_cursor;

    -- Loop through the products
    read_loop: LOOP
        FETCH product_cursor INTO v_product_id, v_acv;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Calculate cumulative ACV
        SET v_cumulative_acv = v_cumulative_acv + v_acv;
        
        -- Calculate the percentage of cumulative ACV
        SET v_percentage = (v_cumulative_acv / v_total_acv) * 100;

        -- Classify product based on cumulative percentage
        IF v_percentage <= 75 THEN
            SET v_class = 'A';
        ELSEIF v_percentage <= 90 THEN
            SET v_class = 'B';
        ELSE
            SET v_class = 'C';
        END IF;

        -- Append product and its class to the result JSON
        SET v_result = JSON_ARRAY_APPEND(v_result, '$', JSON_OBJECT('product', v_product_id, 'class', v_class));
    END LOOP;

    CLOSE product_cursor;

    -- Insert results into the Logs table
     IF EXISTS (SELECT 1 FROM Logs WHERE AlgorithmName = 'ABC Classification') THEN
        -- Update the existing entry
        UPDATE Logs 
        SET Timestamp = CURRENT_TIMESTAMP, Results = v_result 
        WHERE AlgorithmName = 'ABC Classification';
    ELSE
        -- Insert a new entry
        INSERT INTO Logs (AlgorithmName, Timestamp, Results) 
        VALUES ('ABC Classification', CURRENT_TIMESTAMP, v_result);
    END IF;

    -- Return the final result as JSON
    RETURN v_result;
END$$

DELIMITER ;





-- Inventory Turnover Ratio


-- Create the function to calculate Inventory Turnover Ratio and log the results
DELIMITER $$

CREATE FUNCTION RatioTurnover() 
RETURNS JSON
BEGIN
    -- Declare variables for opening inventory, closing inventory, COGS, and average inventory
    DECLARE v_opening_inventory INT DEFAULT 0;
    DECLARE v_closing_inventory INT DEFAULT 0;
    DECLARE v_cogs INT DEFAULT 0;
    DECLARE v_average_inventory INT DEFAULT 0;
    DECLARE v_inventory_turnover_ratio DECIMAL(10,2) DEFAULT 0;
    DECLARE v_turnover_status VARCHAR(20);
    DECLARE v_json_result JSON;

    -- Step 1: Calculate COGS (Cost of Goods Sold)
    SELECT SUM(p.Cost * s.Quantity) 
    INTO  v_cogs
    FROM Sales s
    JOIN Products p ON s.ProductID = p.ProductID;
    
    -- Step 2: Calculate Closing Inventory (using stock after sales in the period)
    SELECT SUM(p.Stock)  
    INTO v_closing_inventory
    FROM Products p;

    -- Step 3: Calculate Opening Inventory (using stock from Products table)
    SELECT SUM(p.Stock) + IFNULL(SUM(s.Quantity), 0) 
    INTO v_opening_inventory
    FROM Products p
    LEFT JOIN Sales s ON p.ProductID = s.ProductID;
    
    -- Step 4: Calculate Average Inventory
    SET v_average_inventory = (v_opening_inventory + v_closing_inventory) / 2;

    -- Step 5: Calculate Inventory Turnover Ratio
    IF v_average_inventory != 0 THEN
        SET v_inventory_turnover_ratio = v_cogs / v_average_inventory;
    ELSE
        SET v_inventory_turnover_ratio = 0;
    END IF;

    -- Step 6: Determine if the turnover is high or low
    IF v_inventory_turnover_ratio > 5 THEN
        SET v_turnover_status = 'High Turnover';
    ELSE
        SET v_turnover_status = 'Low Turnover';
    END IF;

    -- Prepare the JSON result with ratio and turnover status
    SET v_json_result = JSON_OBJECT(
        'Ratio', v_inventory_turnover_ratio,
        'TurnoverStatus', v_turnover_status
    );

    -- Step 7: Insert the result into the Logs table
     IF EXISTS (SELECT 1 FROM Logs WHERE AlgorithmName = 'RatioTurnover') THEN
        -- Update the existing entry
        UPDATE Logs 
        SET Timestamp = CURRENT_TIMESTAMP, Results = v_json_result 
        WHERE AlgorithmName = 'RatioTurnover';
    ELSE
        -- Insert a new entry
        INSERT INTO Logs (AlgorithmName, Timestamp, Results) 
        VALUES ('RatioTurnover', CURRENT_TIMESTAMP, v_json_result);
    END IF;

    -- Return the JSON result
    RETURN v_json_result;
END$$

DELIMITER ;


-- Product Profitability Analysis 

DELIMITER //

CREATE FUNCTION GetProfitabilityAnalysis()
RETURNS JSON
DETERMINISTIC
BEGIN
    DECLARE highProfitProduct JSON;
    DECLARE lowProfitProduct JSON;
    DECLARE result JSON;

    -- Get the product with the highest profitability
    SELECT 
        JSON_OBJECT(
            'ProductID', p.ProductID,
            'ProductName', p.Name,
            'ProfitMargin', 
            ((p.SellingPrice * SUM(s.Quantity) - p.Cost * SUM(s.Quantity)) / 
             (p.SellingPrice * SUM(s.Quantity))) * 100
        ) INTO highProfitProduct
    FROM 
        Products p
    JOIN 
        Sales s ON p.ProductID = s.ProductID
    GROUP BY 
        p.ProductID
    ORDER BY 
        ((p.SellingPrice * SUM(s.Quantity) - p.Cost * SUM(s.Quantity)) / 
        (p.SellingPrice * SUM(s.Quantity))) * 100 DESC 
    LIMIT 1; -- Highest profitability product

    -- Get the product with the lowest profitability
    SELECT 
        JSON_OBJECT(
            'ProductID', p.ProductID,
            'ProductName', p.Name,
            'ProfitMargin', 
            ((p.SellingPrice * SUM(s.Quantity) - p.Cost * SUM(s.Quantity)) / 
             (p.SellingPrice * SUM(s.Quantity))) * 100
        ) INTO lowProfitProduct
    FROM 
        Products p
    JOIN 
        Sales s ON p.ProductID = s.ProductID
    GROUP BY 
        p.ProductID
    ORDER BY 
        ((p.SellingPrice * SUM(s.Quantity) - p.Cost * SUM(s.Quantity)) / 
        (p.SellingPrice * SUM(s.Quantity))) * 100 ASC
    LIMIT 1; -- Lowest profitability product

    -- Prepare the result JSON
    SET result = JSON_OBJECT(
        'HighProfitProduct', highProfitProduct,
        'LowProfitProduct', lowProfitProduct
    );

    -- Insert the results into the Logs table
    
     IF EXISTS (SELECT 1 FROM Logs WHERE AlgorithmName = 'ProfitabilityAnalysis') THEN
        -- Update the existing entry
        UPDATE Logs 
        SET Timestamp = CURRENT_TIMESTAMP, Results = result 
        WHERE AlgorithmName = 'ProfitabilityAnalysis';
    ELSE
        -- Insert a new entry
        INSERT INTO Logs (AlgorithmName, Timestamp, Results) 
        VALUES ('ProfitabilityAnalysis', CURRENT_TIMESTAMP, result);
    END IF;

    -- Return the results as JSON
    RETURN result;
END;
//

DELIMITER ;


-- Demand Forcasting Algorithm


DELIMITER $$

CREATE FUNCTION GetSalesData(productID INT) RETURNS JSON DETERMINISTIC
BEGIN
    DECLARE salesData JSON DEFAULT JSON_ARRAY();
    DECLARE done INT DEFAULT FALSE;
    DECLARE curr_date DATE;
    DECLARE curr_quantity INT;
    
    -- Updated cursor to match your Sales table structure
    DECLARE sales_cursor CURSOR FOR 
        SELECT 
            DATE_FORMAT(s.Date, '%Y-%m-%d') as SaleDate,
            SUM(s.Quantity) as TotalQuantity
        FROM Sales s
        WHERE s.ProductID = productID
        GROUP BY DATE_FORMAT(s.Date, '%Y-%m')
        ORDER BY SaleDate;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN sales_cursor;
    
    read_loop: LOOP
        FETCH sales_cursor INTO curr_date, curr_quantity;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SET salesData = JSON_ARRAY_APPEND(salesData, '$', 
            JSON_OBJECT(
                'Month', EXTRACT(MONTH FROM curr_date),
                'TotalQuantity', curr_quantity
            ));
            
    END LOOP;
    
    CLOSE sales_cursor;
    
    RETURN salesData;
END$$

DELIMITER ;


DELIMITER $$

CREATE FUNCTION ForecastDemand() RETURNS JSON DETERMINISTIC
BEGIN
    DECLARE maxDemandObj JSON DEFAULT NULL;
    DECLARE pid INT;
    DECLARE pname VARCHAR(100);
    DECLARE currDemand, maxDemand DECIMAL(10, 2);
    DECLARE salesData JSON;
    DECLARE done BOOLEAN DEFAULT FALSE;
    
    -- Single cursor for products
    DECLARE productCursor CURSOR FOR 
        SELECT ProductID, Name FROM Products;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    SET maxDemand = -1;
    
    OPEN productCursor;
    
    productLoop: LOOP
        FETCH productCursor INTO pid, pname;
        IF done THEN LEAVE productLoop; END IF;
        
        -- Get sales data and calculate demand
        SET salesData = GetSalesData(pid);
        SET currDemand = CalculateDemand(salesData);
        
        -- Update max if current is higher
        IF currDemand > maxDemand THEN
            SET maxDemand = currDemand;
            SET maxDemandObj = JSON_ARRAY(
                JSON_OBJECT(
                    'ProductID', pid,
                    'ProductName', pname,
                    'PredictedDemand', ROUND(currDemand, 2)
                )
            );
        END IF;
    END LOOP;
    
    CLOSE productCursor;
    
    -- Log the results before returning
    
    IF EXISTS (SELECT 1 FROM Logs WHERE AlgorithmName = 'Demand Forecast') THEN
        -- Update the existing entry
        UPDATE Logs 
        SET Timestamp = CURRENT_TIMESTAMP, Results = COALESCE(maxDemandObj, JSON_ARRAY()) 
        WHERE AlgorithmName = 'Demand Forecast';
    ELSE
        -- Insert a new entry
        INSERT INTO Logs (AlgorithmName, Timestamp, Results) 
        VALUES ('Demand Forecast', CURRENT_TIMESTAMP, COALESCE(maxDemandObj, JSON_ARRAY()));
    END IF;
    
    
    
    RETURN COALESCE(maxDemandObj, JSON_ARRAY());  
END$$

DELIMITER ;




DELIMITER $$

CREATE FUNCTION CalculateDemand(salesData JSON) RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    DECLARE sumX, sumY, sumXY, sumX2, b0, b1 DECIMAL(10,2) DEFAULT 0;
    DECLARE i, n INT DEFAULT 0;
    DECLARE curr_month DECIMAL(10,2);
    DECLARE demand DECIMAL(10,2);
    
    WHILE i < JSON_LENGTH(salesData) DO
        -- Extract the actual month number from salesData
        SET curr_month = CAST(JSON_UNQUOTE(JSON_EXTRACT(salesData, CONCAT('$[', i, '].Month'))) AS DECIMAL(10,2));
        
        SET sumX = sumX + curr_month;
        SET sumY = sumY + CAST(JSON_UNQUOTE(JSON_EXTRACT(salesData, CONCAT('$[', i, '].TotalQuantity'))) AS DECIMAL(10,2));
        SET sumXY = sumXY + (curr_month * CAST(JSON_UNQUOTE(JSON_EXTRACT(salesData, CONCAT('$[', i, '].TotalQuantity'))) AS DECIMAL(10,2)));
        SET sumX2 = sumX2 + POWER(curr_month, 2);
        SET n = n + 1;
        SET i = i + 1;
    END WHILE;
    
    IF n >= 1 THEN
        SET b1 = (n * sumXY - sumX * sumY) / NULLIF((n * sumX2 - POWER(sumX, 2)), 0);
        IF b1 IS NOT NULL THEN
            SET b0 = (sumY - b1 * sumX) / n;
            -- Predict for next month after the last month in the data
            SET demand = b0 + b1 * (curr_month + 1);
            RETURN demand;
        END IF;
    END IF;
    
    RETURN -1;
END$$

DELIMITER ;





