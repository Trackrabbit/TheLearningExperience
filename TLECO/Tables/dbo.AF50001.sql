CREATE TABLE [dbo].[AF50001]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTID] [smallint] NOT NULL,
[AMNTFROM] [smallint] NOT NULL,
[BUDGETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HSTYEAR] [smallint] NOT NULL,
[STACCNDX] [int] NOT NULL,
[EDACCNDX] [int] NOT NULL,
[ALRDYCAL] [tinyint] NOT NULL,
[CNSOLDTD] [tinyint] NOT NULL,
[MULCMPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF50001] ADD CONSTRAINT [PKAF50001] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AF50001] ON [dbo].[AF50001] ([USERID], [PRCSSQNC], [REPORTID], [ALRDYCAL], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AF50001] ON [dbo].[AF50001] ([USERID], [PRCSSQNC], [REPORTID], [AMNTFROM], [BUDGETID], [STACCNDX], [EDACCNDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AF50001] ON [dbo].[AF50001] ([USERID], [PRCSSQNC], [REPORTID], [AMNTFROM], [HSTYEAR], [STACCNDX], [EDACCNDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1AF50001] ON [dbo].[AF50001] ([USERID], [PRCSSQNC], [REPORTID], [AMNTFROM], [STACCNDX], [EDACCNDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50001].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50001].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50001].[AMNTFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50001].[BUDGETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50001].[HSTYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50001].[STACCNDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50001].[EDACCNDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50001].[ALRDYCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50001].[CNSOLDTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50001].[MULCMPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50001].[PRCSSQNC]'
GO
GRANT REFERENCES ON  [dbo].[AF50001] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AF50001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF50001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF50001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF50001] TO [DYNGRP]
GO