DROP TABLE Venue CASCADE CONSTRAINTS PURGE;
DROP TABLE Contact_Person CASCADE CONSTRAINTS PURGE;
DROP TABLE Musician CASCADE CONSTRAINTS PURGE;
DROP TABLE Sponsor CASCADE CONSTRAINTS PURGE;
DROP TABLE Staff CASCADE CONSTRAINTS PURGE;
DROP TABLE Concert CASCADE CONSTRAINTS PURGE;
DROP TABLE Donation CASCADE CONSTRAINTS PURGE;

Create Table Venue
(VenueID            number(5)        primary key
 ,Name              varchar2(50)     Not null
 ,Street_Address    varchar2(50)    
 ,City              varchar2(20)
 ,Province          varchar2(20)
 ,Post_Code         varchar2(20)
 ,Seating_Capacity  varchar2(20)     CHECK(Seating_Capacity > 0)
);
INSERT INTO Venue VALUES(05684, 'Shandong Grand Theatre', 'Weihai Road', 'JiNan', 'ShanDong', '250000', '3500');
INSERT INTO Venue VALUES(06458, 'ZiBo Grand Theatre', 'Central Road', 'ZiBo', 'ShanDong', '255000', '1500');
INSERT INTO Venue VALUES(05645, 'QingDao Grand Theatre', '', 'QingDao', 'ShanDong', '266000', '2000');
INSERT INTO Venue VALUES(05786, 'YanTai Grand Theatre', 'HuaGuang Rode', 'YanTai', 'ShanDong', '264000', '1800');
INSERT INTO Venue VALUES(05762, 'SDUT Grand Theatre', 'RenMin Road', 'ZiBo', 'ShanDong', '255000', '1200');

Create Table Contact_Person
(Contact_PersonID          number(3)            Primary key
 ,Name                     varchar2(20)         Not Null
 ,Phone                    varchar2(15)         Not Null  unique
 ,Email                    varchar(50)          Not Null  unique
 ,VenueID                  number(6)            Not Null
                           REFERENCES Venue(VenueID)
);
INSERT INTO Contact_Person VALUES(001, 'Tom', '135-8954-6895', 'Tom13589546895@qq.com', 05684);
INSERT INTO Contact_Person VALUES(002, 'Bob', '135-5454-8962', 'BOb1997@qq.com', 06458);
INSERT INTO Contact_Person VALUES(003, 'Smith', '135-8454-9995', 'Smith1987@qq.com', 05645);
INSERT INTO Contact_Person VALUES(004, 'Jones', '139-9955-6895', 'Jones5689@qq.com', 05786);
INSERT INTO Contact_Person VALUES(005, 'John', '138-8957-6123', 'John@qq.com', 05762);

Create Table Musician
(MusicianID        number(4)             primary key
 ,Name             varchar2(20)          Not Null  unique
 ,Street_Address   varchar2(50)
 ,City             varchar2(20)
 ,Provice          varchar2(20)
 ,Phone            varchar2(20)          Not Null  unique
 ,Email            varchar2(50)          Not Null  unique
 ,Music_Type       varchar2(50)
 ,Cost             number(7)
);
INSERT INTO Musician VALUES (5689, 'Kevin', 'ChangAn Road', 'BeiJing' , 'BeiJing', '138-2565-4851', 'Kevin@qq.com', 'Jazz', 50000);
INSERT INTO Musician VALUES (5690, 'Helena', 'FengMing Road', 'ShangHai', 'ShangHai', '170-6542-1345', '654265@qq.com', 'Pop music', 72000);
INSERT INTO Musician VALUES (5691, 'Jeason', 'QingNian Road', 'JiNan', 'ShanDong', '172-8654-0918', '626554@qq.com', 'Blues', 63000);
INSERT INTO Musician VALUES (5692, 'Aaron', 'QiChang Road', 'ChongQing', 'ChongQing', '178-1425-8364', '465265@qq.com', 'Classical music', 54000);
INSERT INTO Musician VALUES (5693, 'Cael', 'RunQing Road', 'HangZhou', 'ZheJiang', '183-7645-4762', '426655@qq.com', 'Rock &Roll', 73000);
INSERT INTO Musician VALUES (5694, 'Dafydd', 'XiQi Road', 'ChangSha', 'HuNan', '134-6898-6434', '865265@qq.com', 'Orchestral music', 32000);
INSERT INTO Musician VALUES (5695, 'Babara', 'JingLiu Road', 'YanAn', 'ShanXi', '157-9522-5707', '642765@qq.com', 'Contemporary music', 82000);
INSERT INTO Musician VALUES (5696, 'Hachilah', 'LiQing Road', 'DaLian', 'LiaoNing', '169-7641-2346', '978265@qq.com', 'Orchestra', 76000);
INSERT INTO Musician VALUES (5697, 'Kade', 'ChongYang Road', 'ChengDu', 'SiChuan', '176-5432-5678',  '124265@qq.com', 'Folk', 72700);
INSERT INTO Musician VALUES (5698, 'Mabel', 'PuFeng Road', 'ChangChun', 'JiLin', '134-2568-7439', '754129@qq.com' , 'Trance', 72090);

