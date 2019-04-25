﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM Loans;
DELETE FROM Students;
DELETE FROM Books;
DELETE FROM Authors;

INSERT INTO STUDENTS (STUDENTID, FIRSTNAME, LASTNAME, EMAIL, PHONENUMBER) VALUES
('s12345678', 'Fred', 'Flintstone', '12345678@student.swin.edu.au', '0400 555 111'),
('s23456789', 'Barney', 'Rubble', '23456789@student.swin.edu.au', '0400 555 222'),
('s34567890', 'Bam-Bam', 'Rubble', '34567890@student.swin.edu.au', '0400 555 333');

INSERT INTO AUTHORS (AUTHORID, AUTHORFIRSTNAME, AUTHORSURNAME, AUTHORTFN) VALUES
(32567, 'Edgar', 'Codd', '150 111 222'),
(76543, 'Vinton', 'Cerf', '150 222 333'),
(12345, 'Alan', 'Turing', '150 333 444');

INSERT INTO BOOKS (ISBN, BOOKTITLE, YEARPUBLISHED, AUTHORID) VALUES
('978-3-16-148410-0', 'Relationships with Databases, the ins and outs', 1970, 32567),
('978-3-16-148410-1', 'Normalisation, how to make a database geek fit in.', 1973, 32567),
('978-3-16-148410-2', 'TCP/IP, the protocol for the masses.', 1983, 76543),
('978-3-16-148410-3', 'The Man, the Bombe, and the Enigma.', 1940, 12345);

INSERT INTO LOANS (STUDENTID, ISBN, DateBorrowed) VALUES
('s12345678', '978-3-16-148410-0', '01/10/2011'),
('s23456789', '978-3-16-148410-1', '03/30/2019');

END;