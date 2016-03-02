SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY90100F_2] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  Business_Type, INDUSTYP, DEFCHRAC_1, DEFCHRAC_2, DEFCHRAC_3, DEFCHRAC_4, DEFCHRAC_5, ACTDESCR, PSTNGTYP, ACCATNUM, TPCLBLNC, Posting_Account_Series_1, Posting_Account_Series_2, Posting_Account_Series_3, Posting_Account_Series_4, Posting_Account_Series_5, Posting_Account_Series_6, Posting_Account_Series_7, Posting_Account_Series_8, Posting_Account_Series_9, Posting_Account_Series_10, Posting_Account_Series_11, Posting_Account_Sequence_1, Posting_Account_Sequence_2, Posting_Account_Sequence_3, Posting_Account_Sequence_4, Posting_Account_Sequence_5, Posting_Account_Sequence_6, Posting_Account_Sequence_7, Posting_Account_Sequence_8, Posting_Account_Sequence_9, Posting_Account_Sequence_10, Posting_Account_Sequence_11, DEX_ROW_ID FROM .SY90100 ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  Business_Type, INDUSTYP, DEFCHRAC_1, DEFCHRAC_2, DEFCHRAC_3, DEFCHRAC_4, DEFCHRAC_5, ACTDESCR, PSTNGTYP, ACCATNUM, TPCLBLNC, Posting_Account_Series_1, Posting_Account_Series_2, Posting_Account_Series_3, Posting_Account_Series_4, Posting_Account_Series_5, Posting_Account_Series_6, Posting_Account_Series_7, Posting_Account_Series_8, Posting_Account_Series_9, Posting_Account_Series_10, Posting_Account_Series_11, Posting_Account_Sequence_1, Posting_Account_Sequence_2, Posting_Account_Sequence_3, Posting_Account_Sequence_4, Posting_Account_Sequence_5, Posting_Account_Sequence_6, Posting_Account_Sequence_7, Posting_Account_Sequence_8, Posting_Account_Sequence_9, Posting_Account_Sequence_10, Posting_Account_Sequence_11, DEX_ROW_ID FROM .SY90100 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Business_Type, INDUSTYP, DEFCHRAC_1, DEFCHRAC_2, DEFCHRAC_3, DEFCHRAC_4, DEFCHRAC_5, ACTDESCR, PSTNGTYP, ACCATNUM, TPCLBLNC, Posting_Account_Series_1, Posting_Account_Series_2, Posting_Account_Series_3, Posting_Account_Series_4, Posting_Account_Series_5, Posting_Account_Series_6, Posting_Account_Series_7, Posting_Account_Series_8, Posting_Account_Series_9, Posting_Account_Series_10, Posting_Account_Series_11, Posting_Account_Sequence_1, Posting_Account_Sequence_2, Posting_Account_Sequence_3, Posting_Account_Sequence_4, Posting_Account_Sequence_5, Posting_Account_Sequence_6, Posting_Account_Sequence_7, Posting_Account_Sequence_8, Posting_Account_Sequence_9, Posting_Account_Sequence_10, Posting_Account_Sequence_11, DEX_ROW_ID FROM .SY90100 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY90100F_2] TO [DYNGRP]
GO
