SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240449F_1] (@Queue_ID_RS smallint, @CHEKBKID_RS char(15), @BACHNUMB_RS char(15), @USERID_RS char(15), @PMNTNMBR_RS char(21), @DOCNUMBR_RS char(21), @Queue_ID_RE smallint, @CHEKBKID_RE char(15), @BACHNUMB_RE char(15), @USERID_RE char(15), @PMNTNMBR_RE char(21), @DOCNUMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @Queue_ID_RS IS NULL BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, PMNTNMBR, DOCNUMBR, MEORIGBACHNUMB, MEBATCHCHECKBOOKID, CHKCOUNT, CHEKAMNT, CREATDDT, CRUSRID, ME_Path, ME_Check_STB_FileNEW, ME_Check_STB_Version, ME_Overflow_STB_FileNEW, ME_Overflow_STB_Version, ME_Refund_Checks_STB_Fil, MEREFSTBVER, ME_Refund_Checks_Overflo, MEREFOVERSION, ME_Copy_STB_File, ME_Copy_STB_Version, ME_Copy_Overflow_STB_Fil, ME_Copy_Overflow_STB_Ver, BACHDATE, TIME1, MEUSERID1, MEUSERID2, MESEQNUMBR, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .ME240449 ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, PMNTNMBR ASC, DOCNUMBR ASC END ELSE IF @Queue_ID_RS = @Queue_ID_RE BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, PMNTNMBR, DOCNUMBR, MEORIGBACHNUMB, MEBATCHCHECKBOOKID, CHKCOUNT, CHEKAMNT, CREATDDT, CRUSRID, ME_Path, ME_Check_STB_FileNEW, ME_Check_STB_Version, ME_Overflow_STB_FileNEW, ME_Overflow_STB_Version, ME_Refund_Checks_STB_Fil, MEREFSTBVER, ME_Refund_Checks_Overflo, MEREFOVERSION, ME_Copy_STB_File, ME_Copy_STB_Version, ME_Copy_Overflow_STB_Fil, ME_Copy_Overflow_STB_Ver, BACHDATE, TIME1, MEUSERID1, MEUSERID2, MESEQNUMBR, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .ME240449 WHERE Queue_ID = @Queue_ID_RS AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, PMNTNMBR ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, PMNTNMBR, DOCNUMBR, MEORIGBACHNUMB, MEBATCHCHECKBOOKID, CHKCOUNT, CHEKAMNT, CREATDDT, CRUSRID, ME_Path, ME_Check_STB_FileNEW, ME_Check_STB_Version, ME_Overflow_STB_FileNEW, ME_Overflow_STB_Version, ME_Refund_Checks_STB_Fil, MEREFSTBVER, ME_Refund_Checks_Overflo, MEREFOVERSION, ME_Copy_STB_File, ME_Copy_STB_Version, ME_Copy_Overflow_STB_Fil, ME_Copy_Overflow_STB_Ver, BACHDATE, TIME1, MEUSERID1, MEUSERID2, MESEQNUMBR, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .ME240449 WHERE Queue_ID BETWEEN @Queue_ID_RS AND @Queue_ID_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, PMNTNMBR ASC, DOCNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240449F_1] TO [DYNGRP]
GO
