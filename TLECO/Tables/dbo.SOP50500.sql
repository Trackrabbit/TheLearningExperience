CREATE TABLE [dbo].[SOP50500]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[PRCHLDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_Required] [tinyint] NOT NULL,
[PASSWORD] [binary] (16) NOT NULL,
[DUMYPSWD] [binary] (16) NOT NULL,
[Password_Valid] [smallint] NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP50500] ADD CONSTRAINT [PKSOP50500] PRIMARY KEY CLUSTERED  ([USERID], [SEQNUMBR], [PRCHLDID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP50500] ON [dbo].[SOP50500] ([USERID], [SEQNUMBR], [MKTOPROC], [PRCHLDID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50500].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50500].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50500].[PRCHLDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50500].[Password_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50500].[PASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50500].[DUMYPSWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50500].[Password_Valid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50500].[MKTOPROC]'
GO
GRANT SELECT ON  [dbo].[SOP50500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP50500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP50500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP50500] TO [DYNGRP]
GO
