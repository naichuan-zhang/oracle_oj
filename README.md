# A Project (SQL - ORACLE)

Background:  The Shandong Music Festival (SMF) is a non-profit organization that conducts an annual music festival. SMF understands that you are quite talented at developing database applications and so wants you to build a system for them. The Shandong Music Festival has been very successful on the Shandong music scene for some time. Each summer it offers many different musical concerts at various locations in Zibo and nearby cities. These concerts have various types of musicians and musical styles providing entertainment. The festival would like you to develop a database system to help them conduct their business which is briefly described below.  
 
Business Functions: The Shandong Music Festival conducts musical concerts each summer. Each concert is created / organized by a member of the SMF staff who is responsible for its success. When a concert is scheduled information about the concert must be stored.  Information about concerts include a concert ID, concert name (e.g., Jing Ning Bamboo Flute Solo Recital) (required), concert date (required), concert start time (required), and ticket price (required, > 0). A concert is held only once and is held at a concert hall or other type of facility. SMF calls these places venues. A specific concert is held at only one venue. These venues are places like the Concert hall in Shandong Grand Theatre and the Lishan Theater in Ji’nan.  Information about a venue include a venue ID, venue name (required), street address, city, province, postcode, and seating capacity (>0). Each venue is managed by a contact person. Information about a contact person includes contact name (required), contact phone number (required, unique) and contact email address (required, unique). Each venue has only one contact person and a contact person is associated with only one venue. SMF also wants to track musicians (musician id, musician name/group (required, unique), street address, city, province, phone (required, unique), email (required, unique), type of music (e.g., classical, rap) and the cost the musician charges to play (>0). Note that SMF will keep information about some musicians who have not yet played a concert but may in the future.  So, a concert is on one date at one time at one venue and has only one musician who plays at the concert. 
 
SMF receives revenues in two ways: donations and ticket sales. SMF has another organization who is managing ticket sales, so you do not need to do anything about ticket sales. SMF does want you to help record donations.  
 
SMF receives donations from people in the community. They call the people who make donations sponsors. SMF wants to keep information about sponsors including sponsor ID (PK), first name (required), last name (required), street address, city, postcode, province, phone (required), email (unique). SMF also wants to record each donation that is made by a sponsor (donation id (PK), date of donation (required), and how much the donation was for (required, >0)).  Finally, a donation can be made for a specific concert, though a donation does not have to be made for a concert. Donations are managed by staff and any donation that is made is recorded by a member of the staff.  
 
Information about staff include the following: Staff ID, last name (required), first name (required), title, date of hire, phone (unique, required), email (unique, required). 
 
For this assignment, draw an ER diagram of the above situation and, if you like, have the diagram reviewed by me. Also create a list of attributes for each entity and include notation about the characteristics of each attribute (e.g., PK, required) using the notation described in class. Once this is done, you are to develop tables for each of the entities and relationships described above in ORACLE SQL. The tables must have quality checks such as having a PK in each table, validation rules and validation checks, and referential integrity constraints. 
 
Note, the following business rules / relationships exist: 
• A donation can only be given by one sponsor. 
• A donation must have a sponsor. For anonymous donations, make a sponsor named ‘anonymous’.  
• You cannot delete a sponsor if they have made a donation.  
• A donation may be given for a concert; that is, sponsor John Smith can specify that his donation should be for the Jing Ning Bamboo Flute Solo Recital concert on Thursday, June 28, 2018. 
• A concert must have a musician perform and a concert must have a venue. 
• A venue can be created even though no concerts have been performed there. 
• A musician can be created even though the musician has not performed in a concert.
• You cannot delete a musician if the musician has played in a concert. 
• You cannot delete a venue if it has been used for a concert.
• Each member of the staff may report to a manager who is also a member of the staff. Not all members of the staff have people reporting to them. Not all members of staff report to someone. 
 
 
Script Write an ORACLE SQL script that when executed creates the tables needed to build this system. The script must drop all the tables and then CREATE all the tables. (This will be explained in class). 
 
Data 
Include in your script mentioned above, using ORACLE SQL INSERT statements, add the following data: • Add 7 concerts all during the month of June 2018. • Add 10 musicians • Add 10 sponsors • Add 20 donations (have some sponsors who have not made a donation, have some sponsors who have made 3 or more donations). Have at least 7 sponsors make donations. Have 10 donations made in May 2018 and 10 donations made in June 2018. • Add 5 venues. 
 
 
 
Views 
 
Create the following VIEWs in ORACLE SQL: 
 
1. List of venues (venue name, city, province, contact name, contact phone, seating capacity) 
2. List of musicians including musician name, email, phone number and cost to play. 
3. List of concerts including date of concert, name of concert, and venue of the concert. 
4. List of musicians and performances showing musician name and concert name. Include the names of musicians even if they have not played a concert. For the concert name show the words “No Concert Played”. 
5. List of all sponsors (last name, first name, phone) and the total amount they have donated (aggregate query). 
6. List the name and the total amount given by each sponsor.  
7. List of Sponsors who donated money in the last 30 days (use Sysdate to determine this). 
8. List the average size of a donation given to the SMF. 
9. List the name and the total amount donated for the Sponsor who donated the largest total amount to the SMF. Only list this Sponsor; do not list anyone else. 
10. List the names of cities and the number of sponsors in each city. 
11. List the names and phone numbers of Sponsor from a city where the user enters the name of the city. 
12. List of the members of the staff along with the name of their manager. If a member of the staff does not report to anyone, show the words “No Manager” instead of a staff name. When listing the names show the name as lastname, firstname as in “Smith, John”.  
 
Note, there may be other VIEWs that you will be asked to create.  
 
Triggers 
 
Write the following triggers in ORACLE PL/SQL.  

 First create a table named DONATIONLOG that has the following attributes: userID, actiondate, amount, donationID, action.  
 
1. When a record is added to the donation table, using an Oracle trigger, insert a record into the DONATIONLOG table that records the userID of the person who has inserted the record, the date the insert was performed, the amount of the donation, and the word “INSERT”. 
2. When a record is deleted from the donation table, using an Oracle trigger, insert a record into the DONATIONLOG table that records the userID of the person who has deleted the record, the date the delete was performed, the amount of the donation that was deleted, and the word “DELETE”. 
 
Test your triggers to assure that they work. 
