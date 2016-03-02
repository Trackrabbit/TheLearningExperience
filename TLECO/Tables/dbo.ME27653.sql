CREATE TABLE [dbo].[ME27653]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KEYNUMBR] [smallint] NOT NULL,
[ME_Logo_ID_Array_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Logo_ID_Array_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Logo_ID_Array_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHKFORM] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27653] ADD CONSTRAINT [PKME27653] PRIMARY KEY CLUSTERED  ([BACHNUMB]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27653].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27653].[KEYNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27653].[ME_Logo_ID_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27653].[ME_Logo_ID_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27653].[ME_Logo_ID_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27653].[CHKFORM]'
GO
GRANT SELECT ON  [dbo].[ME27653] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27653] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27653] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27653] TO [DYNGRP]
GO
