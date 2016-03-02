SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30004L_2] (@ITEMNMBR_RS char(31), @DOCTYPE_RS smallint, @Bin_XFer_Doc_Number_RS char(21), @Bin_XFer_Date_RS datetime, @SEQNUMBR_RS int, @ITEMNMBR_RE char(31), @DOCTYPE_RE smallint, @Bin_XFer_Doc_Number_RE char(21), @Bin_XFer_Date_RE datetime, @SEQNUMBR_RE int) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, Bin_XFer_Doc_Number, Bin_XFer_Date, SEQNUMBR, ITEMNMBR, LOCNCODE, QTYTYPE, FROMBIN, TOBIN, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, OVRSERLT, Reason_Code, USERID, NOTEINDX, DEX_ROW_ID FROM .IV30004 ORDER BY ITEMNMBR DESC, DOCTYPE DESC, Bin_XFer_Doc_Number DESC, Bin_XFer_Date DESC, SEQNUMBR DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  DOCTYPE, Bin_XFer_Doc_Number, Bin_XFer_Date, SEQNUMBR, ITEMNMBR, LOCNCODE, QTYTYPE, FROMBIN, TOBIN, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, OVRSERLT, Reason_Code, USERID, NOTEINDX, DEX_ROW_ID FROM .IV30004 WHERE ITEMNMBR = @ITEMNMBR_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND Bin_XFer_Doc_Number BETWEEN @Bin_XFer_Doc_Number_RS AND @Bin_XFer_Doc_Number_RE AND Bin_XFer_Date BETWEEN @Bin_XFer_Date_RS AND @Bin_XFer_Date_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY ITEMNMBR DESC, DOCTYPE DESC, Bin_XFer_Doc_Number DESC, Bin_XFer_Date DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  DOCTYPE, Bin_XFer_Doc_Number, Bin_XFer_Date, SEQNUMBR, ITEMNMBR, LOCNCODE, QTYTYPE, FROMBIN, TOBIN, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, OVRSERLT, Reason_Code, USERID, NOTEINDX, DEX_ROW_ID FROM .IV30004 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND Bin_XFer_Doc_Number BETWEEN @Bin_XFer_Doc_Number_RS AND @Bin_XFer_Doc_Number_RE AND Bin_XFer_Date BETWEEN @Bin_XFer_Date_RS AND @Bin_XFer_Date_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY ITEMNMBR DESC, DOCTYPE DESC, Bin_XFer_Doc_Number DESC, Bin_XFer_Date DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30004L_2] TO [DYNGRP]
GO
