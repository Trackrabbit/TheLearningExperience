CREATE TABLE [dbo].[PC30303]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[SEQ_I] [int] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFPERMOPTION] [smallint] NOT NULL,
[DEFTEMPOPTION] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC30303] ADD CONSTRAINT [CK__PC30303__CHANGET__30F977D8] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[PC30303] ADD CONSTRAINT [CK__PC30303__CHANGED__3005539F] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[PC30303] ADD CONSTRAINT [PKPC30303] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [BENEFIT], [CHANGEDATE_I], [SEQ_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30303].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30303].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30303].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30303].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30303].[SEQ_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30303].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30303].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30303].[CHANGEREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30303].[DEFPERMOPTION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30303].[DEFTEMPOPTION]'
GO
GRANT SELECT ON  [dbo].[PC30303] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC30303] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC30303] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC30303] TO [DYNGRP]
GO
