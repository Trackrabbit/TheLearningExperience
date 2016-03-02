CREATE TABLE [dbo].[BM10200]
(
[TRX_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BM_Trx_Status] [smallint] NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Batch_ID_Note_Index] [numeric] (19, 5) NOT NULL,
[Completion_Date] [datetime] NOT NULL,
[BM_Start_Date] [datetime] NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity_Shortage_Status] [smallint] NOT NULL,
[BM_Trx_Errors] [binary] (4) NOT NULL,
[BM_Component_Errors] [binary] (4) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BM10200] ADD CONSTRAINT [CK__BM10200__BM_Star__59FA5E80] CHECK ((datepart(hour,[BM_Start_Date])=(0) AND datepart(minute,[BM_Start_Date])=(0) AND datepart(second,[BM_Start_Date])=(0) AND datepart(millisecond,[BM_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[BM10200] ADD CONSTRAINT [CK__BM10200__Complet__5BE2A6F2] CHECK ((datepart(hour,[Completion_Date])=(0) AND datepart(minute,[Completion_Date])=(0) AND datepart(second,[Completion_Date])=(0) AND datepart(millisecond,[Completion_Date])=(0)))
GO
ALTER TABLE [dbo].[BM10200] ADD CONSTRAINT [CK__BM10200__CREATDD__5AEE82B9] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[BM10200] ADD CONSTRAINT [CK__BM10200__MODIFDT__5CD6CB2B] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[BM10200] ADD CONSTRAINT [CK__BM10200__POSTEDD__5DCAEF64] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[BM10200] ADD CONSTRAINT [CK__BM10200__PSTGDAT__5EBF139D] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[BM10200] ADD CONSTRAINT [CK__BM10200__TRXDATE__5FB337D6] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[BM10200] ADD CONSTRAINT [PKBM10200] PRIMARY KEY NONCLUSTERED  ([TRX_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4BM10200] ON [dbo].[BM10200] ([BCHSOURC], [BACHNUMB], [TRX_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BM10200] ON [dbo].[BM10200] ([BM_Trx_Status], [TRX_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BM10200] ON [dbo].[BM10200] ([TRXDATE], [TRX_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[TRX_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10200].[BM_Trx_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM10200].[Batch_ID_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10200].[Completion_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10200].[BM_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10200].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10200].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10200].[Quantity_Shortage_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10200].[BM_Trx_Errors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10200].[BM_Component_Errors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM10200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10200].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10200].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10200].[USRDEF04]'
GO
GRANT SELECT ON  [dbo].[BM10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM10200] TO [DYNGRP]
GO
