SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00310SS_1] (@EQUIPID int, @LNITMSEQ int) AS  set nocount on SELECT TOP 1  EQUIPID, LNITMSEQ, DATE1, TIME1, USERID, From_Customer_Number, To_Customer_Number, From_Config_Reference, To_Config_Reference, From_Confg_Level, To_Config_Level, From_Config_Sequence, To_Config_Sequence, From_Serial_Number, To_Serial_Number, From_Item_Number, To_Item_Number, DSCRIPTN, DEX_ROW_ID FROM .SVC00310 WHERE EQUIPID = @EQUIPID AND LNITMSEQ = @LNITMSEQ ORDER BY EQUIPID ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00310SS_1] TO [DYNGRP]
GO
