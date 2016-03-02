CREATE TABLE [dbo].[B4603101]
(
[BSSI_Rev_Sharing_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[PRCNTAGE] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Rev_Sharing_Limit_T] [smallint] NOT NULL,
[BSSI_Limit_Start_Date] [datetime] NOT NULL,
[BSSI_Limit_End_Date] [datetime] NOT NULL,
[BSSI_Limit_Start_Int] [smallint] NOT NULL,
[BSSI_Limit_End_Int] [smallint] NOT NULL,
[BSSI_Limit_Start_SalesAm] [numeric] (19, 5) NOT NULL,
[BSSI_Limit_End_SalesAmt] [numeric] (19, 5) NOT NULL,
[PMAPACCT_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMAPACCT_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMAPACCT_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMAPACCT_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMPRCHAC_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMPRCHAC_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMPRCHAC_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMPRCHAC_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4603101] ADD CONSTRAINT [CK__B4603101__BSSI_L__71FAA05F] CHECK ((datepart(hour,[BSSI_Limit_End_Date])=(0) AND datepart(minute,[BSSI_Limit_End_Date])=(0) AND datepart(second,[BSSI_Limit_End_Date])=(0) AND datepart(millisecond,[BSSI_Limit_End_Date])=(0)))
GO
ALTER TABLE [dbo].[B4603101] ADD CONSTRAINT [CK__B4603101__BSSI_L__71067C26] CHECK ((datepart(hour,[BSSI_Limit_Start_Date])=(0) AND datepart(minute,[BSSI_Limit_Start_Date])=(0) AND datepart(second,[BSSI_Limit_Start_Date])=(0) AND datepart(millisecond,[BSSI_Limit_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[B4603101] ADD CONSTRAINT [CK__B4603101__ENDDAT__701257ED] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4603101] ADD CONSTRAINT [CK__B4603101__STRTDA__6F1E33B4] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4603101] ADD CONSTRAINT [PKB4603101] PRIMARY KEY NONCLUSTERED  ([BSSI_Rev_Sharing_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4603101] ON [dbo].[B4603101] ([BSSI_Rev_Sharing_ID], [SLPRSNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4603101] ON [dbo].[B4603101] ([BSSI_Rev_Sharing_Limit_T], [BSSI_Rev_Sharing_ID], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4603101] ON [dbo].[B4603101] ([SLPRSNID], [BSSI_Rev_Sharing_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[BSSI_Rev_Sharing_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603101].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603101].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603101].[PRCNTAGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603101].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603101].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603101].[BSSI_Rev_Sharing_Limit_T]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603101].[BSSI_Limit_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603101].[BSSI_Limit_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603101].[BSSI_Limit_Start_Int]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603101].[BSSI_Limit_End_Int]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603101].[BSSI_Limit_Start_SalesAm]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603101].[BSSI_Limit_End_SalesAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[PMAPACCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[PMAPACCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[PMAPACCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[PMAPACCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[PMPRCHAC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[PMPRCHAC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[PMPRCHAC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603101].[PMPRCHAC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603101].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4603101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4603101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4603101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4603101] TO [DYNGRP]
GO
