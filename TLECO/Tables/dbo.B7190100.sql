CREATE TABLE [dbo].[B7190100]
(
[BSSI_Audit_Trail_Seq_Num] [numeric] (19, 5) NOT NULL,
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[BSSI_Recognition_SOrigin] [smallint] NOT NULL,
[BSSI_Action_Event] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[BSSI_Debit_Acct_Index] [int] NOT NULL,
[BSSI_Credit_Acct_Index] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Action_Date] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7190100] ADD CONSTRAINT [CK__B7190100__TIME1__5E71FF48] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B7190100] ADD CONSTRAINT [CK__B7190100__BSSI_A__5D7DDB0F] CHECK ((datepart(hour,[BSSI_Action_Date])=(0) AND datepart(minute,[BSSI_Action_Date])=(0) AND datepart(second,[BSSI_Action_Date])=(0) AND datepart(millisecond,[BSSI_Action_Date])=(0)))
GO
ALTER TABLE [dbo].[B7190100] ADD CONSTRAINT [CK__B7190100__ENDDAT__5B95929D] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7190100] ADD CONSTRAINT [CK__B7190100__STRTDA__5AA16E64] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B7190100] ADD CONSTRAINT [CK__B7190100__TRXDAT__5C89B6D6] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[B7190100] ADD CONSTRAINT [PKB7190100] PRIMARY KEY NONCLUSTERED  ([BSSI_Audit_Trail_Seq_Num]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B7190100] ON [dbo].[B7190100] ([BSSI_Recognition_SNumber], [BSSI_Line_Item_Sequence], [BSSI_Audit_Trail_Seq_Num], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7190100] ON [dbo].[B7190100] ([BSSI_Recognition_SNumber], [BSSI_Line_Item_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190100].[BSSI_Audit_Trail_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190100].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190100].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190100].[BSSI_Recognition_SOrigin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190100].[BSSI_Action_Event]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190100].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190100].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190100].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190100].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190100].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190100].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190100].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190100].[BSSI_Debit_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190100].[BSSI_Credit_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190100].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190100].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190100].[BSSI_Action_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190100].[TIME1]'
GO
GRANT SELECT ON  [dbo].[B7190100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7190100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7190100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7190100] TO [DYNGRP]
GO
