CREATE TABLE [dbo].[CM00104]
(
[EFTFormatID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTLineType] [smallint] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[EFTFieldNumber] [smallint] NOT NULL,
[EFTXMLTag] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTMapsTo] [smallint] NOT NULL,
[EFTSourceTable] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldName] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTDataValue] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOFSGMNT] [smallint] NOT NULL,
[EFTTagHierarchy] [smallint] NOT NULL,
[EFTOccurrence] [smallint] NOT NULL,
[EFTCalculationType] [smallint] NOT NULL,
[EFTDatatype] [smallint] NOT NULL,
[EFTJustification] [smallint] NOT NULL,
[EFTPadCharacter] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTDecimalPlaces] [smallint] NOT NULL,
[EFTRemoveDecimalPlace] [tinyint] NOT NULL,
[DATEFMT] [smallint] NOT NULL,
[EFTUseTextQualifier] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM00104] ADD CONSTRAINT [PKCM00104] PRIMARY KEY NONCLUSTERED  ([EFTFormatID], [EFTLineType], [SQNCLINE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00104].[EFTFormatID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTLineType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00104].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTFieldNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00104].[EFTXMLTag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00104].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTMapsTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00104].[EFTSourceTable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00104].[FieldName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00104].[EFTDataValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[LOFSGMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTTagHierarchy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTOccurrence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTCalculationType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTDatatype]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTJustification]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00104].[EFTPadCharacter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTDecimalPlaces]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTRemoveDecimalPlace]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[DATEFMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00104].[EFTUseTextQualifier]'
GO
GRANT SELECT ON  [dbo].[CM00104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM00104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM00104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM00104] TO [DYNGRP]
GO
