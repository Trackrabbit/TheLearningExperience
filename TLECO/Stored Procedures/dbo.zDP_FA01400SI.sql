SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01400SI] (@ASSETINDEX int, @PURCHLINESEQ int, @PURCHDESC char(41), @Acquisition_Cost numeric(19,5), @Orig_Acquisition_Cost numeric(19,5), @VENDORID char(15), @DOCNUMBR char(21), @DOCDATE datetime, @TRXSORCE char(13), @ORCTRNUM char(21), @FA_AP_Post_Index int, @PORDNMBR char(21), @CURNCYID char(15), @CURRNIDX smallint, @XCHGRATE numeric(19,7), @EXCHDATE datetime, @TIME1 datetime, @EXGTBLID char(15), @RATETPID char(15), @RTCLCMTD smallint, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @LASTMNTDDATE datetime, @LASTMNTDTIME datetime, @LASTMNTDUSERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA01400 (ASSETINDEX, PURCHLINESEQ, PURCHDESC, Acquisition_Cost, Orig_Acquisition_Cost, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, FA_AP_Post_Index, PORDNMBR, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID) VALUES ( @ASSETINDEX, @PURCHLINESEQ, @PURCHDESC, @Acquisition_Cost, @Orig_Acquisition_Cost, @VENDORID, @DOCNUMBR, @DOCDATE, @TRXSORCE, @ORCTRNUM, @FA_AP_Post_Index, @PORDNMBR, @CURNCYID, @CURRNIDX, @XCHGRATE, @EXCHDATE, @TIME1, @EXGTBLID, @RATETPID, @RTCLCMTD, @DENXRATE, @MCTRXSTT, @LASTMNTDDATE, @LASTMNTDTIME, @LASTMNTDUSERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01400SI] TO [DYNGRP]
GO
