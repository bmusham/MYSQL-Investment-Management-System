create database IMS;
use ims;
CREATE TABLE investments ( Investment_ID INT NOT NULL,
    Type VARCHAR(50),
    PRIMARY KEY (Investment_ID));
    

Create table stock (Stock_ID INT NOT NULL PRIMARY KEY,
Symbol VARCHAR(10), Name VARCHAR(50),
 Category VARCHAR(30), Sector VARCHAR(50),
 Investment_ID INT, foreign key(Investment_ID) references investments(Investment_ID));

Create table etf (ETF_ID INT NOT NULL PRIMARY KEY,
Symbol VARCHAR(10), Name VARCHAR(50), Category VARCHAR(30), Investment_ID INT,
 foreign key(Investment_ID) references investments(Investment_ID));

Create table real_estate (RE_ID INT NOT NULL PRIMARY KEY,
RE_Name VARCHAR(50), RE_Type VARCHAR(50), Risk VARCHAR(20), Investment_ID INT,
 foreign key(Investment_ID) references investments(Investment_ID));

Create table mutual_fund (MF_ID INT NOT NULL PRIMARY KEY, 
MF_Name varchar(50), MF_Category varchar(50), MF_Size varchar(20), Investment_ID INT,
 foreign key(Investment_ID) references investments(Investment_ID));

Create table commodity (Com_ID INT NOT NULL Primary Key,
Com_Name varchar(50), Com_Category varchar(50), Investment_ID INT,
 foreign key(Investment_ID) references investments(Investment_ID));

Create table stock_performance (Investment_ID Int, stock_ID int, 
No_Of_Years int, Rate_Of_Return decimal(9,2), Initial_Year_Price decimal(9,2));


Create table mf_performance (Investment_ID Int, mf_ID int, 
No_Of_Years int, Rate_Of_Return decimal(9,2), Initial_Year_Price decimal(9,2));

Create table etf_performance (Investment_ID Int, etf_ID int, 
No_Of_Years int, Rate_Of_Return decimal(9,2), Initial_Year_Price decimal(9,2));


Create table re_performance (Investment_ID Int, re_ID int, 
No_Of_Years int, Rate_Of_Return decimal(9,2), Initial_Year_Price decimal(9,2));

Create table com_performance (Investment_ID Int, com_ID int, 
No_Of_Years int, Rate_Of_Return decimal(9,2), Initial_Year_Price decimal(9,2));





Create table stock_price (Stock_ID INT NOT NULL, Stock_Year YEAR, Stock_Price DECIMAL(9,2), 
foreign key(Stock_ID) references stock(Stock_ID));

Create table etf_price (ETF_ID INT NOT NULL, ETF_Year YEAR, ETF_Price DECIMAL(9,2), 
foreign key(ETF_ID) references etf(ETF_ID));

Create table re_price (RE_ID INT NOT NULL, RE_Year YEAR, RE_Price DECIMAL(9,2), 
foreign key(RE_ID) references real_estate(RE_ID));

Create table mf_price (MF_ID int not null, MF_Year YEAR, MF_Price DECIMAL(9,2),
foreign key(MF_ID) references mutual_fund(MF_ID));

Create table Com_price (Com_ID int not null, Com_Year YEAR, Com_Price DECIMAL(9,2),
foreign key(Com_ID) references commodity(Com_ID));

insert into investments values
(1000,"Stock"),
(2000,"Real Estate"),
(3000,"Mutual Fund"),
(5000,"Commudity"),
(6000,"ETF");


insert into stock value
(1,"APL","Apple","Large Cap","IT",1000),
(2,"BTC","Bit Coin","Other","Crypto",1000),
(3,"IBM","IBM","Large Cap","IT",1000),
(4,"AMZ","Amazon","Large Cap","Ecom",1000),
(5,"JNT","Joint","Small Cap","Energy",1000),
(6,"MMX","Marine Max","Med Cap","Retail",1000),
(7,"AEO","Americal Eagle","Med Cap","Mainufacturing",1000),
(8,"AEF","American Finance","Med Cap","Finance",1000),
(9,"CNX","CNX Resources","Med Cap","Energy",1000),
(10,"EHC","Encompass Health","Med Cap","Health",1000),
(11,"HQY","Health Equity","Med Cap","Health",1000),
(12,"MSF","Microsoft","Large Cap","IT",1000),
(13,"GGL","Alphabate","Large Cap","IT",1000),
(14,"HNE","Hovnanian Enterprises","Small Cap","Others",1000);


