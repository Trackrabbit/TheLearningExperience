CREATE TABLE [dbo].[AF40106]
(
[REPORTID] [smallint] NOT NULL,
[ROWNUMBR] [smallint] NOT NULL,
[TOTKNCNT] [smallint] NOT NULL,
[ROWTYPE] [smallint] NOT NULL,
[ROWSIZE] [smallint] NOT NULL,
[ROLUPFLG] [smallint] NOT NULL,
[ROWDESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUBSUDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TYPCLBAL] [smallint] NOT NULL,
[CATNUMBR] [smallint] NOT NULL,
[PRTSIGN] [smallint] NOT NULL,
[PRTHEDER] [smallint] NOT NULL,
[CENTHEDR] [smallint] NOT NULL,
[ROWFTFAM] [smallint] NOT NULL,
[ROWFTSIZ] [smallint] NOT NULL,
[ROWSTYLE_1] [smallint] NOT NULL,
[ROWSTYLE_2] [smallint] NOT NULL,
[ROWSTYLE_3] [smallint] NOT NULL,
[ROWSTYLE_4] [smallint] NOT NULL,
[ROWSTYLE_5] [smallint] NOT NULL,
[ROWSTYLE_6] [smallint] NOT NULL,
[ROFMRKIN_1] [smallint] NOT NULL,
[ROFMRKIN_2] [smallint] NOT NULL,
[ROFMRKIN_3] [smallint] NOT NULL,
[ROFMRKIN_4] [smallint] NOT NULL,
[ROFMRKIN_5] [smallint] NOT NULL,
[ROFMRKIN_6] [smallint] NOT NULL,
[ROFMRKIN_7] [smallint] NOT NULL,
[ROFMRKIN_8] [smallint] NOT NULL,
[ROFMRKIN_9] [smallint] NOT NULL,
[ROFMRKIN_10] [smallint] NOT NULL,
[ROFMRKIN_11] [smallint] NOT NULL,
[ROFMRKIN_12] [smallint] NOT NULL,
[ROFMRKIN_13] [smallint] NOT NULL,
[ROFMRKIN_14] [smallint] NOT NULL,
[ROFMRKIN_15] [smallint] NOT NULL,
[ROFMRKIN_16] [smallint] NOT NULL,
[ROFMRKIN_17] [smallint] NOT NULL,
[ROFMRKIN_18] [smallint] NOT NULL,
[ROFMRKIN_19] [smallint] NOT NULL,
[ROFMRKIN_20] [smallint] NOT NULL,
[ROFMRKIN_21] [smallint] NOT NULL,
[ROFMRKIN_22] [smallint] NOT NULL,
[ROFMRKIN_23] [smallint] NOT NULL,
[ROFMRKIN_24] [smallint] NOT NULL,
[ROFMRKIN_25] [smallint] NOT NULL,
[ROFMRKIN_26] [smallint] NOT NULL,
[ROFMRKIN_27] [smallint] NOT NULL,
[ROFMRKIN_28] [smallint] NOT NULL,
[ROFMRKIN_29] [smallint] NOT NULL,
[ROFMRKIN_30] [smallint] NOT NULL,
[ROFMRKIN_31] [smallint] NOT NULL,
[ROFMRKIN_32] [smallint] NOT NULL,
[ROFMRKIN_33] [smallint] NOT NULL,
[ROFMRKIN_34] [smallint] NOT NULL,
[ROFMRKIN_35] [smallint] NOT NULL,
[ROFMRKIN_36] [smallint] NOT NULL,
[ROFMRKIN_37] [smallint] NOT NULL,
[ROFMRKIN_38] [smallint] NOT NULL,
[ROFMRKIN_39] [smallint] NOT NULL,
[ROFMRKIN_40] [smallint] NOT NULL,
[CFLOSCTN] [smallint] NOT NULL,
[RWEXPERR] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[STTACCT_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACCT_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACCT_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACCT_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF40106] ADD CONSTRAINT [PKAF40106] PRIMARY KEY NONCLUSTERED  ([REPORTID], [ROWNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AF40106] ON [dbo].[AF40106] ([REPORTID], [ROWTYPE], [ROWNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[TOTKNCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWSIZE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROLUPFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[ROWDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[SUBSUDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[TYPCLBAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[CATNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[PRTSIGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[PRTHEDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[CENTHEDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWFTFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWFTSIZ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWSTYLE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWSTYLE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWSTYLE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWSTYLE_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWSTYLE_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROWSTYLE_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[ROFMRKIN_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[CFLOSCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40106].[RWEXPERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF40106].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[STTACCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[STTACCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[STTACCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[STTACCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[ENDACCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[ENDACCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[ENDACCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40106].[ENDACCT_4]'
GO
GRANT REFERENCES ON  [dbo].[AF40106] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AF40106] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF40106] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF40106] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF40106] TO [DYNGRP]
GO
