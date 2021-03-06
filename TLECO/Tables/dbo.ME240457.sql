CREATE TABLE [dbo].[ME240457]
(
[Queue_ID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDXLONG] [int] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MECHKID] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Category_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFIELDNAME] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_Value] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240457] ADD CONSTRAINT [CK__ME240457__DATE1__177BCD32] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[ME240457] ADD CONSTRAINT [PKME240457] PRIMARY KEY NONCLUSTERED  ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [INDXLONG], [DOCNUMBR], [MECHKID], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME240457] ON [dbo].[ME240457] ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [INDXLONG], [DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240457].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240457].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240457].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240457].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240457].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240457].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240457].[MECHKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240457].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240457].[Category_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240457].[MEFIELDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240457].[Field_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240457].[DATE1]'
GO
GRANT SELECT ON  [dbo].[ME240457] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240457] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240457] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240457] TO [DYNGRP]
GO