insert into etf value
(1,"SPY","SPDR S&P 500 ETF Trust","LARGE-CAP",6000),
(2,"IVV","iShares Core S&P 500 ETF","LARGE-CAP",6000),
(3,"VTI","Vanguard Total Stock Market ETF","LARGE-CAP",6000),
(4,"VOO","Vanguard S&P 500 ETF","LARGE-CAP",6000),
(5,"QQQ","Invesco QQQ Trust","LARGE-CAP",6000),
(6,"VEA","Vanguard FTSE Developed Markets ETF","LARGE-CAP",6000),
(7,"IJH","iShares Core S&P Mid-Cap ETF","MID-CAP",6000),
(8,"VO","Vanguard Mid-Cap ETF","MID-CAP",6000),
(9,"IWR","iShares Russell Midcap ETF","MID-CAP",6000),
(10,"MDY","SPDR S&P Midcap 400 ETF Trust","MID-CAP",6000),
(11,"VOE","Vanguard Mid-Cap Value ETF","MID-CAP",6000),
(12,"VBR","Vanguard Small Cap Value ETF","SMALL-CAP",6000),
(13,"SCHA","Schwab U.S. Small-Cap ETF","SMALL-CAP",6000),
(14,"VBK","Vanguard Small Cap Growth ETF","SMALL-CAP",6000),
(15,"IWO","iShares Russell 2000 Growth ETF","SMALL-CAP",6000),
(16,"FNDA","Schwab Fundamental US Small Co. Index ETF","SMALL-CAP",6000);

insert into real_estate value
(1,"Realtors","raw land","high",2000),
(2,"Hotel Elite","commerical","medium",2000),
(3,"landway house","ADU","low",2000),
(4,"Residence","raw land","high",2000),
(5,"Preston Height","commercial","medium",2000),
(6,"Bandera","ADU","low",2000),
(7,"AMLI Fountain","raw land","high",2000);

insert into mutual_fund value
(1,"Deutsche Real Assets A","Real Estate","Large",3000),
(2,"Aberdeen Income Builder A","Infrastructure","Large",3000),
(3,"Thrivent Opportunity Income Plus A","Finance","medium",3000),
(4,"American Beacon International Eq Adv","Infrastructure","large",3000),
(5,"Ancora/ Thelen Small-Mid Cap I","Real Estate","small",3000),
(6,"Virtus AllianzGI Health Sciences Fund Class P","Health","medium",3000),
(7,"Thrivent Large Cap Growth Fund Class A","Finance","Large",3000);

insert into commodity value
(1,"copper","metal",5000),
(2,"cotton","agriculture",5000),
(3,"termeric","agriculture",5000),
(4,"gold","metal",5000),
(5,"mustard","agriculture",5000),
(6,"silver","metal",5000),
(7,"aluminium","metal",5000);


