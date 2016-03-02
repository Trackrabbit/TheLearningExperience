SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05625F_2] (@USERID_RS char(15), @MKDTOPST_RS tinyint, @RTV_Number_RS char(15), @RTV_Line_RS numeric(19,5), @USERID_RE char(15), @MKDTOPST_RE tinyint, @RTV_Number_RE char(15), @RTV_Line_RE numeric(19,5)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, RTV_Number, RTV_Line, RTV_Type, OFFID, VENDORID, ADRSCODE, VENDNAME, LOCNCODE, ITEMNMBR, QUANTITY, QTYSHPPD, QTY_To_Receive, QTYRECVD, VNDITNUM, Return_Item_Number, Transfer_Reference, TRANSLINESEQ, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, DEX_ROW_ID FROM .SVC05625 ORDER BY USERID ASC, MKDTOPST ASC, RTV_Number ASC, RTV_Line ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, RTV_Number, RTV_Line, RTV_Type, OFFID, VENDORID, ADRSCODE, VENDNAME, LOCNCODE, ITEMNMBR, QUANTITY, QTYSHPPD, QTY_To_Receive, QTYRECVD, VNDITNUM, Return_Item_Number, Transfer_Reference, TRANSLINESEQ, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, DEX_ROW_ID FROM .SVC05625 WHERE USERID = @USERID_RS AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE ORDER BY USERID ASC, MKDTOPST ASC, RTV_Number ASC, RTV_Line ASC END ELSE BEGIN SELECT TOP 25  USERID, RTV_Number, RTV_Line, RTV_Type, OFFID, VENDORID, ADRSCODE, VENDNAME, LOCNCODE, ITEMNMBR, QUANTITY, QTYSHPPD, QTY_To_Receive, QTYRECVD, VNDITNUM, Return_Item_Number, Transfer_Reference, TRANSLINESEQ, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, DEX_ROW_ID FROM .SVC05625 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE ORDER BY USERID ASC, MKDTOPST ASC, RTV_Number ASC, RTV_Line ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05625F_2] TO [DYNGRP]
GO
