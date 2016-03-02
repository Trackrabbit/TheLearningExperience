CREATE TABLE [dbo].[ME123503]
(
[MEUPLDID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEUPDT] [datetime] NOT NULL,
[MEUPTIM] [datetime] NOT NULL,
[MKLSSTDD] [datetime] NOT NULL,
[MELDTDT] [datetime] NOT NULL,
[MENUMUPLDS] [smallint] NOT NULL,
[PP_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Number_of_Checks] [smallint] NOT NULL,
[ME_Number_of_Voids] [smallint] NOT NULL,
[ME_Checks_Amount] [numeric] (19, 5) NOT NULL,
[ME_Voids_Amount] [numeric] (19, 5) NOT NULL,
[ME_Confirmation_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME123503] ADD CONSTRAINT [CK__ME123503__MELDTD__2D11448C] CHECK ((datepart(day,[MELDTDT])=(1) AND datepart(month,[MELDTDT])=(1) AND datepart(year,[MELDTDT])=(1900)))
GO
ALTER TABLE [dbo].[ME123503] ADD CONSTRAINT [CK__ME123503__MEUPTI__2EF98CFE] CHECK ((datepart(day,[MEUPTIM])=(1) AND datepart(month,[MEUPTIM])=(1) AND datepart(year,[MEUPTIM])=(1900)))
GO
ALTER TABLE [dbo].[ME123503] ADD CONSTRAINT [CK__ME123503__MEUPDT__2E0568C5] CHECK ((datepart(hour,[MEUPDT])=(0) AND datepart(minute,[MEUPDT])=(0) AND datepart(second,[MEUPDT])=(0) AND datepart(millisecond,[MEUPDT])=(0)))
GO
ALTER TABLE [dbo].[ME123503] ADD CONSTRAINT [CK__ME123503__MKLSST__2FEDB137] CHECK ((datepart(hour,[MKLSSTDD])=(0) AND datepart(minute,[MKLSSTDD])=(0) AND datepart(second,[MKLSSTDD])=(0) AND datepart(millisecond,[MKLSSTDD])=(0)))
GO
ALTER TABLE [dbo].[ME123503] ADD CONSTRAINT [PKME123503] PRIMARY KEY CLUSTERED  ([MEUPLDID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME123503] ON [dbo].[ME123503] ([PP_Number], [MEUPDT], [MEUPTIM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123503].[MEUPLDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123503].[MEUPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123503].[MEUPTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123503].[MKLSSTDD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123503].[MELDTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123503].[MENUMUPLDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123503].[PP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123503].[ME_Number_of_Checks]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123503].[ME_Number_of_Voids]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME123503].[ME_Checks_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME123503].[ME_Voids_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123503].[ME_Confirmation_Number]'
GO
GRANT SELECT ON  [dbo].[ME123503] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME123503] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME123503] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME123503] TO [DYNGRP]
GO
