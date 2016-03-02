CREATE TABLE [dbo].[SOP50600]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_Required] [tinyint] NOT NULL,
[PASSWORD] [binary] (16) NOT NULL,
[DUMYPSWD] [binary] (16) NOT NULL,
[Password_Valid] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP50600] ADD CONSTRAINT [PKSOP50600] PRIMARY KEY CLUSTERED  ([USERID], [SEQNUMBR], [DOCID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50600].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50600].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50600].[DOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50600].[Password_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50600].[PASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50600].[DUMYPSWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50600].[Password_Valid]'
GO
GRANT SELECT ON  [dbo].[SOP50600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP50600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP50600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP50600] TO [DYNGRP]
GO
