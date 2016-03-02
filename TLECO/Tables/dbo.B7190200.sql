CREATE TABLE [dbo].[B7190200]
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
ALTER TABLE [dbo].[B7190200] ADD CONSTRAINT [CK__B7190200__TIME1__43BE090C] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B7190200] ADD CONSTRAINT [CK__B7190200__BSSI_A__42C9E4D3] CHECK ((datepart(hour,[BSSI_Action_Date])=(0) AND datepart(minute,[BSSI_Action_Date])=(0) AND datepart(second,[BSSI_Action_Date])=(0) AND datepart(millisecond,[BSSI_Action_Date])=(0)))
GO
ALTER TABLE [dbo].[B7190200] ADD CONSTRAINT [CK__B7190200__ENDDAT__40E19C61] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7190200] ADD CONSTRAINT [CK__B7190200__STRTDA__3FED7828] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B7190200] ADD CONSTRAINT [CK__B7190200__TRXDAT__41D5C09A] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[B7190200] ADD CONSTRAINT [PKB7190200] PRIMARY KEY NONCLUSTERED  ([BSSI_Audit_Trail_Seq_Num]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B7190200] ON [dbo].[B7190200] ([BSSI_Recognition_SNumber], [BSSI_Line_Item_Sequence], [BSSI_Audit_Trail_Seq_Num], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7190200] ON [dbo].[B7190200] ([BSSI_Recognition_SNumber], [BSSI_Line_Item_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190200].[BSSI_Audit_Trail_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190200].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190200].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190200].[BSSI_Recognition_SOrigin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190200].[BSSI_Action_Event]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190200].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190200].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190200].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190200].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190200].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190200].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190200].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190200].[BSSI_Debit_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190200].[BSSI_Credit_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190200].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190200].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190200].[BSSI_Action_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190200].[TIME1]'
GO
GRANT SELECT ON  [dbo].[B7190200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7190200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7190200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7190200] TO [DYNGRP]
GO
