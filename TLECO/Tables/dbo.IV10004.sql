CREATE TABLE [dbo].[IV10004]
(
[DOCTYPE] [smallint] NOT NULL,
[Bin_XFer_Doc_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bin_XFer_Date] [datetime] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[FROMBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLTQTY] [numeric] (19, 5) NOT NULL,
[DATERECD] [datetime] NOT NULL,
[DTSEQNUM] [numeric] (19, 5) NOT NULL,
[OVRSERLT] [smallint] NOT NULL,
[Reason_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10004] ADD CONSTRAINT [CK__IV10004__Bin_XFe__320C68B7] CHECK ((datepart(hour,[Bin_XFer_Date])=(0) AND datepart(minute,[Bin_XFer_Date])=(0) AND datepart(second,[Bin_XFer_Date])=(0) AND datepart(millisecond,[Bin_XFer_Date])=(0)))
GO
ALTER TABLE [dbo].[IV10004] ADD CONSTRAINT [CK__IV10004__DATEREC__33008CF0] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[IV10004] ADD CONSTRAINT [PKIV10004] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [Bin_XFer_Doc_Number], [Bin_XFer_Date], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10004].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10004].[Bin_XFer_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10004].[Bin_XFer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10004].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10004].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10004].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10004].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10004].[FROMBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10004].[TOBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10004].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10004].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10004].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10004].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10004].[OVRSERLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10004].[Reason_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10004].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10004].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[IV10004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10004] TO [DYNGRP]
GO
