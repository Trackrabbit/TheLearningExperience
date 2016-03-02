CREATE TABLE [dbo].[ME142704]
(
[MEMSN] [smallint] NOT NULL,
[MELDP] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Virtual_Workstation] [tinyint] NOT NULL,
[ME_Virtual_WS_In_Use] [tinyint] NOT NULL,
[MEREQFPTH] [char] (111) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEANSFPTH] [char] (111) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEWSAB] [tinyint] NOT NULL,
[MEWSA] [tinyint] NOT NULL,
[ME_Virtual_WS_Times_Used] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[ME_Dummy_File_Conversion] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME142704] ADD CONSTRAINT [CK__ME142704__TIME1__41304764] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[ME142704] ADD CONSTRAINT [CK__ME142704__USERDA__403C232B] CHECK ((datepart(hour,[USERDATE])=(0) AND datepart(minute,[USERDATE])=(0) AND datepart(second,[USERDATE])=(0) AND datepart(millisecond,[USERDATE])=(0)))
GO
ALTER TABLE [dbo].[ME142704] ADD CONSTRAINT [PKME142704] PRIMARY KEY CLUSTERED  ([MEMSN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142704].[MEMSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142704].[MELDP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142704].[ME_Virtual_Workstation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142704].[ME_Virtual_WS_In_Use]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142704].[MEREQFPTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142704].[MEANSFPTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142704].[MEWSAB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142704].[MEWSA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142704].[ME_Virtual_WS_Times_Used]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142704].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME142704].[USERDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME142704].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142704].[ME_Dummy_File_Conversion]'
GO
GRANT SELECT ON  [dbo].[ME142704] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME142704] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME142704] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME142704] TO [DYNGRP]
GO
