CREATE TABLE [dbo].[MS273517]
(
[MSO_Doc_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Doc_Type] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273517] ADD CONSTRAINT [PKMS273517] PRIMARY KEY NONCLUSTERED  ([MSO_Doc_Number], [MSO_Doc_Type], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273517].[MSO_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273517].[MSO_Doc_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273517].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273517].[SEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[MS273517] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273517] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273517] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273517] TO [DYNGRP]
GO
