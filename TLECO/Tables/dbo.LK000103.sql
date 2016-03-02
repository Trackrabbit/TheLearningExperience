CREATE TABLE [dbo].[LK000103]
(
[LK_Link_No] [int] NOT NULL,
[LineNumber] [smallint] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[ACTNUMBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OPENYEAR] [smallint] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LK000103] ADD CONSTRAINT [CK__LK000103__TRXDAT__3AE669E4] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[LK000103] ADD CONSTRAINT [PKLK000103] PRIMARY KEY NONCLUSTERED  ([LK_Link_No], [LineNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2LK000103] ON [dbo].[LK000103] ([ACTINDX], [JRNENTRY], [RCTRXSEQ], [SEQNUMBR], [OPENYEAR], [CURRNIDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4LK000103] ON [dbo].[LK000103] ([ACTINDX], [JRNENTRY], [RCTRXSEQ], [SEQNUMBR], [OPENYEAR], [CURRNIDX], [LK_Link_No]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3LK000103] ON [dbo].[LK000103] ([ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4], [LK_Link_No], [LineNumber]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000103].[LK_Link_No]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000103].[LineNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000103].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000103].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000103].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[LK000103].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000103].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000103].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000103].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000103].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000103].[OPENYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000103].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[LK000103].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK000103].[TRXDATE]'
GO
GRANT REFERENCES ON  [dbo].[LK000103] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[LK000103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[LK000103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[LK000103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[LK000103] TO [DYNGRP]
GO
