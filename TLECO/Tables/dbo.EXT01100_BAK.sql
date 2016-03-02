CREATE TABLE [dbo].[EXT01100_BAK]
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
