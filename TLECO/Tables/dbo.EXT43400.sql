CREATE TABLE [dbo].[EXT43400]
(
[Extender_Lookup_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Lookup_Desc] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[TABLTECH] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FIELDNAM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_Name_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WINNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_Name_3] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT43400] ADD CONSTRAINT [CK__EXT43400__CREATD__0B6AFC08] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT43400] ADD CONSTRAINT [CK__EXT43400__MODIFD__0C5F2041] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT43400] ADD CONSTRAINT [PKEXT43400] PRIMARY KEY NONCLUSTERED  ([Extender_Lookup_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT43400] ON [dbo].[EXT43400] ([Extender_Lookup_Desc], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[Extender_Lookup_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[Extender_Lookup_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT43400].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[TABLTECH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[FIELDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[Field_Name_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT43400].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[FORMNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[WINNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[Field_Name_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT43400].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT43400].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43400].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[EXT43400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT43400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT43400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT43400] TO [DYNGRP]
GO
