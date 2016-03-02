CREATE TABLE [dbo].[PM81000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIME1] [datetime] NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Change_Status] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[Default_On_Trx] [tinyint] NOT NULL,
[Stored_Account_Index] [int] NOT NULL,
[Stored_Default_On_Trx] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM81000] ADD CONSTRAINT [CK__PM81000__TIME1__0BD1B136] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[PM81000] ADD CONSTRAINT [PKPM81000] PRIMARY KEY NONCLUSTERED  ([USERID], [CMPNYNAM], [TIME1], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM81000] ON [dbo].[PM81000] ([USERID], [CMPNYNAM], [TIME1], [Change_Status], [Stored_Account_Index], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM81000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM81000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM81000].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM81000].[Change_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM81000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM81000].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM81000].[Default_On_Trx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM81000].[Stored_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM81000].[Stored_Default_On_Trx]'
GO
GRANT SELECT ON  [dbo].[PM81000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM81000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM81000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM81000] TO [DYNGRP]
GO
