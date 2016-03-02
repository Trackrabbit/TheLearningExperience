CREATE TABLE [dbo].[ERB90400]
(
[Data_Connection_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB90400] ADD CONSTRAINT [PKERB90400] PRIMARY KEY NONCLUSTERED  ([Data_Connection_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB90400].[Data_Connection_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90400].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[ERB90400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB90400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB90400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB90400] TO [DYNGRP]
GO