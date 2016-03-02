CREATE TABLE [dbo].[AF50200]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTID] [smallint] NOT NULL,
[SUBSUDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACCT_1] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACCT_2] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACCT_3] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACCT_4] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACCT_5] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_1] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_2] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_3] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_4] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACCT_5] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUBTOTAM_1] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_2] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_3] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_4] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_5] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_6] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_7] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_8] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_9] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_10] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_11] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_12] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_13] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_14] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_15] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_16] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_17] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_18] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_19] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_20] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_21] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_22] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_23] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_24] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_25] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_26] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_27] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_28] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_29] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_30] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_31] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_32] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_33] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_34] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_35] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_36] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_37] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_38] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_39] [numeric] (19, 5) NOT NULL,
[SUBTOTAM_40] [numeric] (19, 5) NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF50200] ADD CONSTRAINT [PKAF50200] PRIMARY KEY NONCLUSTERED  ([USERID], [PRCSSQNC], [REPORTID], [SUBSUDID], [STTACCT_1], [STTACCT_2], [STTACCT_3], [STTACCT_4], [STTACCT_5], [ENDACCT_1], [ENDACCT_2], [ENDACCT_3], [ENDACCT_4], [ENDACCT_5]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50200].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[SUBSUDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[STTACCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[STTACCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[STTACCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[STTACCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[STTACCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[ENDACCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[ENDACCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[ENDACCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[ENDACCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50200].[ENDACCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50200].[SUBTOTAM_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50200].[PRCSSQNC]'
GO
GRANT REFERENCES ON  [dbo].[AF50200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AF50200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF50200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF50200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF50200] TO [DYNGRP]
GO