Create Table Sponsor
(SponsorID         number(7)            primary key
 ,First_Name       varchar2(20)         Not Null
 ,Last_Name        varchar2(20)         Not Null
 ,Stress_address   varchar2(50)
 ,City             varchar2(20)
 ,Postcode         varchar2(8)
 ,Provice          varchar2(20)
 ,Phone            varchar2(20)         Not Null 
 ,Email            varchar2(50)         unique
);
INSERT INTO Sponsor VALUES(5600001, 'Smith', 'John', 'HuaGuang Road', 'JiNan', '250000', 'ShanDong', '131-5656-4564', 'SJ158@168.com');
INSERT INTO Sponsor VALUES(5600002, 'Kai', 'Wang', 'NanJing Road', 'BeiJing', '100000', 'BeiJing', '156-4644-4585', 'JWS@168.com');
INSERT INTO Sponsor VALUES(5600003, 'YiXing', 'Zhang', 'Central Road', 'ChangSha', '159200', 'HuNan', '157-9659-6478', 'ZYXA@qq.com');
INSERT INTO Sponsor VALUES(5600004, 'Jones', 'Larry', 'First street', 'Philadelphia', '19100', 'Pennsylvania', '001-565-864-5454', 'Jones568@168.com');
INSERT INTO Sponsor VALUES(5600005, 'ShanShan', 'Li', 'Central Road', 'XiAn', '286000', 'ShanXi', '168-8956-8956', 'Shanshanli@qq.com');
INSERT INTO Sponsor VALUES(5600006, 'Kai', 'Liu', 'South-east Road', 'ShiJiaZhuang', '155000', 'HeNan', '151-5874-5846', 'KL151@qq.com');
INSERT INTO Sponsor VALUES(5600007, 'Nian', 'Lu', 'HuaGuang Road', 'QingDao', '266000', 'ShanDong', '139-8321-4568', 'QingLU@163.com');
INSERT INTO Sponsor VALUES(5600008, 'Nian', 'Li', 'Nanjing Road', 'ZiBo', '255000', 'ShanDong', '151-59863-4123', 'LINian@163.com');
INSERT INTO Sponsor VALUES(5600009, '‘Anonymous', '-', '-', '-', '-', '-', '-', '-');
INSERT INTO Sponsor VALUES(5600010, 'ZiXuan', 'Wei', 'ChongQing Road', 'YanTai', '264000', 'ShanDong', '164-8973-4456', 'ZiXuan@qq.com');

Create Table Staff
(StaffID                number(11)            primary key
 ,Last_Name             varchar2(20)          Not Null
 ,First_Name            varchar2(20)          Not Null 
 ,Date_of_Donation      Date
 ,Title                 varchar2(20)
 ,Phone                 varchar2(15)          Not Null  unique
 ,Email                 varchar2(50)          Not Null  unique
 ,ManagerID             Number(11)    
                        REFERENCES Staff(StaffID)  
);
INSERT INTO Staff VALUES(16110789003, 'JingJing', 'Zhang', To_Date('05/01/2016', 'mm/dd/yyyy'), 'Manager', '161-5987-2222', 'ZhangJJ@qq.com', 16110789003);
INSERT INTO Staff VALUES(16110789001, 'ZhiBo', 'Zhang', To_Date('01/20/2018', 'mm/dd/yyyy'), 'Employee', '136-8974-1111', '13689741111@qq.com', 16110789003);
INSERT INTO Staff VALUES(16110789002, 'Qing', 'Han', To_Date('05/01/2017', 'mm/dd/yyyy'), 'Employee', '138-1974-1511', 'HanQing@qq.com', 16110789003);
INSERT INTO Staff VALUES(16110789004, 'Shuang', 'Liang', To_Date('08/20/2016', 'mm/dd/yyyy'), 'Manager', '165-8988_8886', 'XiaoShuang@qq.com', 16110789004);
INSERT INTO Staff VALUES(16110789005, 'DuoLa', 'Mi', To_Date('05/20/2017', 'mm/dd/yyyy'), 'Employee',  '165-8765-3321', 'LalaMi@qq.com', 16110789004);
INSERT INTO Staff VALUES(16110789006, 'Feng', 'Xia', To_Date('05/20/2017', 'mm/dd/yyyy'), 'Employee', '131-5689-1312', 'Feng@qq.com', 16110789003);
INSERT INTO Staff VALUES(16110789007, 'LiNa', 'Zhang', To_Date('01/20/2018', 'mm/dd/yyyy'), 'Employee', '159-8979-1231', 'GongChangZhang@qq.com', null);

