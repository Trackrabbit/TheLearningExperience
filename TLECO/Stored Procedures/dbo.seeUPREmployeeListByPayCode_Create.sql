SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeUPREmployeeListByPayCode_Create] @iLanguageID int   as   set nocount on   declare @sqldropstring varchar(400),   @sqlstring1 varchar(8000),   @sqlstring2 varchar(8000),   @sqlstring3 varchar(8000),   @sqlstring4 varchar(8000),   @sqlstring5 varchar(8000),   @sqlstring6 varchar(8000),   @sqlstring7 varchar(8000),   @sqlstring8 varchar(8000),   @sqlstring9 varchar(8000),   @sqlstring10 varchar(8000),   @sqljoinstring varchar(8000),   @sqlaccessstring varchar(2000),   @tNumberSegments int,   @tSegment int,   @I_iDictID int,   @I_iLangID int,   @I_iMessageNumber int,   @I_iAliasMessageNumber int,   @I_iIntegerValue int,  @Employee_ID varchar(255), @EmployeeID_For_DrillBack varchar(255)  select @I_iDictID = 1493 select @I_iMessageNumber = 22400 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Employee_ID output   select @I_iDictID = 1493 select @I_iMessageNumber = 22400 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @EmployeeID_For_DrillBack output    select @sqldropstring =   'IF EXISTS (SELECT * FROM   sys.objects WHERE  object_id = OBJECT_ID(N''[dbo].[seeUPREmployeeListByPayCode]'') AND type in ( N''P'', N''PC'' ))  ' +   '  DROP PROCEDURE [dbo].[seeUPREmployeeListByPayCode]  '   select @sqlstring1 =   'create procedure [dbo].[seeUPREmployeeListByPayCode]( '+   '@PayCode char(7), '+   '@DateFrom datetime, '+   '@DateTo datetime)  '+   'as '+   'SELECT        UPR30300.EMPLOYID, UPR30300.PAYROLCD, SUM(UPR30300.UPRTRXAM) AS AMOUNT, SUM(UPR30300.UNTSTOPY) AS UNITS, UPR00100.LASTNAME, UPR00100.FRSTNAME, Employees.['+@EmployeeID_For_DrillBack+']  '+   'FROM            UPR00100 INNER JOIN '+   '                         UPR30300 ON UPR00100.EMPLOYID = UPR30300.EMPLOYID '+   ' inner join Employees on UPR00100.EMPLOYID = Employees.['+@Employee_ID+'] '+   'WHERE        (UPR30300.CHEKDATE >= @DateFrom) AND (UPR30300.CHEKDATE <= @DateTo) AND (@PayCode = ''*All'' or (UPR30300.PAYROLCD IN (@PayCode))) '+   'GROUP BY UPR30300.EMPLOYID, UPR30300.PAYROLCD, UPR00100.LASTNAME, UPR00100.FRSTNAME,Employees.['+@EmployeeID_For_DrillBack+'] '  select @sqlaccessstring =   'GRANT execute ON [dbo].[seeUPREmployeeListByPayCode] TO [rpt_payroll], [rpt_executive], [rpt_power user] '   exec (@sqldropstring)   exec (@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10)   exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeListByPayCode_Create] TO [DYNGRP]
GO