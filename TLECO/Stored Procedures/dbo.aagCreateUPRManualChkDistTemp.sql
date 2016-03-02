SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create      procedure [dbo].[aagCreateUPRManualChkDistTemp] @I_nPYADNMBR int = 0, @I_nMLCHKTYP smallint = 0, @I_cTableDistTemp nvarchar(30) = null, @Error tinyint =0  as  If exists(select name from tempdb..sysobjects where name = '##aagCreateUPRManualChkDistTemp'    and type = 'U') drop table ##aagCreateUPRManualChkDistTemp Begin    Exec('SELECT UPR.ACTINDX, DEBITAMT, CRDTAMNT, IDENTITY(int, 1,1) AS aaDisplayDistID, GL.ACTNUMST AS ACTNUMST  INTO ##aagCreateUPRManualChkDistTemp FROM UPR10310 UPR   INNER JOIN AAG00200 AA ON UPR.ACTINDX = AA.ACTINDX AND aaAcctClassID <> 0   INNER JOIN GL00105 GL ON UPR.ACTINDX = GL.ACTINDX  WHERE PYADNMBR = ' + @I_nPYADNMBR + ' AND MLCHKTYP = ' + @I_nMLCHKTYP + '  ORDER BY UPR.SEQNUMBR' )   Exec('truncate table ' + @I_cTableDistTemp)   Exec('Insert into ' + @I_cTableDistTemp + '([ACTINDX], [DEBITAMT], [CRDTAMNT], [aaDisplayDistID], [ACTNUMST])   select ACTINDX, [DEBITAMT], [CRDTAMNT], [aaDisplayDistID], [ACTNUMST]   from ##aagCreateUPRManualChkDistTemp ')    drop table ##aagCreateUPRManualChkDistTemp  Return End    
GO
GRANT EXECUTE ON  [dbo].[aagCreateUPRManualChkDistTemp] TO [DYNGRP]
GO
