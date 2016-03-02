CREATE TABLE [dbo].[SY00600]
(
[CMPANYID] [smallint] NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRCNTCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY00600] ADD CONSTRAINT [CK__SY00600__CHANGED__21ABE3BC] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[SY00600] ADD CONSTRAINT [PKSY00600] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [LOCATNID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY00600] ON [dbo].[SY00600] ([CMPANYID], [ADRCNTCT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY00600] ON [dbo].[SY00600] ([CMPANYID], [LOCATNNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00600].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[LOCATNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[ADRCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[COUNTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00600].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY00600].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00600].[CCode]'
GO
GRANT SELECT ON  [dbo].[SY00600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY00600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY00600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY00600] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY00600] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY00600] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY00600] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY00600] TO [RAPIDGRP]
GO
