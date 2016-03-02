SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01301SS_2] (@CMPANYID smallint, @USERID char(15)) AS  set nocount on SELECT TOP 1  ParamID, Process_ID, USERID, IsMultiGroup, GroupCount, PRCSSQNC, RPTGRIND, RTPACHIN, RTGRSBIN, SEQNUMBR, BACHNUMB, IntegerValue, Array_of_Booleans_1, Array_of_Booleans_2, Array_of_Booleans_3, Array_of_Booleans_4, Array_of_Booleans_5, Array_of_Booleans_6, Array_of_Booleans_7, Array_of_Booleans_8, Array_of_Booleans_9, Array_of_Booleans_10, Array_of_Booleans_11, Array_of_Booleans_12, Array_of_Booleans_13, Array_of_Booleans_14, Array_of_Booleans_15, GROUPBOX, CMPANYID, CMPNYNAM, DEX_ROW_ID FROM .SY01301 WHERE CMPANYID = @CMPANYID AND USERID = @USERID ORDER BY CMPANYID ASC, USERID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01301SS_2] TO [DYNGRP]
GO
