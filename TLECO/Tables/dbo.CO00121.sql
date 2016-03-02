CREATE TABLE [dbo].[CO00121]
(
[FieldsListGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DefaultField] [tinyint] NOT NULL,
[TableDictID] [smallint] NOT NULL,
[TableSeries] [smallint] NOT NULL,
[TableTechnicalName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TablePhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TableDisplayName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldPhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldDisplayName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldSource] [smallint] NOT NULL,
[FieldDataType] [smallint] NOT NULL,
[DecimalDigits] [smallint] NOT NULL,
[RelativeDecimalPosition] [tinyint] NOT NULL,
[ShowCurrencySymbol] [tinyint] NOT NULL,
[ShowPercentSign] [tinyint] NOT NULL,
[CRNCYSYM] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[Hidden] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00121] ADD CONSTRAINT [PKCO00121] PRIMARY KEY NONCLUSTERED  ([FieldsListGuid], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00121].[FieldsListGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[DefaultField]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[TableDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[TableSeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00121].[TableTechnicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00121].[TablePhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00121].[TableDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00121].[FieldPhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00121].[FieldDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[FieldSource]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[FieldDataType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[DecimalDigits]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[RelativeDecimalPosition]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[ShowCurrencySymbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[ShowPercentSign]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00121].[CRNCYSYM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00121].[Hidden]'
GO
GRANT SELECT ON  [dbo].[CO00121] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00121] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00121] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00121] TO [DYNGRP]
GO
