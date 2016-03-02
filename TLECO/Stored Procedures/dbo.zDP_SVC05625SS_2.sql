SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05625SS_2] (@USERID char(15), @MKDTOPST tinyint, @RTV_Number char(15), @RTV_Line numeric(19,5)) AS  set nocount on SELECT TOP 1  USERID, RTV_Number, RTV_Line, RTV_Type, OFFID, VENDORID, ADRSCODE, VENDNAME, LOCNCODE, ITEMNMBR, QUANTITY, QTYSHPPD, QTY_To_Receive, QTYRECVD, VNDITNUM, Return_Item_Number, Transfer_Reference, TRANSLINESEQ, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, DEX_ROW_ID FROM .SVC05625 WHERE USERID = @USERID AND MKDTOPST = @MKDTOPST AND RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line ORDER BY USERID ASC, MKDTOPST ASC, RTV_Number ASC, RTV_Line ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05625SS_2] TO [DYNGRP]
GO
