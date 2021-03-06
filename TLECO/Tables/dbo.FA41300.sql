CREATE TABLE [dbo].[FA41300]
(
[ACCTGRPINDEX] [int] NOT NULL,
[ACCTGRPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCTGRPDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPREXPACCTINDX] [int] NOT NULL,
[DEPRRESVACCTINDX] [int] NOT NULL,
[PRIORYRDEPRACCTINDX] [int] NOT NULL,
[ASSETCOSTACCTINDX] [int] NOT NULL,
[PROCEEDSACCTINDX] [int] NOT NULL,
[RECGAINLOSSACCTINDX] [int] NOT NULL,
[NONRECGAINLOSSACCTINDX] [int] NOT NULL,
[CLEARINGACCTINDX] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA41300] ADD CONSTRAINT [CK__FA41300__LASTMNT__2EF0D041] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA41300] ADD CONSTRAINT [CK__FA41300__LASTMNT__2DFCAC08] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA41300] ADD CONSTRAINT [PKFA41300] PRIMARY KEY CLUSTERED  ([ACCTGRPINDEX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA41300] ON [dbo].[FA41300] ([ACCTGRPID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[ACCTGRPINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA41300].[ACCTGRPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA41300].[ACCTGRPDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[DEPREXPACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[DEPRRESVACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[PRIORYRDEPRACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[ASSETCOSTACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[PROCEEDSACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[RECGAINLOSSACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[NONRECGAINLOSSACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41300].[CLEARINGACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA41300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA41300].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA41300].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA41300].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA41300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA41300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA41300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA41300] TO [DYNGRP]
GO
