CREATE TABLE [dbo].[B7112304]
(
[APFRDCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APFRDCTY] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Schedule_Amou] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Amount_Recogn] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Amount_Remain] [numeric] (19, 5) NOT NULL,
[BSSI_Orig_Recog_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Adjustment_Amount] [numeric] (19, 5) NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7112304] ADD CONSTRAINT [CK__B7112304__ENDDAT__33E793F6] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7112304] ADD CONSTRAINT [PKB7112304] PRIMARY KEY NONCLUSTERED  ([BSSI_Recognition_SNumber], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7112304] ON [dbo].[B7112304] ([APFRDCNM], [APFRDCTY], [BSSI_Recognition_SNumber], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7112304].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112304].[APFRDCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112304].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7112304].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112304].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112304].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112304].[BSSI_Total_Schedule_Amou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112304].[BSSI_Total_Amount_Recogn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112304].[BSSI_Total_Amount_Remain]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112304].[BSSI_Orig_Recog_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112304].[BSSI_Adjustment_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7112304].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7112304].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112304].[VOIDED]'
GO
GRANT SELECT ON  [dbo].[B7112304] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7112304] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7112304] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7112304] TO [DYNGRP]
GO
