SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10000SS_1] (@BCHSOURC char(15), @BACHNUMB char(15), @JRNENTRY int) AS  set nocount on SELECT TOP 1  BACHNUMB, BCHSOURC, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, TRXDATE, RVRSNGDT, RCRNGTRX, BALFRCLC, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, TRXTYPE, SQNCLINE, GLHDRMSG, GLHDRMS2, TRXSORCE, RVTRXSRC, SERIES, ORPSTDDT, ORTRXSRC, OrigDTASeries, DTAControlNum, DTATRXType, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, GLHDRVAL, PERIODID, OPENYEAR, CLOSEDYR, HISTRX, REVPRDID, REVYEAR, REVCLYR, REVHIST, ERRSTATE, ICTRX, ORCOMID, ORIGINJE, ICDISTS, PRNTSTUS, DENXRATE, MCTRXSTT, DOCDATE, Tax_Date, VOIDED, Original_JE, Original_JE_Year, Original_JE_Seq_Num, Correcting_Trx_Type, Ledger_ID, Adjustment_Transaction, DEX_ROW_TS, DEX_ROW_ID FROM .GL10000 WHERE BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND JRNENTRY = @JRNENTRY ORDER BY BCHSOURC ASC, BACHNUMB ASC, JRNENTRY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10000SS_1] TO [DYNGRP]
GO
