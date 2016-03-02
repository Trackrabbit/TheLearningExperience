SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprLoadTempDeptWageTable]  @IN_sDept char(6),  @IN_eDept char(6),  @IN_sYear smallint,  @IN_eYear smallint,  @IN_sChkDt datetime,  @IN_eChkDt datetime,  @IN_sPayCd char(6),  @IN_ePayCd char(6),  @IN_sTableName char(30) as  exec('INSERT INTO ' +  @IN_sTableName + ' SELECT UPR30300.DEPRTMNT,  UPR30300.PAYROLCD,   UPR30300.EMPLOYID,   isnull(sum(case WHEN UPR40600.PAYTYPE in (6,7) and UPR40600.BSPAYRCD <> '''' and X.PAYTYPE = 3 THEN NULL   WHEN UPR40600.PAYTYPE <> 3 THEN UPR30300.UNTSTOPY end), 0.0),   0,0,  sum(UPR30300.UPRTRXAM),  0,0  FROM UPR30300 left join UPR40600   ON UPR30300.PAYROLCD = UPR40600.PAYRCORD  left join UPR40600 X   ON UPR40600.BSPAYRCD = X.PAYRCORD   WHERE UPR30300.PYRLRTYP = 1   and UPR30300.PAYADVNC = 0.00  and UPR30300.DEPRTMNT between ''' +  @IN_sDept + ''' and ''' + @IN_eDept +   ''' and UPR30300.YEAR1 between ' + @IN_sYear + ' and ' +  @IN_eYear +   ' and UPR30300.CHEKDATE between ''' + @IN_sChkDt + ''' and ''' +  @IN_eChkDt +   ''' and UPR30300.PAYROLCD between ''' + @IN_sPayCd + ''' and ''' + @IN_ePayCd +  ''' and UPR40600.PAYTYPE <> 13   GROUP BY UPR30300.DEPRTMNT, UPR30300.PAYROLCD, UPR30300.EMPLOYID')  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempDeptWageTable] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempDeptWageTable] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempDeptWageTable] TO [rpt_power user]
GO
