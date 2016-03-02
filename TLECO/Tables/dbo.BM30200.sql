CREATE TABLE [dbo].[BM30200]
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
ALTER TABLE [dbo].[BM30200] ADD CONSTRAINT [CK__BM30200__BM_Star__6D0D32F4] CHECK ((datepart(hour,[BM_Start_Date])=(0) AND datepart(minute,[BM_Start_Date])=(0) AND datepart(second,[BM_Start_Date])=(0) AND datepart(millisecond,[BM_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[BM30200] ADD CONSTRAINT [CK__BM30200__Complet__6EF57B66] CHECK ((datepart(hour,[Completion_Date])=(0) AND datepart(minute,[Completion_Date])=(0) AND datepart(second,[Completion_Date])=(0) AND datepart(millisecond,[Completion_Date])=(0)))
GO
ALTER TABLE [dbo].[BM30200] ADD CONSTRAINT [CK__BM30200__CREATDD__6E01572D] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[BM30200] ADD CONSTRAINT [CK__BM30200__MODIFDT__6FE99F9F] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[BM30200] ADD CONSTRAINT [CK__BM30200__POSTEDD__70DDC3D8] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[BM30200] ADD CONSTRAINT [CK__BM30200__PSTGDAT__71D1E811] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[BM30200] ADD CONSTRAINT [CK__BM30200__TRXDATE__72C60C4A] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[BM30200] ADD CONSTRAINT [PKBM30200] PRIMARY KEY NONCLUSTERED  ([TRX_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BM30200] ON [dbo].[BM30200] ([TRXDATE], [TRX_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BM30200] ON [dbo].[BM30200] ([TRXSORCE], [TRX_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[TRX_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30200].[BM_Trx_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30200].[Batch_ID_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30200].[Completion_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30200].[BM_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30200].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30200].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30200].[BM_Trx_Errors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30200].[BM_Component_Errors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30200].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30200].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30200].[USRDEF04]'
GO
GRANT SELECT ON  [dbo].[BM30200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM30200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM30200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM30200] TO [DYNGRP]
GO
