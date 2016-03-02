CREATE TABLE [dbo].[NCIC2000]
(
[DTASERIES] [smallint] NOT NULL,
[DTAREF] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[GROUPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CODEID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[POSTDESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DTAQNTY] [numeric] (19, 5) NOT NULL,
[CODEAMT] [numeric] (19, 5) NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[NC_Copy_MDA_CB] [tinyint] NOT NULL,
[NC_Reverse_MDA_CB] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC2000] ADD CONSTRAINT [CK__NCIC2000__TRXDAT__5B644F5C] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[NCIC2000] ADD CONSTRAINT [PKNCIC2000] PRIMARY KEY CLUSTERED  ([DTASERIES], [DTAREF], [ACTINDX], [GROUPID], [CODEID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC2000].[DTASERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC2000].[DTAREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC2000].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC2000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC2000].[GROUPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC2000].[CODEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC2000].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC2000].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC2000].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC2000].[POSTDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC2000].[DTAQNTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC2000].[CODEAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC2000].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC2000].[NC_Copy_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC2000].[NC_Reverse_MDA_CB]'
GO
GRANT REFERENCES ON  [dbo].[NCIC2000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC2000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC2000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC2000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC2000] TO [DYNGRP]
GO
