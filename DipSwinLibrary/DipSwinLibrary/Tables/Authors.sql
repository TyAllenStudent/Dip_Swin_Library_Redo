﻿CREATE TABLE [dbo].[Authors]
(
	[AuthorID] INT NOT NULL,
	[AuthorFirstName] NVARCHAR(50) NOT NULL,
	[AuthorSurName] NVARCHAR(50) NOT NULL,
	[AuthorTFN] NVARCHAR(12) NOT NULL,
	CONSTRAINT PK_AUTHORS PRIMARY KEY (AuthorID)
)
