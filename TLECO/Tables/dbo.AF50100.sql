CREATE TABLE [dbo].[AF50100]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTID] [smallint] NOT NULL,
[TOTRWNUM] [smallint] NOT NULL,
[STACCNDX] [int] NOT NULL,
[EDACCNDX] [int] NOT NULL,
[TOTLAMNT_1] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_2] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_3] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_4] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_5] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_6] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_7] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_8] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_9] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_10] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_11] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_12] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_13] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_14] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_15] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_16] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_17] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_18] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_19] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_20] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_21] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_22] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_23] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_24] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_25] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_26] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_27] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_28] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_29] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_30] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_31] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_32] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_33] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_34] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_35] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_36] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_37] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_38] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_39] [numeric] (19, 5) NOT NULL,
[TOTLAMNT_40] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_1] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_2] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_3] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_4] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_5] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_6] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_7] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_8] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_9] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_10] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_11] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_12] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_13] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_14] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_15] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_16] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_17] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_18] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_19] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_20] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_21] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_22] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_23] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_24] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_25] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_26] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_27] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_28] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_29] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_30] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_31] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_32] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_33] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_34] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_35] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_36] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_37] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_38] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_39] [numeric] (19, 5) NOT NULL,
[ACTOTAMT_40] [numeric] (19, 5) NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF50100] ADD CONSTRAINT [PKAF50100] PRIMARY KEY NONCLUSTERED  ([USERID], [PRCSSQNC], [REPORTID], [TOTRWNUM], [STACCNDX], [EDACCNDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50100].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50100].[TOTRWNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50100].[STACCNDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50100].[EDACCNDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[TOTLAMNT_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50100].[ACTOTAMT_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50100].[PRCSSQNC]'
GO
GRANT SELECT ON  [dbo].[AF50100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF50100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF50100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF50100] TO [DYNGRP]
GO
