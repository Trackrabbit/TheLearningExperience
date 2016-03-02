CREATE TABLE [dbo].[ME123501]
(
[PP_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEBANKID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Output_Format] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BANKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BANKNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKBRNCH] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HYPELINK] [tinyint] NOT NULL,
[DLFILAPTH] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HYPEPATH] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEINCWFT] [tinyint] NOT NULL,
[MEUPLDID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKLSSTDD] [datetime] NOT NULL,
[MEUPTIM] [datetime] NOT NULL,
[ME_Number_of_Checks] [smallint] NOT NULL,
[ME_Checks_Amount] [numeric] (19, 5) NOT NULL,
[ME_Number_of_Voids] [smallint] NOT NULL,
[ME_Voids_Amount] [numeric] (19, 5) NOT NULL,
[ME_Confirmation_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last_Reconciled_Date] [datetime] NOT NULL,
[Last_Reconciled_Balance] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME123501] ADD CONSTRAINT [CK__ME123501__MEUPTI__27586B36] CHECK ((datepart(day,[MEUPTIM])=(1) AND datepart(month,[MEUPTIM])=(1) AND datepart(year,[MEUPTIM])=(1900)))
GO
ALTER TABLE [dbo].[ME123501] ADD CONSTRAINT [CK__ME123501__Last_R__266446FD] CHECK ((datepart(hour,[Last_Reconciled_Date])=(0) AND datepart(minute,[Last_Reconciled_Date])=(0) AND datepart(second,[Last_Reconciled_Date])=(0) AND datepart(millisecond,[Last_Reconciled_Date])=(0)))
GO
ALTER TABLE [dbo].[ME123501] ADD CONSTRAINT [CK__ME123501__MKLSST__284C8F6F] CHECK ((datepart(hour,[MKLSSTDD])=(0) AND datepart(minute,[MKLSSTDD])=(0) AND datepart(second,[MKLSSTDD])=(0) AND datepart(millisecond,[MKLSSTDD])=(0)))
GO
ALTER TABLE [dbo].[ME123501] ADD CONSTRAINT [PKME123501] PRIMARY KEY CLUSTERED  ([PP_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[PP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[MEBANKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[Output_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[BANKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[BANKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[BNKBRNCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123501].[HYPELINK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[DLFILAPTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[HYPEPATH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123501].[MEINCWFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[MEUPLDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123501].[MKLSSTDD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123501].[MEUPTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123501].[ME_Number_of_Checks]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME123501].[ME_Checks_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123501].[ME_Number_of_Voids]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME123501].[ME_Voids_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123501].[ME_Confirmation_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123501].[Last_Reconciled_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME123501].[Last_Reconciled_Balance]'
GO
GRANT SELECT ON  [dbo].[ME123501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME123501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME123501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME123501] TO [DYNGRP]
GO
