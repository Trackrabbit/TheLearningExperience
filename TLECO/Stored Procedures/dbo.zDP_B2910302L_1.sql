SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910302L_1] (@CUSTNMBR_RS char(15), @BSSI_PDF_Path_RS char(201), @CUSTNMBR_RE char(15), @BSSI_PDF_Path_RE char(201)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, CUSTNAME, EMail, BSSI_EmailSubject, BSSI_PDF_Path, USER2ENT, DEX_ROW_ID, BSSI_EmailBody FROM .B2910302 ORDER BY CUSTNMBR DESC, BSSI_PDF_Path DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, CUSTNAME, EMail, BSSI_EmailSubject, BSSI_PDF_Path, USER2ENT, DEX_ROW_ID, BSSI_EmailBody FROM .B2910302 WHERE CUSTNMBR = @CUSTNMBR_RS AND BSSI_PDF_Path BETWEEN @BSSI_PDF_Path_RS AND @BSSI_PDF_Path_RE ORDER BY CUSTNMBR DESC, BSSI_PDF_Path DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, CUSTNAME, EMail, BSSI_EmailSubject, BSSI_PDF_Path, USER2ENT, DEX_ROW_ID, BSSI_EmailBody FROM .B2910302 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND BSSI_PDF_Path BETWEEN @BSSI_PDF_Path_RS AND @BSSI_PDF_Path_RE ORDER BY CUSTNMBR DESC, BSSI_PDF_Path DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910302L_1] TO [DYNGRP]
GO