insert into stock_price value
(1,2012,20.57),
(1,2013,16.87),
(1,2014,23.06),
(1,2015,30),
(1,2016,26.15),
(1,2017,37.63),
(1,2018,47.26),
(1,2019,52.06),
(1,2020,95.34),
(1,2021,140.98),
(1,2022,167.61),
(2,2012,12397.38),
(2,2013,13412.55),
(2,2014,16441.35),
(2,2015,17832.99),
(2,2016,17148.94),
(2,2017,19881.76),
(2,2018,24824.01),
(2,2019,23346.24),
(2,2020,28868.8),
(2,2021,30223.89),
(2,2022,36585.06),
(3,2012,196.59),
(3,2013,194.14),
(3,2014,182.3),
(3,2015,155.35),
(3,2016,150.51),
(3,2017,157.65),
(3,2018,143.85),
(3,2019,136.99),
(3,2020,124.39),
(3,2021,133.99),
(3,2022,130.72),
(4,2012,220.3),
(4,2013,298.03),
(4,2014,332.55),
(4,2015,478.13),
(4,2016,699.52),
(4,2017,968.16),
(4,2018,1641.72),
(4,2019,1789.19),
(4,2020,2680.85),
(4,2021,3343.86),
(4,2022,3060.68),
(5,2012,5.83),
(5,2013,6.2),
(5,2014,6.37),
(5,2015,7.97),
(5,2016,3.01),
(5,2017,4.15),
(5,2018,7.28),
(5,2019,16.13),
(5,2020,16.78),
(5,2021,68.83),
(5,2022,88.88),
(6,2012,8.37),
(6,2013,12.87),
(6,2014,16.67),
(6,2015,20.6),
(6,2016,18.4),
(6,2017,19.03),
(6,2018,20.99),
(6,2019,16.94),
(6,2020,22.96),
(6,2021,50.72),
(6,2022,45.09),
(7,2012,18.94),
(7,2013,17.73),
(7,2014,12.73),
(7,2015,16.21),
(7,2016,16.35),
(7,2017,13.67),
(7,2018,21.79),
(7,2019,18.15),
(7,2020,12.73),
(7,2021,29.39),
(7,2022,19.84),
(8,2012,38.24),
(8,2013,50.17),
(8,2014,58.19),
(8,2015,66.98),
(8,2016,73.36),
(8,2017,99.07),
(8,2018,108.52),
(8,2019,101.78),
(8,2020,76.72),
(8,2021,124.33),
(8,2022,138.51),
(9,2012,32.66),
(9,2013,33.32),
(9,2014,39.81),
(9,2015,20.51),
(9,2016,14.91),
(9,2017,15.83),
(9,2018,15.16),
(9,2019,8.81),
(9,2020,9.26),
(9,2021,13.39),
(9,2022,17.83),
(10,2012,21.39),
(10,2013,29.98),
(10,2014,36.36),
(10,2015,41.81),
(10,2016,38.92),
(10,2017,44.99),
(10,2018,66.24),
(10,2019,64.02),
(10,2020,69.67),
(10,2021,77.34),
(10,2022,66.84),
(11,2012,16),
(11,2013,18),
(11,2014,20.69),
(11,2015,27.74),
(11,2016,29.56),
(11,2017,46.78),
(11,2018,73.32),
(11,2019,67.11),
(11,2020,59.67),
(11,2021,70.49),
(11,2022,82.56),
(12,2012,29.82),
(12,2013,32.49),
(12,2014,42.45),
(12,2015,46.71),
(12,2016,55.25),
(12,2017,71.98),
(12,2018,101.03),
(12,2019,130.38),
(12,2020,193.02),
(12,2021,275.94),
(12,2022,297.56),
(13,2012,642.81),
(13,2013,884.24),
(13,2014,713.96),
(13,2015,619.98),
(13,2016,763.21),
(13,2017,939.77),
(13,2018,1122.04),
(13,2019,1191.21),
(13,2020,1478.99),
(13,2021,2484.49),
(13,2022,2461.56),
(14,2012,78.21),
(14,2013,139.1),
(14,2014,114.54),
(14,2015,66.17),
(14,2016,43.4),
(14,2017,58.34),
(14,2018,44.16),
(14,2019,15.38),
(14,2020,25.23),
(14,2021,95.2),
(14,2022,79.73);

