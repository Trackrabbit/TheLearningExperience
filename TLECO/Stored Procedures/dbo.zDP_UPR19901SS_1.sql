SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR19901SS_1] (@USERID char(15), @UPRACTYP smallint, @DEPRTMNT char(7), @JOBTITLE char(7), @PAYROLCD char(7)) AS  set nocount on SELECT TOP 1  DEPRTMNT, JOBTITLE, PAYROLCD, ACTINDX, UPRACTYP, USERID, DEX_ROW_ID FROM .UPR19901 WHERE USERID = @USERID AND UPRACTYP = @UPRACTYP AND DEPRTMNT = @DEPRTMNT AND JOBTITLE = @JOBTITLE AND PAYROLCD = @PAYROLCD ORDER BY USERID ASC, UPRACTYP ASC, DEPRTMNT ASC, JOBTITLE ASC, PAYROLCD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR19901SS_1] TO [DYNGRP]
GO
