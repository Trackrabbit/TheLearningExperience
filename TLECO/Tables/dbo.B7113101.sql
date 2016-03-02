CREATE TABLE [dbo].[B7113101]
(
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recognition_SOrigin] [smallint] NOT NULL,
[BSSI_Recognition_SchStat] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[BSSI_Contract_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Prorate_All] [tinyint] NOT NULL,
[BSSI_Equal_Per_Period] [tinyint] NOT NULL,
[BSSI_Adjust_For_Prior] [tinyint] NOT NULL,
[BSSI_New_Renew] [smallint] NOT NULL,
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
[CNTRLTYP] [smallint] NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPCLDIST] [smallint] NOT NULL,
[BSSI_DefAccountCredit] [tinyint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[TRXDSCRN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[BSSI_ScheduleBasedOnDate] [tinyint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7113101] ADD CONSTRAINT [CK__B7113101__DOCDAT__32B3789B] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B7113101] ADD CONSTRAINT [CK__B7113101__ENDDAT__349BC10D] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7113101] ADD CONSTRAINT [CK__B7113101__STRTDA__33A79CD4] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B7113101] ADD CONSTRAINT [PKB7113101] PRIMARY KEY CLUSTERED  ([BSSI_Recognition_SNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B7113101] ON [dbo].[B7113101] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B7113101] ON [dbo].[B7113101] ([BSSI_Recognition_SchStat], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7113101] ON [dbo].[B7113101] ([VCHRNMBR], [CNTRLTYP], [APTVCHNM], [SPCLDIST], [DSTSQNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B7113101] ON [dbo].[B7113101] ([VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Recognition_SOrigin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Recognition_SchStat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7113101].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7113101].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7113101].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7113101].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7113101].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Prorate_All]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Equal_Per_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Adjust_For_Prior]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_New_Renew]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Offering_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Rev_Exp_Source_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Order_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Deferral_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_On_Hold_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Recog_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Total_Length]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7113101].[BSSI_Total_Schedule_Amou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7113101].[BSSI_Total_Amount_Recogn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7113101].[BSSI_Total_Amount_Remain]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Credit_Memo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7113101].[BSSI_Orig_Recog_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7113101].[BSSI_Adjustment_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[BSSI_Adj_Credit_Memo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[SPCLDIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_DefAccountCredit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7113101].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[DUMYRCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_ScheduleBasedOnDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7113101].[BSSI_Recog_Frequency]'
GO
GRANT SELECT ON  [dbo].[B7113101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7113101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7113101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7113101] TO [DYNGRP]
GO
