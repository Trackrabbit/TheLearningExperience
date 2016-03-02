SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT43204F_1] (@Extender_Type_RS smallint, @Extender_ID_RS char(15), @Window_Number_RS smallint, @LNITMSEQ_RS int, @Extender_Type_RE smallint, @Extender_ID_RE char(15), @Window_Number_RE smallint, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Type_RS IS NULL BEGIN SELECT TOP 25  Extender_Type, Extender_ID, Window_Number, LNITMSEQ, Note_Type_Description, DEX_ROW_ID FROM .EXT43204 ORDER BY Extender_Type ASC, Extender_ID ASC, Window_Number ASC, LNITMSEQ ASC END ELSE IF @Extender_Type_RS = @Extender_Type_RE BEGIN SELECT TOP 25  Extender_Type, Extender_ID, Window_Number, LNITMSEQ, Note_Type_Description, DEX_ROW_ID FROM .EXT43204 WHERE Extender_Type = @Extender_Type_RS AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Type ASC, Extender_ID ASC, Window_Number ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Extender_Type, Extender_ID, Window_Number, LNITMSEQ, Note_Type_Description, DEX_ROW_ID FROM .EXT43204 WHERE Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Type ASC, Extender_ID ASC, Window_Number ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT43204F_1] TO [DYNGRP]
GO
