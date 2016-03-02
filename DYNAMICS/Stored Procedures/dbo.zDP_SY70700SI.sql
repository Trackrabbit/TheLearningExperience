SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY70700SI] (@USERID char(15), @SEQNUMBR int, @USECT smallint, @CMPANYID smallint, @RPRTTYPE smallint, @PRODID smallint, @Report_Series_DictID smallint, @ReportSeries_ID smallint, @Report_Category_ID smallint, @REPORTID smallint, @RptOptID numeric(19,5), @Report_Option_Name char(81), @MyReportName char(81), @VisibleTo smallint, @USRCLASS char(15), @STRGA255 char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY70700 (USERID, SEQNUMBR, USECT, CMPANYID, RPRTTYPE, PRODID, Report_Series_DictID, ReportSeries_ID, Report_Category_ID, REPORTID, RptOptID, Report_Option_Name, MyReportName, VisibleTo, USRCLASS, STRGA255) VALUES ( @USERID, @SEQNUMBR, @USECT, @CMPANYID, @RPRTTYPE, @PRODID, @Report_Series_DictID, @ReportSeries_ID, @Report_Category_ID, @REPORTID, @RptOptID, @Report_Option_Name, @MyReportName, @VisibleTo, @USRCLASS, @STRGA255) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY70700SI] TO [DYNGRP]
GO
