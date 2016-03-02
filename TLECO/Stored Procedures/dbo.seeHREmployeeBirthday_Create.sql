SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeHREmployeeBirthday_Create] @iLanguageID int   as   set nocount on   declare @sqldropstring varchar(400),   @sqlstring1 varchar(8000),   @sqlstring2 varchar(8000),   @sqlstring3 varchar(8000),   @sqlstring4 varchar(8000),   @sqlstring5 varchar(8000),   @sqlstring6 varchar(8000),   @sqlstring7 varchar(8000),   @sqlstring8 varchar(8000),   @sqlstring9 varchar(8000),   @sqlstring10 varchar(8000),   @sqljoinstring varchar(8000),   @sqlaccessstring varchar(2000),   @tNumberSegments int,   @tSegment int,   @I_iDictID int,   @I_iLangID int,   @I_iMessageNumber int,   @I_iAliasMessageNumber int,   @I_iIntegerValue int,   @Employee_ID varchar(255), @EmployeeID_For_DrillBack varchar(255) select @I_iDictID = 1493 select @I_iMessageNumber = 22400 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Employee_ID output   select @I_iDictID = 1493 select @I_iMessageNumber = 22400 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @EmployeeID_For_DrillBack output    select @sqldropstring =   'IF EXISTS (SELECT * FROM   sys.objects WHERE  object_id = OBJECT_ID(N''[dbo].[seeHREmployeeBirthday]'') AND type in ( N''P'', N''PC'' ))  ' +   '  DROP PROCEDURE [dbo].[seeHREmployeeBirthday]  '   select @sqlstring1 =   'create procedure [dbo].[seeHREmployeeBirthday]( '+   '@Inactive int, '+   '@Position char (7),  '+   '@Department char(7), '+   '@Division char(7)) '+   'as '+   'IF @Inactive = 1  '+   'begin '+   'SELECT UPR00100.EMPLOYID, UPR00100.FRSTNAME, UPR00100.LASTNAME, UPR00100.BRTHDATE, UPR00100.DEPRTMNT, UPR00100.DIVISIONCODE_I, UPR00100.JOBTITLE, UPR00100.INACTIVE, ['+@EmployeeID_For_DrillBack+'] '+   '       FROM UPR00100  inner join Employees on '+   ' UPR00100.EMPLOYID = Employees.['+@Employee_ID+'] '+   '       WHERE  (@Department = ''*All'' or UPR00100.DEPRTMNT IN (@Department)) AND  '+   '    (@Position = ''*All'' or  UPR00100.JOBTITLE IN (@Position)) AND  '+   '    (@Division = ''*All'' or UPR00100.DIVISIONCODE_I IN (@Division))  '+   '      end '+   '                ELSE '+   'begin                 '+   'SELECT UPR00100.EMPLOYID, UPR00100.FRSTNAME, UPR00100.LASTNAME, UPR00100.BRTHDATE, UPR00100.DEPRTMNT, UPR00100.DIVISIONCODE_I, UPR00100.JOBTITLE, UPR00100.INACTIVE, ['+@EmployeeID_For_DrillBack+'] '+   '       FROM UPR00100 inner join Employees on '+   ' UPR00100.EMPLOYID = Employees.['+@Employee_ID+'] '+   '       WHERE   (@Department = ''*All'' or UPR00100.DEPRTMNT IN (@Department)) AND  '+   '    (@Position = ''*All'' or  UPR00100.JOBTITLE IN (@Position)) AND  '+   '    (@Division = ''*All'' or UPR00100.DIVISIONCODE_I IN (@Division))  '+   '       AND UPR00100.INACTIVE = 0 '+   'END '   select @sqlaccessstring =   'GRANT execute ON [dbo].[seeHREmployeeBirthday] TO [rpt_human resource administrator], [rpt_executive],[rpt_power user] '   exec (@sqldropstring)   exec (@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10)   exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeBirthday_Create] TO [DYNGRP]
GO
