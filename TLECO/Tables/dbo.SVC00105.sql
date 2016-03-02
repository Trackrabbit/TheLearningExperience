CREATE TABLE [dbo].[SVC00105]
(
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[DATEDONE] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00105] ADD CONSTRAINT [CK__SVC00105__DATEDO__280EC888] CHECK ((datepart(hour,[DATEDONE])=(0) AND datepart(minute,[DATEDONE])=(0) AND datepart(second,[DATEDONE])=(0) AND datepart(millisecond,[DATEDONE])=(0)))
GO
ALTER TABLE [dbo].[SVC00105] ADD CONSTRAINT [PKSVC00105] PRIMARY KEY CLUSTERED  ([TECHID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00105].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00105].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00105].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00105].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00105].[DATEDONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00105].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SVC00105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00105] TO [DYNGRP]
GO
