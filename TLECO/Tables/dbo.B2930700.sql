CREATE TABLE [dbo].[B2930700]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[BSSI_LongDescription] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[ORDOCAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__B2930700__DEX_RO__1079C9E8] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER .zDT_B2930700U ON TLECO..B2930700 AFTER UPDATE AS /* 12.00.0311.000 */ set nocount on BEGIN UPDATE TLECO..B2930700 SET DEX_ROW_TS = GETUTCDATE() FROM TLECO..B2930700, inserted WHERE B2930700.BSSI_Lease_Loan_Number = inserted.BSSI_Lease_Loan_Number AND B2930700.YEAR1 = inserted.YEAR1 AND B2930700.JRNENTRY = inserted.JRNENTRY END set nocount off 
GO
ALTER TABLE [dbo].[B2930700] ADD CONSTRAINT [CK__B2930700__DOCDAT__0F85A5AF] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2930700] ADD CONSTRAINT [PKB2930700] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number], [YEAR1], [JRNENTRY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930700].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930700].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930700].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930700].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930700].[BSSI_LongDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930700].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930700].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930700].[ORDOCAMT]'
GO
GRANT SELECT ON  [dbo].[B2930700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930700] TO [DYNGRP]
GO
