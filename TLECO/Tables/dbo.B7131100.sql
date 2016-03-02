CREATE TABLE [dbo].[B7131100]
(
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recognition_SOrigin] [smallint] NOT NULL,
[BSSI_Recognition_SchStat] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[BSSI_Contract_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Prorate_All] [tinyint] NOT NULL,
[BSSI_Equal_Per_Period] [tinyint] NOT NULL,
[BSSI_New_Renew] [smallint] NOT NULL,
[BSSI_Adjust_For_Prior] [tinyint] NOT NULL,
[BSSI_Offering_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rev_Exp_Source_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Order_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferral_Acct_Index] [int] NOT NULL,
[BSSI_On_Hold_Acct_Index] [int] NOT NULL,
[BSSI_Recog_Acct_Index] [int] NOT NULL,
[BSSI_Total_Length] [int] NOT NULL,
[BSSI_Total_Schedule_Amou] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Amount_Recogn] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Amount_Remain] [numeric] (19, 5) NOT NULL,
[BSSI_Credit_Memo] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Orig_Recog_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Adjustment_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Adj_Credit_Memo] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[BSSI_DefAccountCredit] [tinyint] NOT NULL,
[BSSI_ScheduleBasedOnDate] [tinyint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7131100] ADD CONSTRAINT [CK__B7131100__DOCDAT__500ED158] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B7131100] ADD CONSTRAINT [CK__B7131100__ENDDAT__51F719CA] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7131100] ADD CONSTRAINT [CK__B7131100__STRTDA__5102F591] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B7131100] ADD CONSTRAINT [PKB7131100] PRIMARY KEY NONCLUSTERED  ([BSSI_Recognition_SNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B7131100] ON [dbo].[B7131100] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B7131100] ON [dbo].[B7131100] ([BSSI_Recognition_SchStat], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B7131100] ON [dbo].[B7131100] ([POPRCTNM], [CURNCYID], [VENDORID], [DISTTYPE], [ACTINDX], [XCHGRATE], [RCPTLNNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B7131100] ON [dbo].[B7131100] ([POPRCTNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7131100] ON [dbo].[B7131100] ([POPRCTNM], [RCPTLNNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Recognition_SOrigin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Recognition_SchStat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7131100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7131100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7131100].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7131100].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7131100].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Prorate_All]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Equal_Per_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_New_Renew]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Adjust_For_Prior]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Offering_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Rev_Exp_Source_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Order_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Deferral_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_On_Hold_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Recog_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Total_Length]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7131100].[BSSI_Total_Schedule_Amou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7131100].[BSSI_Total_Amount_Recogn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7131100].[BSSI_Total_Amount_Remain]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Credit_Memo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7131100].[BSSI_Orig_Recog_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7131100].[BSSI_Adjustment_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[BSSI_Adj_Credit_Memo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7131100].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_DefAccountCredit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_ScheduleBasedOnDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131100].[BSSI_Recog_Frequency]'
GO
GRANT SELECT ON  [dbo].[B7131100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7131100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7131100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7131100] TO [DYNGRP]
GO
