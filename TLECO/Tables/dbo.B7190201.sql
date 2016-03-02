CREATE TABLE [dbo].[B7190201]
(
[JRNENTRY] [int] NOT NULL,
[ORTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQCOUNT] [int] NOT NULL,
[BSSI_Audit_Trail_Seq_Num] [numeric] (19, 5) NOT NULL,
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recognition_SOrigin] [smallint] NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Debit_Acct_Index] [int] NOT NULL,
[BSSI_Credit_Acct_Index] [int] NOT NULL,
[BSSI_Debit_Account_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Debit_Account_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Debit_Account_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Debit_Account_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Credit_Account_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Credit_Account_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Credit_Account_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Credit_Account_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Recognition_Amount] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7190201] ADD CONSTRAINT [CK__B7190201__DATE1__1FAB911F] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B7190201] ADD CONSTRAINT [CK__B7190201__DOCDAT__1EB76CE6] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B7190201] ADD CONSTRAINT [PKB7190201] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [SEQCOUNT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7190201] ON [dbo].[B7190201] ([BSSI_Recognition_SNumber], [BSSI_Recognition_SOrigin], [BSSI_Line_Item_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B7190201] ON [dbo].[B7190201] ([JRNENTRY], [BSSI_Credit_Acct_Index], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B7190201] ON [dbo].[B7190201] ([JRNENTRY], [BSSI_Debit_Acct_Index], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190201].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190201].[SEQCOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190201].[BSSI_Audit_Trail_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190201].[BSSI_Recognition_SOrigin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190201].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190201].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190201].[BSSI_Debit_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190201].[BSSI_Credit_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Debit_Account_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Debit_Account_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Debit_Account_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Debit_Account_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Credit_Account_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Credit_Account_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Credit_Account_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Credit_Account_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190201].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190201].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190201].[BSSI_Recognition_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190201].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190201].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190201].[DATE1]'
GO
GRANT SELECT ON  [dbo].[B7190201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7190201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7190201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7190201] TO [DYNGRP]
GO
