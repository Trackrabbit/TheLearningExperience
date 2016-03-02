CREATE TABLE [dbo].[PM00101]
(
[VNDCLSID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[Default_On_Trx] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM00101] ADD CONSTRAINT [PKPM00101] PRIMARY KEY NONCLUSTERED  ([VNDCLSID], [DISTTYPE], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00101].[VNDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00101].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00101].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00101].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00101].[Default_On_Trx]'
GO
GRANT SELECT ON  [dbo].[PM00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM00101] TO [DYNGRP]
GO
