CREATE TABLE [dbo].[PC30304]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEMPSEAT] [tinyint] NOT NULL,
[SEAT] [int] NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[SEQ_I] [int] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTE] [numeric] (19, 5) NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[WKHRPRYR] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC30304] ADD CONSTRAINT [CK__PC30304__CHANGET__34CA08BC] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[PC30304] ADD CONSTRAINT [CK__PC30304__CHANGED__33D5E483] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[PC30304] ADD CONSTRAINT [PKPC30304] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [TEMPSEAT], [SEAT], [CHANGEDATE_I], [SEQ_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30304].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30304].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30304].[TEMPSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30304].[SEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30304].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30304].[SEQ_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30304].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30304].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30304].[FTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30304].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30304].[WKHRPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30304].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30304].[CHANGEREASON_I]'
GO
GRANT SELECT ON  [dbo].[PC30304] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC30304] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC30304] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC30304] TO [DYNGRP]
GO
