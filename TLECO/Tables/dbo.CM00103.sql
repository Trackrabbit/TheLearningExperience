CREATE TABLE [dbo].[CM00103]
(
[EFTFormatID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTFormatType] [smallint] NOT NULL,
[EFT_File_Type] [smallint] NOT NULL,
[EFTTransferMethod] [smallint] NOT NULL,
[EFT_AutoSettlement] [tinyint] NOT NULL,
[EFTAddPadBlocks] [tinyint] NOT NULL,
[EFTPadCharacter] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPadLength] [smallint] NOT NULL,
[EFTMaximumLineLength] [smallint] NOT NULL,
[Number_Of_Lines] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SERIES] [smallint] NOT NULL,
[MULTIPLE_ADDENDAS] [tinyint] NOT NULL,
[EFTDelimitFields] [tinyint] NOT NULL,
[EFTDelimiterField] [smallint] NOT NULL,
[EFTDelimiterFieldOther] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTTextQualifier] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM00103] ADD CONSTRAINT [CK__CM00103__CREATDD__0A9D95DB] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[CM00103] ADD CONSTRAINT [CK__CM00103__MODIFDT__0B91BA14] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[CM00103] ADD CONSTRAINT [PKCM00103] PRIMARY KEY NONCLUSTERED  ([EFTFormatID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00103].[EFTFormatID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00103].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFTFormatType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFT_File_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFTTransferMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFT_AutoSettlement]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFTAddPadBlocks]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00103].[EFTPadCharacter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFTPadLength]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFTMaximumLineLength]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[Number_Of_Lines]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00103].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00103].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00103].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[MULTIPLE_ADDENDAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFTDelimitFields]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFTDelimiterField]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00103].[EFTDelimiterFieldOther]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00103].[EFTTextQualifier]'
GO
GRANT SELECT ON  [dbo].[CM00103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM00103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM00103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM00103] TO [DYNGRP]
GO
