SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY60100SS_2] (@CMPANYID smallint, @USERID char(15)) AS  set nocount on SELECT TOP 1  TRKUSER, USERID, CMPANYID, SRBCHSEC_1, SRBCHSEC_2, SRBCHSEC_3, SRBCHSEC_4, SRBCHSEC_5, SRBCHSEC_6, SRBCHSEC_7, SRSFNSEC_1, SRSFNSEC_2, SRSFNSEC_3, SRSFNSEC_4, SRSFNSEC_5, SRSFNSEC_6, SRSFNSEC_7, MSCPRMIS, DEX_ROW_ID FROM .SY60100 WHERE CMPANYID = @CMPANYID AND USERID = @USERID ORDER BY CMPANYID ASC, USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY60100SS_2] TO [DYNGRP]
GO