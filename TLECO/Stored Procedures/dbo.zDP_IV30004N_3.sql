SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30004N_3] (@BS int, @LOCNCODE char(11), @DOCTYPE smallint, @Bin_XFer_Doc_Number char(21), @Bin_XFer_Date datetime, @SEQNUMBR int, @LOCNCODE_RS char(11), @DOCTYPE_RS smallint, @Bin_XFer_Doc_Number_RS char(21), @Bin_XFer_Date_RS datetime, @SEQNUMBR_RS int, @LOCNCODE_RE char(11), @DOCTYPE_RE smallint, @Bin_XFer_Doc_Number_RE char(21), @Bin_XFer_Date_RE datetime, @SEQNUMBR_RE int) AS  set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, Bin_XFer_Doc_Number, Bin_XFer_Date, SEQNUMBR, ITEMNMBR, LOCNCODE, QTYTYPE, FROMBIN, TOBIN, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, OVRSERLT, Reason_Code, USERID, NOTEINDX, DEX_ROW_ID FROM .IV30004 WHERE ( LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number = @Bin_XFer_Doc_Number AND Bin_XFer_Date = @Bin_XFer_Date AND SEQNUMBR > @SEQNUMBR OR LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number = @Bin_XFer_Doc_Number AND Bin_XFer_Date > @Bin_XFer_Date OR LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number > @Bin_XFer_Doc_Number OR LOCNCODE = @LOCNCODE AND DOCTYPE > @DOCTYPE OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DOCTYPE ASC, Bin_XFer_Doc_Number ASC, Bin_XFer_Date ASC, SEQNUMBR ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  DOCTYPE, Bin_XFer_Doc_Number, Bin_XFer_Date, SEQNUMBR, ITEMNMBR, LOCNCODE, QTYTYPE, FROMBIN, TOBIN, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, OVRSERLT, Reason_Code, USERID, NOTEINDX, DEX_ROW_ID FROM .IV30004 WHERE LOCNCODE = @LOCNCODE_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND Bin_XFer_Doc_Number BETWEEN @Bin_XFer_Doc_Number_RS AND @Bin_XFer_Doc_Number_RE AND Bin_XFer_Date BETWEEN @Bin_XFer_Date_RS AND @Bin_XFer_Date_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number = @Bin_XFer_Doc_Number AND Bin_XFer_Date = @Bin_XFer_Date AND SEQNUMBR > @SEQNUMBR OR LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number = @Bin_XFer_Doc_Number AND Bin_XFer_Date > @Bin_XFer_Date OR LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number > @Bin_XFer_Doc_Number OR LOCNCODE = @LOCNCODE AND DOCTYPE > @DOCTYPE OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DOCTYPE ASC, Bin_XFer_Doc_Number ASC, Bin_XFer_Date ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, Bin_XFer_Doc_Number, Bin_XFer_Date, SEQNUMBR, ITEMNMBR, LOCNCODE, QTYTYPE, FROMBIN, TOBIN, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, OVRSERLT, Reason_Code, USERID, NOTEINDX, DEX_ROW_ID FROM .IV30004 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND Bin_XFer_Doc_Number BETWEEN @Bin_XFer_Doc_Number_RS AND @Bin_XFer_Doc_Number_RE AND Bin_XFer_Date BETWEEN @Bin_XFer_Date_RS AND @Bin_XFer_Date_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number = @Bin_XFer_Doc_Number AND Bin_XFer_Date = @Bin_XFer_Date AND SEQNUMBR > @SEQNUMBR OR LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number = @Bin_XFer_Doc_Number AND Bin_XFer_Date > @Bin_XFer_Date OR LOCNCODE = @LOCNCODE AND DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number > @Bin_XFer_Doc_Number OR LOCNCODE = @LOCNCODE AND DOCTYPE > @DOCTYPE OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DOCTYPE ASC, Bin_XFer_Doc_Number ASC, Bin_XFer_Date ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30004N_3] TO [DYNGRP]
GO
