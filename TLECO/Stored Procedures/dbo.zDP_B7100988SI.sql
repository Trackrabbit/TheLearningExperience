SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100988SI] (@INTERID char(5), @DECPLACS smallint, @CURRNIDX smallint, @ICExchangeRateInfo_1 char(15), @ICExchangeRateInfo_2 char(15), @ICExchangeRateInfo_3 smallint, @ICExchangeRateInfo_4 smallint, @ICExchangeRateInfo_5 char(15), @ICExchangeRateInfo_6 numeric(19,7), @ICExchangeRateInfo_7 char(15), @ICExchangeRateInfo_8 datetime, @ICExchangeRateInfo_9 datetime, @ICExchangeRateInfo_10 smallint, @ICExchangeRateInfo_11 smallint, @ICExchangeRateInfo_12 datetime, @ICExchangeRateInfo_13 numeric(19,7), @ICExchangeRateInfo_14 smallint, @LNESTAT smallint, @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3), @ACTINDX int, @ACCTTYPE smallint, @DSCRIPTN char(31), @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @SEQNUMBR int, @USERID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100988 (INTERID, DECPLACS, CURRNIDX, ICExchangeRateInfo_1, ICExchangeRateInfo_2, ICExchangeRateInfo_3, ICExchangeRateInfo_4, ICExchangeRateInfo_5, ICExchangeRateInfo_6, ICExchangeRateInfo_7, ICExchangeRateInfo_8, ICExchangeRateInfo_9, ICExchangeRateInfo_10, ICExchangeRateInfo_11, ICExchangeRateInfo_12, ICExchangeRateInfo_13, ICExchangeRateInfo_14, LNESTAT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTINDX, ACCTTYPE, DSCRIPTN, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, SEQNUMBR, USERID) VALUES ( @INTERID, @DECPLACS, @CURRNIDX, @ICExchangeRateInfo_1, @ICExchangeRateInfo_2, @ICExchangeRateInfo_3, @ICExchangeRateInfo_4, @ICExchangeRateInfo_5, @ICExchangeRateInfo_6, @ICExchangeRateInfo_7, @ICExchangeRateInfo_8, @ICExchangeRateInfo_9, @ICExchangeRateInfo_10, @ICExchangeRateInfo_11, @ICExchangeRateInfo_12, @ICExchangeRateInfo_13, @ICExchangeRateInfo_14, @LNESTAT, @ACTNUMBR_1, @ACTNUMBR_2, @ACTNUMBR_3, @ACTNUMBR_4, @ACTINDX, @ACCTTYPE, @DSCRIPTN, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @SEQNUMBR, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100988SI] TO [DYNGRP]
GO
