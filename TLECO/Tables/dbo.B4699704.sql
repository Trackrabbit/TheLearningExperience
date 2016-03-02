CREATE TABLE [dbo].[B4699704]
(
[BSSI_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Lease_Origin] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_LineSequence] [numeric] (19, 5) NOT NULL,
[JRNENTRY] [int] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SOP_LINE_Sequence] [int] NOT NULL,
[VCHNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[BSSI_LeaseTermination] [tinyint] NOT NULL,
[BSSI_LseTerminationRever] [tinyint] NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4699704] ADD CONSTRAINT [CK__B4699704__ENDDAT__0DECD397] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4699704] ADD CONSTRAINT [CK__B4699704__STRTDA__0CF8AF5E] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4699704] ADD CONSTRAINT [PKB4699704] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Number], [BSSI_Lease_Origin], [LOCNCODE], [LNITMSEQ], [LNSEQNBR], [BSSI_LineSequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4699704] ON [dbo].[B4699704] ([BSSI_Lease_Number], [LOCNCODE], [LNITMSEQ], [BSSI_LeaseTermination], [BSSI_LseTerminationRever], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4699704] ON [dbo].[B4699704] ([BSSI_Lease_Origin], [BSSI_Lease_Number], [LOCNCODE], [LNITMSEQ], [BSSI_LeaseTermination], [BSSI_LseTerminationRever], [LNSEQNBR], [BSSI_LineSequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4699704] ON [dbo].[B4699704] ([JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4699704] ON [dbo].[B4699704] ([SOPNUMBE], [SOPTYPE], [BSSI_SOP_LINE_Sequence], [JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4699704] ON [dbo].[B4699704] ([VCHNUMWK], [DOCTYPE], [JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699704].[BSSI_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699704].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[BSSI_Lease_Origin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699704].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699704].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699704].[BSSI_LineSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699704].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699704].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699704].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[BSSI_SOP_LINE_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699704].[VCHNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[BSSI_LeaseTermination]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699704].[BSSI_LseTerminationRever]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699704].[DOCAMNT]'
GO
GRANT SELECT ON  [dbo].[B4699704] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4699704] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4699704] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4699704] TO [DYNGRP]
GO
