SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240449SS_2] (@Queue_ID smallint, @MEBATCHCHECKBOOKID char(15), @MEORIGBACHNUMB char(15), @USERID char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Queue_ID, CHEKBKID, BACHNUMB, USERID, PMNTNMBR, DOCNUMBR, MEORIGBACHNUMB, MEBATCHCHECKBOOKID, CHKCOUNT, CHEKAMNT, CREATDDT, CRUSRID, ME_Path, ME_Check_STB_FileNEW, ME_Check_STB_Version, ME_Overflow_STB_FileNEW, ME_Overflow_STB_Version, ME_Refund_Checks_STB_Fil, MEREFSTBVER, ME_Refund_Checks_Overflo, MEREFOVERSION, ME_Copy_STB_File, ME_Copy_STB_Version, ME_Copy_Overflow_STB_Fil, ME_Copy_Overflow_STB_Ver, BACHDATE, TIME1, MEUSERID1, MEUSERID2, MESEQNUMBR, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .ME240449 WHERE Queue_ID = @Queue_ID AND MEBATCHCHECKBOOKID = @MEBATCHCHECKBOOKID AND MEORIGBACHNUMB = @MEORIGBACHNUMB AND USERID = @USERID ORDER BY Queue_ID ASC, MEBATCHCHECKBOOKID ASC, MEORIGBACHNUMB ASC, USERID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240449SS_2] TO [DYNGRP]
GO
