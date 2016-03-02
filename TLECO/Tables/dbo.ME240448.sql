CREATE TABLE [dbo].[ME240448]
(
[Queue_ID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MECHKID] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[CRNCYSYM] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MECURSYMBOLPLC] [tinyint] NOT NULL,
[INCLSPAC] [tinyint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[MEDECSYMBOL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[METHOUSANDSYMBOL] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MENEGSYMBOL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_NEGSYMBOLAMTPLC] [tinyint] NOT NULL,
[ME_NegativeSymbolPlaceme] [tinyint] NOT NULL,
[MESEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240448] ADD CONSTRAINT [PKME240448] PRIMARY KEY CLUSTERED  ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [MESEQNUMBR], [DOCNUMBR], [MECHKID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240448].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240448].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240448].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240448].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[MECHKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240448].[CRNCYSYM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[MECURSYMBOLPLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[INCLSPAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240448].[MEDECSYMBOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240448].[METHOUSANDSYMBOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240448].[MENEGSYMBOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[ME_NEGSYMBOLAMTPLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[ME_NegativeSymbolPlaceme]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240448].[MESEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[ME240448] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240448] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240448] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240448] TO [DYNGRP]
GO
