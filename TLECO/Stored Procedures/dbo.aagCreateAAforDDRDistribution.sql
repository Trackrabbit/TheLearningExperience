SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create               procedure [dbo].[aagCreateAAforDDRDistribution]  @GLPOSTDT  datetime,  @CompanyID smallint,  @InterID char(5),  @SqlSessionID int,  @USERID char(15) as  begin   exec aagCreateAADistinSubLedgerforDDR   @GLPOSTDT, @CompanyID, @InterID, @SqlSessionID,@USERID   exec aagCreateAADistinGLWorkDDR   @GLPOSTDT, @CompanyID, @InterID, @SqlSessionID, @USERID  end     
GO
GRANT EXECUTE ON  [dbo].[aagCreateAAforDDRDistribution] TO [DYNGRP]
GO