insert into etf_price value
(1,2012,45.84),
(1,2013,71.96),
(1,2014,52.64),
(1,2015,52.14),
(1,2016,56.03),
(1,2017,64.77),
(1,2018,61.08),
(1,2019,56.83),
(1,2020,64.97),
(1,2021,45.84),
(1,2022,49.94),
(2,2012,253.23),
(2,2013,194.31),
(2,2014,190.8),
(2,2015,240.44),
(2,2016,239.19),
(2,2017,214.11),
(2,2018,225.4),
(2,2019,194.31),
(2,2020,236.68),
(2,2021,196.56),
(2,2022,250.72),
(3,2012,311.75),
(3,2013,532.35),
(3,2014,399.15),
(3,2015,328.81),
(3,2016,577.71),
(3,2017,557.73),
(3,2018,320.49),
(3,2019,355.04),
(3,2020,569.81),
(3,2021,364.61),
(3,2022,416.22),
(4,2012,283.24),
(4,2013,137.62),
(4,2014,197.28),
(4,2015,301.07),
(4,2016,160.48),
(4,2017,196.14),
(4,2018,280.95),
(4,2019,318.21),
(4,2020,190.42),
(4,2021,280.26),
(4,2022,228.6),
(5,2012,107.65),
(5,2013,87.36),
(5,2014,82.87),
(5,2015,105.55),
(5,2016,75.55),
(5,2017,68.46),
(5,2018,94.82),
(5,2019,101.63),
(5,2020,86.28),
(5,2021,71.06),
(5,2022,72.44),
(6,2012,572.42),
(6,2013,580.22),
(6,2014,652.23),
(6,2015,343.09),
(6,2016,674.24),
(6,2017,631.13),
(6,2018,532.52),
(6,2019,489.86),
(6,2020,542.61),
(6,2021,556.37),
(6,2022,458.67),
(7,2012,263.06),
(7,2013,211.15),
(7,2014,225.17),
(7,2015,333.45),
(7,2016,469.12),
(7,2017,399.69),
(7,2018,340.46),
(7,2019,400.33),
(7,2020,279.31),
(7,2021,387.59),
(7,2022,318.48),
(8,2012,42.88),
(8,2013,51.23),
(8,2014,48.14),
(8,2015,42.49),
(8,2016,59.33),
(8,2017,55.41),
(8,2018,48.93),
(8,2019,42.75),
(8,2020,35.04),
(8,2021,59.37),
(8,2022,43.53),
(9,2012,519.76),
(9,2013,435.62),
(9,2014,305.89),
(9,2015,614.26),
(9,2016,375.52),
(9,2017,471.26),
(9,2018,390.44),
(9,2019,442.66),
(9,2020,319.15),
(9,2021,336.97),
(9,2022,414.48),
(10,2012,281.83),
(10,2013,243.74),
(10,2014,145.17),
(10,2015,183.93),
(10,2016,249.57),
(10,2017,217.31),
(10,2018,244.19),
(10,2019,226.27),
(10,2020,241.73),
(10,2021,252.93),
(10,2022,224.03),
(11,2012,165.75),
(11,2013,239.53),
(11,2014,225.96),
(11,2015,121.42),
(11,2016,229.6),
(11,2017,134.98),
(11,2018,221.66),
(11,2019,178.49),
(11,2020,101.07),
(11,2021,141.6),
(11,2022,165.42),
(12,2012,42.26),
(12,2013,31.37),
(12,2014,31.95),
(12,2015,44.35),
(12,2016,39.85),
(12,2017,32.22),
(12,2018,31.28),
(12,2019,31.37),
(12,2020,58.72),
(12,2021,63.76),
(12,2022,44.62),
(13,2012,141.54),
(13,2013,159.56),
(13,2014,279.56),
(13,2015,310.55),
(13,2016,150.99),
(13,2017,137.14),
(13,2018,209.23),
(13,2019,147.25),
(13,2020,320),
(13,2021,237.8),
(13,2022,219.78),
(14,2012,203.72),
(14,2013,167.98),
(14,2014,180.51),
(14,2015,172.26),
(14,2016,119.3),
(14,2017,183.5),
(14,2018,120.29),
(14,2019,123.71),
(14,2020,101.79),
(14,2021,173.39),
(14,2022,142.36),
(15,2012,477.11),
(15,2013,535.42),
(15,2014,252.27),
(15,2015,467.59),
(15,2016,242.37),
(15,2017,448.15),
(15,2018,430.24),
(15,2019,241.99),
(15,2020,418.81),
(15,2021,526.27),
(15,2022,381.08),
(16,2012,129.23),
(16,2013,196.35),
(16,2014,240.96),
(16,2015,247),
(16,2016,207.19),
(16,2017,146.32),
(16,2018,231.79),
(16,2019,274.52),
(16,2020,174.88),
(16,2021,156.33),
(16,2022,208.44);

insert into re_price value
(1,2012,15000),
(1,2013,15600),
(1,2014,16224),
(1,2015,16872.96),
(1,2016,17547.88),
(1,2017,18249.79),
(1,2018,18979.79),
(1,2019,19738.98),
(1,2020,20528.54),
(1,2021,21349.68),
(1,2022,22203.66),
(2,2012,21000),
(2,2013,22050),
(2,2014,23152.5),
(2,2015,24310.13),
(2,2016,25525.63),
(2,2017,26801.91),
(2,2018,28142.01),
(2,2019,29549.11),
(2,2020,31026.56),
(2,2021,32577.89),
(2,2022,34206.79),
(3,2012,14000),
(3,2013,14420),
(3,2014,14852.6),
(3,2015,15298.18),
(3,2016,15757.12),
(3,2017,16229.84),
(3,2018,16716.73),
(3,2019,17218.23),
(3,2020,17734.78),
(3,2021,18266.82),
(3,2022,18814.83),
(4,2012,16000),
(4,2013,16960),
(4,2014,17977.6),
(4,2015,19056.26),
(4,2016,20199.63),
(4,2017,21411.61),
(4,2018,22696.31),
(4,2019,24058.08),
(4,2020,25501.57),
(4,2021,27031.66),
(4,2022,28653.56),
(5,2012,13000),
(5,2013,13390),
(5,2014,13791.7),
(5,2015,14205.45),
(5,2016,14631.61),
(5,2017,15070.56),
(5,2018,15522.68),
(5,2019,15988.36),
(5,2020,16468.01),
(5,2021,16962.05),
(5,2022,17470.91),
(6,2012,11000),
(6,2013,11330),
(6,2014,11669.9),
(6,2015,12020),
(6,2016,12380.6),
(6,2017,12752.01),
(6,2018,13134.58),
(6,2019,13528.61),
(6,2020,13934.47),
(6,2021,14352.51),
(6,2022,14783.08),
(7,2012,16000),
(7,2013,16960),
(7,2014,17977.6),
(7,2015,19056.26),
(7,2016,20199.63),
(7,2017,21411.61),
(7,2018,22696.31),
(7,2019,24058.08),
(7,2020,25501.57),
(7,2021,27031.66),
(7,2022,28653.56);

