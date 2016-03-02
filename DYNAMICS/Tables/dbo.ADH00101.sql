CREATE TABLE [dbo].[ADH00101]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Sequence] [smallint] NOT NULL,
[ADHFieldDisplayName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHFieldPhysicalName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHFieldDictID] [smallint] NOT NULL,
[ADHFieldVisible] [tinyint] NOT NULL,
[ADHTableTechnicalName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHTablePhysicalName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHTableDisplayName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHFieldType] [smallint] NOT NULL,
[ASI_Field_Datatype] [smallint] NOT NULL,
[ADHSeries] [smallint] NOT NULL,
[ADHDecimalDigit] [smallint] NOT NULL,
[ADHRelativeDecimalPos] [tinyint] NOT NULL,
[ADHShowCurrencySymbol] [tinyint] NOT NULL,
[ADHShowPercentSign] [tinyint] NOT NULL,
[CRNCYSYM] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADH00101] ADD CONSTRAINT [PKADH00101] PRIMARY KEY CLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ASI_Sequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ASI_Favorite_Dict_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ASI_Favorite_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ASI_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00101].[ADHFieldDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00101].[ADHFieldPhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ADHFieldDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ADHFieldVisible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00101].[ADHTableTechnicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00101].[ADHTablePhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00101].[ADHTableDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ADHFieldType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ASI_Field_Datatype]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ADHSeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ADHDecimalDigit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ADHRelativeDecimalPos]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ADHShowCurrencySymbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[ADHShowPercentSign]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00101].[CRNCYSYM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00101].[DECPLCUR]'
GO
GRANT SELECT ON  [dbo].[ADH00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ADH00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ADH00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ADH00101] TO [DYNGRP]
GO
