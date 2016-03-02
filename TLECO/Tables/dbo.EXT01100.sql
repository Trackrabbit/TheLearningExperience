CREATE TABLE [dbo].[EXT01100]
(
[Extender_Record_ID] [int] NOT NULL,
[Extender_Window_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Values_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Values_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Values_3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Values_4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Values_5] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01100] ADD CONSTRAINT [CK__EXT01100__CREATD__46ABBD67] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT01100] ADD CONSTRAINT [CK__EXT01100__MODIFD__45B7992E] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT01100] ADD CONSTRAINT [PKEXT01100] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01100].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01100].[Extender_Window_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01100].[Extender_Key_Values_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01100].[Extender_Key_Values_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01100].[Extender_Key_Values_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01100].[Extender_Key_Values_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01100].[Extender_Key_Values_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT01100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01100].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT01100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01100].[CRUSRID]'
GO
GRANT SELECT ON  [dbo].[EXT01100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01100] TO [DYNGRP]
GO
