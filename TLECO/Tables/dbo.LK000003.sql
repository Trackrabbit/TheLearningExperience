CREATE TABLE [dbo].[LK000003]
(
[LK_Link_No] [int] NOT NULL,
[LineNumber] [smallint] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[ORTRXAMT] [numeric] (19, 5) NOT NULL,
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
ALTER TABLE [dbo].[LK000003] ADD CONSTRAINT [CK__LK000003__TRXDAT__25EB4CFE] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[LK000003] ADD CONSTRAINT [PKLK000003] PRIMARY KEY NONCLUSTERED  ([LK_Link_No], [LineNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2LK000003] ON [dbo].[LK000003] ([ACTINDX], [JRNENTRY], [RCTRXSEQ], [SEQNUMBR], [OPENYEAR], [CURRNIDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4LK000003] ON [dbo].[LK000003] ([ACTINDX], [JRNENTRY], [RCTRXSEQ], [SEQNUMBR], [OPENYEAR], [CURRNIDX], [LK_Link_No]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3LK000003] ON [dbo].[LK000003] ([ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4], [LK_Link_No], [LineNumber]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000003].[LK_Link_No]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000003].[LineNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000003].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000003].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000003].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[LK000003].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[LK000003].[ORTRXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000003].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000003].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000003].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000003].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000003].[OPENYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000003].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[LK000003].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK000003].[TRXDATE]'
GO
GRANT REFERENCES ON  [dbo].[LK000003] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[LK000003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[LK000003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[LK000003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[LK000003] TO [DYNGRP]
GO
