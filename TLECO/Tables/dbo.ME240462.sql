CREATE TABLE [dbo].[ME240462]
(
[Queue_ID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Category_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFIELDNAME] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_Value] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[MESEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240462] ADD CONSTRAINT [CK__ME240462__DATE1__435A4F70] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[ME240462] ADD CONSTRAINT [PKME240462] PRIMARY KEY NONCLUSTERED  ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [MESEQNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME240462] ON [dbo].[ME240462] ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [MESEQNUMBR], [Category_Name], [MEFIELDNAME], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240462].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240462].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240462].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240462].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240462].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240462].[Category_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240462].[MEFIELDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240462].[Field_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240462].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240462].[MESEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[ME240462] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240462] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240462] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240462] TO [DYNGRP]
GO
