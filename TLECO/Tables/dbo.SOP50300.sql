CREATE TABLE [dbo].[SOP50300]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCPRINTSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP50300] ADD CONSTRAINT [PKSOP50300] PRIMARY KEY NONCLUSTERED  ([USERID], [SEQNUMBR], [SOPNUMBE], [SOPTYPE], [DOCTYPE], [LOCNCODE], [DOCPRINTSEQ], [LNITMSEQ], [CMPNTSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50300].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50300].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50300].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50300].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50300].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50300].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50300].[DOCPRINTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50300].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50300].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[SOP50300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP50300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP50300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP50300] TO [DYNGRP]
GO
