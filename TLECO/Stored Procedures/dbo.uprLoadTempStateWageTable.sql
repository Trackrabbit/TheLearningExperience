SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprLoadTempStateWageTable]  @IN_sEmpID char(15),  @IN_eEmpID char(15),  @IN_sYear smallint,  @IN_eYear smallint,  @IN_sChkDt datetime,  @IN_eChkDt datetime,  @IN_sStateCd char(2),  @IN_eStateCd char(2),  @IN_Table char(15) as  exec ('INSERT INTO ' + @IN_Table +   ' SELECT UPR30300.PAYROLCD,   UPR30300.EMPLOYID,   isnull(sum(UPR30300.TXBLWAGS), 0.0),   0,  0,  isnull(sum(UPR30300.UPRTRXAM), 0.0),  0,  0  FROM UPR30300 left join UPR00700   ON UPR30300.PAYROLCD = UPR00700.STATECD  and UPR30300.EMPLOYID = UPR00700.EMPLOYID  WHERE UPR30300.PYRLRTYP = 4   and UPR30300.YEAR1 between ' +  @IN_sYear + ' and ' + @IN_eYear +  ' and UPR30300.CHEKDATE between ''' + @IN_sChkDt + ''' and ''' +  @IN_eChkDt +  ''' and UPR00700.STATECD between ''' + @IN_sStateCd + ''' and ''' + @IN_eStateCd +  ''' and UPR00700.EMPLOYID between ''' + @IN_sEmpID + ''' and  ''' + @IN_eEmpID +  ''' and UPR00700.STATECD <> ''''  GROUP BY UPR30300.PAYROLCD, UPR30300.EMPLOYID')  exec ('INSERT INTO ' + @IN_Table +   ' SELECT UPR00700.STATECD,  UPR00700.EMPLOYID,   0, 0, 0, 0, 0, 0  FROM UPR00700  WHERE   UPR00700.EMPLOYID between ''' + @IN_sEmpID + ''' and  ''' + @IN_eEmpID +  ''' and UPR00700.STATECD <> ''''  and not exists (select STATECD from ' + @IN_Table + ' where ' + @IN_Table + '.STATECD=UPR00700.STATECD and ' + @IN_Table + '.EMPLOYID=UPR00700.EMPLOYID)')  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempStateWageTable] TO [DYNGRP]
GO
