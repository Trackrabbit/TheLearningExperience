CREATE TABLE [dbo].[B4640703]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Contact_Option] [smallint] NOT NULL,
[BSSI_Contact_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640703] ADD CONSTRAINT [PKB4640703] PRIMARY KEY NONCLUSTERED  ([LOCNCODE], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4640703] ON [dbo].[B4640703] ([LOCNCODE], [ADRSCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640703] ON [dbo].[B4640703] ([LOCNCODE], [BSSI_Contact_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4640703] ON [dbo].[B4640703] ([LOCNCODE], [BSSI_Contact_Option], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640703].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640703].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640703].[BSSI_Contact_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640703].[BSSI_Contact_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640703].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640703].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4640703] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640703] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640703] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640703] TO [DYNGRP]
GO
