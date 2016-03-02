CREATE TABLE [dbo].[UPR10101]
(
[RPTNGYR] [smallint] NOT NULL,
[MCRQGEMP] [tinyint] NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDLNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Foreign_Address] [tinyint] NOT NULL,
[Foreign_StateProvince] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Foreign_Postal_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2CTRNBR] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOCSCNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BFSTEM] [tinyint] NOT NULL,
[W2BFDCSD] [tinyint] NOT NULL,
[W2BFPPLN] [tinyint] NOT NULL,
[W2BFLREP] [tinyint] NOT NULL,
[W2BF942E] [tinyint] NOT NULL,
[W2BFSTTL] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BFDCMP] [tinyint] NOT NULL,
[WGTPCOMP] [numeric] (19, 5) NOT NULL,
[FEDITXWH] [numeric] (19, 5) NOT NULL,
[SSECWAGS] [numeric] (19, 5) NOT NULL,
[SSTXWHLD] [numeric] (19, 5) NOT NULL,
[MCRWGTPS] [numeric] (19, 5) NOT NULL,
[MDCRTXWH] [numeric] (19, 5) NOT NULL,
[SSECTIPS] [numeric] (19, 5) NOT NULL,
[ALOCTIPS] [numeric] (19, 5) NOT NULL,
[ADEICPMT] [numeric] (19, 5) NOT NULL,
[DEPCRBFT] [numeric] (19, 5) NOT NULL,
[NQLFPLNS] [numeric] (19, 5) NOT NULL,
[BNINCWGS] [numeric] (19, 5) NOT NULL,
[W2FRMCTR] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[STRINGARRAY_1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRINGARRAY_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRINGARRAY_3] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRINGARRAY_4] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRINGARRAY_5] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LONGINTARRAY_1] [int] NOT NULL,
[LONGINTARRAY_2] [int] NOT NULL,
[LONGINTARRAY_3] [int] NOT NULL,
[LONGINTARRAY_4] [int] NOT NULL,
[LONGINTARRAY_5] [int] NOT NULL,
[EMPLSUFF] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ESSW2PRINTED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10101] ADD CONSTRAINT [PKUPR10101] PRIMARY KEY NONCLUSTERED  ([RPTNGYR], [MCRQGEMP], [EMPLOYID], [SEQNUMBR], [W2BFSTTL]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10101] ON [dbo].[UPR10101] ([RPTNGYR], [MCRQGEMP], [DEPRTMNT], [LASTNAME], [FRSTNAME], [MIDLNAME], [SEQNUMBR], [W2BFSTTL], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10101] ON [dbo].[UPR10101] ([RPTNGYR], [MCRQGEMP], [LASTNAME], [FRSTNAME], [MIDLNAME], [SEQNUMBR], [W2BFSTTL], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR10101] ON [dbo].[UPR10101] ([RPTNGYR], [MCRQGEMP], [SOCSCNUM], [SEQNUMBR], [W2BFSTTL], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[RPTNGYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[MCRQGEMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[MIDLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[Foreign_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[Foreign_StateProvince]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[Foreign_Postal_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[W2CTRNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[SOCSCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[W2BFSTEM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[W2BFDCSD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[W2BFPPLN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[W2BFLREP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[W2BF942E]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[W2BFSTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[W2BFDCMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[WGTPCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[FEDITXWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[SSECWAGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[SSTXWHLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[MCRWGTPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[MDCRTXWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[SSECTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[ALOCTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[ADEICPMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[DEPCRBFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[NQLFPLNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[BNINCWGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[W2FRMCTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10101].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[STRINGARRAY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[STRINGARRAY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[STRINGARRAY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[STRINGARRAY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[STRINGARRAY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[LONGINTARRAY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[LONGINTARRAY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[LONGINTARRAY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[LONGINTARRAY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[LONGINTARRAY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10101].[EMPLSUFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10101].[ESSW2PRINTED]'
GO
GRANT SELECT ON  [dbo].[UPR10101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10101] TO [DYNGRP]
GO
