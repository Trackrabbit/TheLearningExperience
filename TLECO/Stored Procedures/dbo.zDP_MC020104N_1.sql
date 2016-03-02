SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC020104N_1] (@BS int, @CURNCYID char(15), @DOCNUMBR char(21), @DOCTYPE smallint, @RVLUDATE datetime, @SEQNUMBR int, @CURNCYID_RS char(15), @DOCNUMBR_RS char(21), @DOCTYPE_RS smallint, @RVLUDATE_RS datetime, @SEQNUMBR_RS int, @CURNCYID_RE char(15), @DOCNUMBR_RE char(21), @DOCTYPE_RE smallint, @RVLUDATE_RE datetime, @SEQNUMBR_RE int) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, CUSTNMBR, CHEKNMBR, CURNCYID, CURRNIDX, SEQNUMBR, DOCDATE, RVLUDATE, RevalPostDate, RATETPID, RTCLCMTD, XCHGRATE, AUDITTRAIL, GAINLOSS, GLCURTRX, GLDSCAVL, ORCTRXAM, ORDAVAMT, CURTRXAR, DSCAVAAR, UnsettledCurrentGainLoss, UnsettledAvailGainLoss, Total_Gain_or_Loss_on_Cu, Total_Gain_or_Loss_on_Di, CURTRXAI, DSCAVAAI, RVLUEIDX, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .MC020104 WHERE ( CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE = @DOCTYPE AND RVLUDATE = @RVLUDATE AND SEQNUMBR > @SEQNUMBR OR CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE = @DOCTYPE AND RVLUDATE > @RVLUDATE OR CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE > @DOCTYPE OR CURNCYID = @CURNCYID AND DOCNUMBR > @DOCNUMBR OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, DOCNUMBR ASC, DOCTYPE ASC, RVLUDATE ASC, SEQNUMBR ASC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, CUSTNMBR, CHEKNMBR, CURNCYID, CURRNIDX, SEQNUMBR, DOCDATE, RVLUDATE, RevalPostDate, RATETPID, RTCLCMTD, XCHGRATE, AUDITTRAIL, GAINLOSS, GLCURTRX, GLDSCAVL, ORCTRXAM, ORDAVAMT, CURTRXAR, DSCAVAAR, UnsettledCurrentGainLoss, UnsettledAvailGainLoss, Total_Gain_or_Loss_on_Cu, Total_Gain_or_Loss_on_Di, CURTRXAI, DSCAVAAI, RVLUEIDX, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .MC020104 WHERE CURNCYID = @CURNCYID_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND RVLUDATE BETWEEN @RVLUDATE_RS AND @RVLUDATE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE = @DOCTYPE AND RVLUDATE = @RVLUDATE AND SEQNUMBR > @SEQNUMBR OR CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE = @DOCTYPE AND RVLUDATE > @RVLUDATE OR CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE > @DOCTYPE OR CURNCYID = @CURNCYID AND DOCNUMBR > @DOCNUMBR OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, DOCNUMBR ASC, DOCTYPE ASC, RVLUDATE ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, CUSTNMBR, CHEKNMBR, CURNCYID, CURRNIDX, SEQNUMBR, DOCDATE, RVLUDATE, RevalPostDate, RATETPID, RTCLCMTD, XCHGRATE, AUDITTRAIL, GAINLOSS, GLCURTRX, GLDSCAVL, ORCTRXAM, ORDAVAMT, CURTRXAR, DSCAVAAR, UnsettledCurrentGainLoss, UnsettledAvailGainLoss, Total_Gain_or_Loss_on_Cu, Total_Gain_or_Loss_on_Di, CURTRXAI, DSCAVAAI, RVLUEIDX, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .MC020104 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND RVLUDATE BETWEEN @RVLUDATE_RS AND @RVLUDATE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE = @DOCTYPE AND RVLUDATE = @RVLUDATE AND SEQNUMBR > @SEQNUMBR OR CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE = @DOCTYPE AND RVLUDATE > @RVLUDATE OR CURNCYID = @CURNCYID AND DOCNUMBR = @DOCNUMBR AND DOCTYPE > @DOCTYPE OR CURNCYID = @CURNCYID AND DOCNUMBR > @DOCNUMBR OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, DOCNUMBR ASC, DOCTYPE ASC, RVLUDATE ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC020104N_1] TO [DYNGRP]
GO