insert into mf_price value
(1,2012,1200),
(1,2013,1248),
(1,2014,1297.92),
(1,2015,1349.84),
(1,2016,1403.83),
(1,2017,1459.98),
(1,2018,1518.38),
(1,2019,1579.12),
(1,2020,1642.28),
(1,2021,1707.97),
(1,2022,1776.29),
(2,2012,1300),
(2,2013,1352),
(2,2014,1406.08),
(2,2015,1462.32),
(2,2016,1520.82),
(2,2017,1581.65),
(2,2018,1644.91),
(2,2019,1710.71),
(2,2020,1779.14),
(2,2021,1850.31),
(2,2022,1924.32),
(3,2012,500),
(3,2013,525),
(3,2014,551.25),
(3,2015,578.81),
(3,2016,607.75),
(3,2017,638.14),
(3,2018,670.05),
(3,2019,703.55),
(3,2020,738.73),
(3,2021,775.66),
(3,2022,814.45),
(4,2012,1100),
(4,2013,1155),
(4,2014,1212.75),
(4,2015,1273.39),
(4,2016,1337.06),
(4,2017,1403.91),
(4,2018,1474.11),
(4,2019,1547.81),
(4,2020,1625.2),
(4,2021,1706.46),
(4,2022,1791.78),
(5,2012,300),
(5,2013,315),
(5,2014,330.75),
(5,2015,347.29),
(5,2016,364.65),
(5,2017,382.88),
(5,2018,402.03),
(5,2019,422.13),
(5,2020,443.24),
(5,2021,465.4),
(5,2022,488.67),
(6,2012,625),
(6,2013,650),
(6,2014,676),
(6,2015,703.04),
(6,2016,731.16),
(6,2017,760.41),
(6,2018,790.82),
(6,2019,822.46),
(6,2020,855.36),
(6,2021,889.57),
(6,2022,925.15),
(7,2012,1800),
(7,2013,1890),
(7,2014,1984.5),
(7,2015,2083.73),
(7,2016,2187.91),
(7,2017,2297.31),
(7,2018,2412.17),
(7,2019,2532.78),
(7,2020,2659.42),
(7,2021,2792.39),
(7,2022,2932.01);

insert into com_price value
(1,2012,3.24),
(1,2013,3.68),
(1,2014,3.32),
(1,2015,2.96),
(1,2016,2.06),
(1,2017,3.01),
(1,2018,3.32),
(1,2019,2.83),
(1,2020,2.7),
(1,2021,4.41),
(1,2022,4.17),
(2,2012,80.21),
(2,2013,90.23),
(2,2014,90.78),
(2,2015,80.48),
(2,2016,83.84),
(2,2017,93.41),
(2,2018,90.25),
(2,2019,70.35),
(2,2020,70.71),
(2,2021,100.38),
(2,2022,140.38),
(3,2012,150),
(3,2013,154.5),
(3,2014,159.14),
(3,2015,163.91),
(3,2016,168.83),
(3,2017,173.89),
(3,2018,179.11),
(3,2019,184.48),
(3,2020,190.02),
(3,2021,195.72),
(3,2022,201.59),
(4,2012,1600),
(4,2013,1800),
(4,2014,1200),
(4,2015,1300),
(4,2016,1200),
(4,2017,1400),
(4,2018,1300),
(4,2019,1200),
(4,2020,2000),
(4,2021,2100),
(4,2022,2200),
(5,2012,31),
(5,2013,42),
(5,2014,45),
(5,2015,33),
(5,2016,37),
(5,2017,41),
(5,2018,50),
(5,2019,51),
(5,2020,54),
(5,2021,48),
(5,2022,53),
(6,2012,510),
(6,2013,525.3),
(6,2014,541.06),
(6,2015,557.29),
(6,2016,574.01),
(6,2017,591.23),
(6,2018,608.97),
(6,2019,627.24),
(6,2020,510),
(6,2021,525.3),
(6,2022,541.06),
(7,2012,47.21),
(7,2013,48.63),
(7,2014,50.09),
(7,2015,51.59),
(7,2016,53.14),
(7,2017,47.21),
(7,2018,48.63),
(7,2019,50.09),
(7,2020,50.59),
(7,2021,51.09),
(7,2022,51.6);