Create Table Concert
(ConcertID             number(6)         primary key
 ,Name                 varchar2(50)      Not null 
 ,Date_of_Concert      DATE              Not null
 ,StarTime             varchar2(20)      Not null 
 ,TicketPrice          varchar2(5)       Not null    CHECK(TicketPrice > 0)
 ,VenueID              number(6)         Not Null
                       REFERENCES Venue(VenueID)
 ,MusicianID           number(5)         Not Null
                       REFERENCES Musician(MusicianID)
 ,StaffID              number(11)        NOt Null  
                       REFERENCES Staff(StaffID)
);
INSERT INTO Concert VALUES(155685, 'Chocolates Guitar Solo Recital', TO_date('06/15/2018', 'mm/dd/yyyy'), '19:00:00', '50', 06458, 5689, 16110789003);
INSERT INTO Concert VALUES(156879, 'ChangQing Guitear Solo Recital', TO_date('06/18/2018', 'mm/dd/yyyy'), '19:30:00', '180', 05684, 5691, 16110789001);
INSERT INTO Concert VALUES(164855, 'Sound of Water Piano Solo Recital', TO_date('06/08/2018', 'mm/dd/yyyy'), '20:00:00', '120', 06458, 5694, 16110789004);
INSERT INTO Concert VALUES(156484, 'Cannon Violin Solo Recital', TO_date('06/30/2018', 'mm/dd/yyyy'), '20:00:00', '150', 05786, 5697, 16110789003);
INSERT INTO Concert VALUES(156486, 'Jazz Sax Solo Recital', TO_date('06/28/2018', 'mm/dd/yyyy'), '16:00:00', '150', 05762, 5691, 16110789007);
INSERT INTO Concert VALUES(186452, 'Liang Zhu Violin Solo Recital', TO_date('06/25/2018', 'mm/dd/yyyy'), '16:00:00', '200', 05786, 5698, 16110789002);

Create Table Donation
(DonationID        number(9)           primary key
 ,Date_of_Donation Date                Not Null
 ,How_Much         number(9)           Not Null         CHECK(How_Much > 0)
 ,ConcertID        number(6)      
                   REFERENCES Concert(ConcertID)
 ,SponsorID        number(7)           Not Null
                   REFERENCES Sponsor(SponsorID)
 ,StaffID          number(11)          Not Null
                   REFERENCES Staff(StaffID)  
);
INSERT INTO Donation VALUES(10053001, TO_date('05/06/2018', 'mm/dd/yyyy'), 50000, 155685, 5600001, 16110789001);
INSERT INTO Donation VALUES(10053002, TO_date('05/08/2018', 'mm/dd/yyyy'), 80000, 155685, 5600002, 16110789001);
INSERT INTO Donation VALUES(10053003, TO_date('05/10/2018', 'mm/dd/yyyy'), 30000, 156879, 5600003, 16110789001);
INSERT INTO Donation VALUES(10053004, TO_date('05/15/2018', 'mm/dd/yyyy'), 50000, 164855, 5600004, 16110789002);
INSERT INTO Donation VALUES(10053005, TO_date('05/15/2018', 'mm/dd/yyyy'), 50000, 156484, 5600005, 16110789002);
INSERT INTO Donation VALUES(10053006, TO_date('05/15/2018', 'mm/dd/yyyy'), 100000, 156486, 5600006, 16110789002);
INSERT INTO Donation VALUES(10053007, TO_date('05/18/2018', 'mm/dd/yyyy'), 2000, 186452, 5600007, 16110789003);
INSERT INTO Donation VALUES(10053008, TO_date('05/20/2018', 'mm/dd/yyyy'), 500, 155685, 5600008, 16110789003);
INSERT INTO Donation VALUES(10053009, TO_date('05/30/2018', 'mm/dd/yyyy'), 5000, null, 5600009, 16110789003);
INSERT INTO Donation VALUES(10053010, TO_date('05/30/2018', 'mm/dd/yyyy'), 90000, null, 5600010, 16110789004);
INSERT INTO Donation VALUES(10053011, TO_date('06/01/2018', 'mm/dd/yyyy'), 50000, 186452, 5600001, 16110789004);
INSERT INTO Donation VALUES(10053012, TO_date('06/02/2018', 'mm/dd/yyyy'), 50000, null, 5600002, 16110789004);
INSERT INTO Donation VALUES(10053013, TO_date('06/02/2018', 'mm/dd/yyyy'), 5000, 186452, 5600003, 16110789005);
INSERT INTO Donation VALUES(10053014, TO_date('06/05/2018', 'mm/dd/yyyy'), 50000, 156879, 5600004, 16110789005);
INSERT INTO Donation VALUES(10053015, TO_date('06/06/2018', 'mm/dd/yyyy'), 70000, 156879, 5600005, 16110789005);
INSERT INTO Donation VALUES(10053016, TO_date('06/09/2018', 'mm/dd/yyyy'), 100000, 155685, 5600006, 16110789006);
INSERT INTO Donation VALUES(10053017, TO_date('06/12/2018', 'mm/dd/yyyy'), 80000, 186452, 5600007, 16110789006);
INSERT INTO Donation VALUES(10053018, TO_date('06/12/2018', 'mm/dd/yyyy'), 50000, null, 5600008, 16110789006);
INSERT INTO Donation VALUES(10053019, TO_date('06/12/2018', 'mm/dd/yyyy'), 90000, 186452, 5600009, 16110789007);
INSERT INTO Donation VALUES(10053020, TO_date('06/15/2018', 'mm/dd/yyyy'), 100000, null, 5600010, 16110789007);


