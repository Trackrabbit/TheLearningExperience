SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC020104SI] (@DOCNUMBR char(21), @DOCTYPE smallint, @CUSTNMBR char(15), @CHEKNMBR char(21), @CURNCYID char(15), @CURRNIDX smallint, @SEQNUMBR int, @DOCDATE datetime, @RVLUDATE datetime, @RevalPostDate datetime, @RATETPID char(15), @RTCLCMTD smallint, @XCHGRATE numeric(19,7), @AUDITTRAIL char(13), @GAINLOSS smallint, @GLCURTRX numeric(19,5), @GLDSCAVL numeric(19,5), @ORCTRXAM numeric(19,5), @ORDAVAMT numeric(19,5), @CURTRXAR numeric(19,5), @DSCAVAAR numeric(19,5), @UnsettledCurrentGainLoss numeric(19,5), @UnsettledAvailGainLoss numeric(19,5), @Total_Gain_or_Loss_on_Cu numeric(19,5), @Total_Gain_or_Loss_on_Di numeric(19,5), @CURTRXAI int, @DSCAVAAI int, @RVLUEIDX int, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MC020104 (DOCNUMBR, DOCTYPE, CUSTNMBR, CHEKNMBR, CURNCYID, CURRNIDX, SEQNUMBR, DOCDATE, RVLUDATE, RevalPostDate, RATETPID, RTCLCMTD, XCHGRATE, AUDITTRAIL, GAINLOSS, GLCURTRX, GLDSCAVL, ORCTRXAM, ORDAVAMT, CURTRXAR, DSCAVAAR, UnsettledCurrentGainLoss, UnsettledAvailGainLoss, Total_Gain_or_Loss_on_Cu, Total_Gain_or_Loss_on_Di, CURTRXAI, DSCAVAAI, RVLUEIDX, DENXRATE, MCTRXSTT) VALUES ( @DOCNUMBR, @DOCTYPE, @CUSTNMBR, @CHEKNMBR, @CURNCYID, @CURRNIDX, @SEQNUMBR, @DOCDATE, @RVLUDATE, @RevalPostDate, @RATETPID, @RTCLCMTD, @XCHGRATE, @AUDITTRAIL, @GAINLOSS, @GLCURTRX, @GLDSCAVL, @ORCTRXAM, @ORDAVAMT, @CURTRXAR, @DSCAVAAR, @UnsettledCurrentGainLoss, @UnsettledAvailGainLoss, @Total_Gain_or_Loss_on_Cu, @Total_Gain_or_Loss_on_Di, @CURTRXAI, @DSCAVAAI, @RVLUEIDX, @DENXRATE, @MCTRXSTT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC020104SI] TO [DYNGRP]
GO