SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05612F_1] (@RTV_Number_RS char(15), @RTV_Line_RS numeric(19,5), @SEQNUMBR_RS int, @RTV_Number_RE char(15), @RTV_Line_RE numeric(19,5), @SEQNUMBR_RE int) AS  set nocount on IF @RTV_Number_RS IS NULL BEGIN SELECT TOP 25  RTV_Number, RTV_Line, SEQNUMBR, ITEMNMBR, LOCCODEB, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SVC05612 ORDER BY RTV_Number ASC, RTV_Line ASC, SEQNUMBR ASC END ELSE IF @RTV_Number_RS = @RTV_Number_RE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, SEQNUMBR, ITEMNMBR, LOCCODEB, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SVC05612 WHERE RTV_Number = @RTV_Number_RS AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY RTV_Number ASC, RTV_Line ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, SEQNUMBR, ITEMNMBR, LOCCODEB, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SVC05612 WHERE RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY RTV_Number ASC, RTV_Line ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05612F_1] TO [DYNGRP]
GO