-- Q1
create or replace view venues
as
(
select v.name as venue_name, v.city as venue_city, v.province as venue_province, c.name as contact_person_name, c.phone as contact_person_phone, v.seating_capacity
from venue v join contact_Person c on (c.venueID = v.venueID)
);



-- Q2
create or replace view musicians
as
(
select name, email, phone, cost
from musician
);

-- Q3
create or replace view Concerts
as
(
select c.date_of_concert, c.name as name_of_concert, v.name as Venue_of_concert
from concert c join venue v on (c.venueID = v.venueid)
);


-- Q4
create or replace view Musicians_of_Performances
as
(
select m.name as Musician_Name, nvl(c.name,'No Concert Played')Concert_Name
from musician m 
left outer join concert c on (m.musicianID = c.musicianid)

);

-- Q5
create or replace view Sponsors
as
(
select s.Last_Name, s.First_Name, s.Phone, nvl(sum(how_much),0)Total_Amount
  from Sponsor s join Donation d on (s.SponsorId = d.SponsorId)
  Group by
  (s.Last_Name, s.First_Name, s.Phone) 
);


-- Q7
create or replace view Sponsors_Last30Days
as
(
select s.SponsorID, s.first_name, s.last_name, Phone as Sponsor_Phone, d.date_of_donation
  from sponsor s left outer join donation d 
  on(s.sponsorid = d.sponsorid)
  where date_of_donation > sysdate - 30
);


-- Q8
create or replace view Avg_Donation
as
(
  Select avg(How_Much) as Average_of_Donation
  from Donation
);

-- Q9
create or replace view Max_Sponsor
as
(
 select s.Last_Name||','||s.First_Name as name, nvl(sum(how_much),0)Max_Total_Amount
from Sponsor s join Donation d 
on (s.SponsorId = d.SponsorId)
Group by(s.Last_Name, s.First_Name, s.Phone)
having sum(how_much) = 
(select max(sum(how_much))
 from donation
 group by sponsorid
)
);


-- Q10
create or replace view City
as
(
  select city as Sponsor_City, count(Sponsorid) as Num_of_Sponsor
   from Sponsor 
   Group by City
);

-- Q12
Create or replace view Managers
as
(select s1.last_name||','||s1.First_name as employee_name, nvl(s2.last_name,'No Manager') ||','||s2.First_name His_Manager_Name
from Staff s1
Left outer join staff s2
on (s1.managerid = s2.staffid)
);



CREATE TABLE Concert_Log(
  log_user  VARCHAR2(50),
  log_type  VARCHAR2(50),
  log_date  VARCHAR2(50)
);

CREATE OR REPLACE TRIGGER Concert_TRIGGER
 AFTER DELETE OR INSERT OR UPDATE ON Concert
DECLARE
 V_TYPE Concert_LOG.Log_TYPE%TYPE;
BEGIN
 IF INSERTING THEN
  V_TYPE := 'INSERT';
  DBMS_OUTPUT.PUT_LINE('Insert');
 ELSIF UPDATING THEN
  V_TYPE := 'UPDATE';
  DBMS_OUTPUT.PUT_LINE('Update');
 ELSIF DELETING THEN
  V_TYPE := 'DELETE';
  DBMS_OUTPUT.PUT_LINE('Delete');
 END IF;
 INSERT INTO Concert_LOG
 VALUES
  (USER, V_TYPE, TO_CHAR(SYSDATE, 'yyyy-mm-dd hh24:mi:ss'));
END;












