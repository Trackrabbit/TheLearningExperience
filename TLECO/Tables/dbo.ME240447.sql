CREATE TABLE [dbo].[ME240447]
(
[Queue_ID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MECHKID] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Category_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFIELDNAME] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_Value] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[MESEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240447] ADD CONSTRAINT [CK__ME240447__DATE1__7526B52E] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[ME240447] ADD CONSTRAINT [PKME240447] PRIMARY KEY NONCLUSTERED  ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [MESEQNUMBR], [DOCNUMBR], [MECHKID], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME240447] ON [dbo].[ME240447] ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240447].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240447].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240447].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240447].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240447].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240447].[MECHKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240447].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240447].[Category_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240447].[MEFIELDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240447].[Field_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240447].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240447].[MESEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[ME240447] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240447] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240447] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240447] TO [DYNGRP]
GO
