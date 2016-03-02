CREATE TABLE [dbo].[ME123504]
(
[MEUPLDID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEUPDT] [datetime] NOT NULL,
[MEUPTIM] [datetime] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[CMTrxNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMTrxType] [smallint] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[paidtorcvdfrom] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDATE] [datetime] NOT NULL,
[ME_Dummy_File_Convert_De] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME123504] ADD CONSTRAINT [CK__ME123504__MEUPTI__33BE421B] CHECK ((datepart(day,[MEUPTIM])=(1) AND datepart(month,[MEUPTIM])=(1) AND datepart(year,[MEUPTIM])=(1900)))
GO
ALTER TABLE [dbo].[ME123504] ADD CONSTRAINT [CK__ME123504__MEUPDT__32CA1DE2] CHECK ((datepart(hour,[MEUPDT])=(0) AND datepart(minute,[MEUPDT])=(0) AND datepart(second,[MEUPDT])=(0) AND datepart(millisecond,[MEUPDT])=(0)))
GO
ALTER TABLE [dbo].[ME123504] ADD CONSTRAINT [CK__ME123504__TRXDAT__34B26654] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[ME123504] ADD CONSTRAINT [CK__ME123504__USERDA__35A68A8D] CHECK ((datepart(hour,[USERDATE])=(0) AND datepart(minute,[USERDATE])=(0) AND datepart(second,[USERDATE])=(0) AND datepart(millisecond,[USERDATE])=(0)))
GO
ALTER TABLE [dbo].[ME123504] ADD CONSTRAINT [PKME123504] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1ME123504] ON [dbo].[ME123504] ([CHEKBKID], [TRXDATE], [CMTrxNum], [CMTrxType]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1ME123504] ON [dbo].[ME123504] ([CHEKBKID], [TRXDATE], [CMTrxNum], [CMTrxType], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME123504] ON [dbo].[ME123504] ([MEUPLDID], [CHEKBKID], [TRXDATE], [CMTrxNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123504].[MEUPLDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123504].[PP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123504].[MEUPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123504].[MEUPTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123504].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123504].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123504].[CMTrxNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123504].[CMTrxType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME123504].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123504].[paidtorcvdfrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123504].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123504].[USERDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123504].[ME_Dummy_File_Convert_De]'
GO
GRANT SELECT ON  [dbo].[ME123504] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME123504] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME123504] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME123504] TO [DYNGRP]
GO
