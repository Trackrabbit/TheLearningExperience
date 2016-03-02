CREATE TABLE [dbo].[ME240458]
(
[Queue_ID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDXLONG] [int] NOT NULL,
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240458] ADD CONSTRAINT [PKME240458] PRIMARY KEY CLUSTERED  ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [INDXLONG], [DOCNUMBR], [MECHKID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240458].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240458].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240458].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240458].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[MECHKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240458].[CRNCYSYM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[MECURSYMBOLPLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[INCLSPAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240458].[MEDECSYMBOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240458].[METHOUSANDSYMBOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240458].[MENEGSYMBOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[ME_NEGSYMBOLAMTPLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240458].[ME_NegativeSymbolPlaceme]'
GO
GRANT SELECT ON  [dbo].[ME240458] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240458] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240458] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240458] TO [DYNGRP]
GO
