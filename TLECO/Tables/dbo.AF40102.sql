CREATE TABLE [dbo].[AF40102]
(
[REPORTID] [smallint] NOT NULL,
[HDRFTRTY] [smallint] NOT NULL,
[FLDNUM] [smallint] NOT NULL,
[FLDPOSX1] [smallint] NOT NULL,
[FLDPOSY1] [smallint] NOT NULL,
[FLDPOSX2] [smallint] NOT NULL,
[FLDPOSY2] [smallint] NOT NULL,
[FLDTYPE] [smallint] NOT NULL,
[FLDFRMAT] [smallint] NOT NULL,
[SBHSBFIN] [smallint] NOT NULL,
[FLDOPT] [smallint] NOT NULL,
[FLDOPT2] [smallint] NOT NULL,
[FLDALIGN] [smallint] NOT NULL,
[FLDFTFML] [smallint] NOT NULL,
[FLDFTSIZ] [smallint] NOT NULL,
[FLDSTYLE_1] [smallint] NOT NULL,
[FLDSTYLE_2] [smallint] NOT NULL,
[FLDSTYLE_3] [smallint] NOT NULL,
[FLDSTYLE_4] [smallint] NOT NULL,
[FLDSTYLE_5] [smallint] NOT NULL,
[FLDSTYLE_6] [smallint] NOT NULL,
[FLDVALUE] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FLDVALU2] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FLDPRNAM] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF40102] ADD CONSTRAINT [PKAF40102] PRIMARY KEY NONCLUSTERED  ([REPORTID], [HDRFTRTY], [FLDNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AF40102] ON [dbo].[AF40102] ([REPORTID], [HDRFTRTY], [SBHSBFIN], [FLDNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[HDRFTRTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDPOSX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDPOSY1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDPOSX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDPOSY2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDFRMAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[SBHSBFIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDOPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDOPT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDALIGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDFTFML]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDFTSIZ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDSTYLE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDSTYLE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDSTYLE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDSTYLE_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDSTYLE_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40102].[FLDSTYLE_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40102].[FLDVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40102].[FLDVALU2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40102].[FLDPRNAM]'
GO
GRANT SELECT ON  [dbo].[AF40102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF40102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF40102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF40102] TO [DYNGRP]
GO
