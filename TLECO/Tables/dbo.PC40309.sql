CREATE TABLE [dbo].[PC40309]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEMPSEAT] [tinyint] NOT NULL,
[SEAT] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[FUNDSOURCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCNTAGE] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40309] ADD CONSTRAINT [PKPC40309] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [TEMPSEAT], [SEAT], [SEQNUMBR], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40309].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40309].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40309].[TEMPSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40309].[SEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40309].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40309].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40309].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40309].[FUNDSOURCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40309].[PRCNTAGE]'
GO
GRANT SELECT ON  [dbo].[PC40309] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40309] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40309] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40309] TO [DYNGRP]
GO
