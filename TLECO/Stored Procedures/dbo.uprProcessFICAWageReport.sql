SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprProcessFICAWageReport]   @IN_FICATemp   varchar(255) = NULL,   @sEmployeeID varchar(15),  @eEmployeeID varchar(15),  @sCheckDate datetime,  @eCheckDate datetime,  @O_iErrorState     int output  AS  DECLARE @ALIGN varchar(25),  @REPRINT varchar(25),  @sDate varchar(10), @eDate varchar(10)  SELECT @sDate = CONVERT(varchar(10),  @sCheckDate ,110 ) SELECT @eDate = CONVERT(varchar(10),  @eCheckDate ,110 ) SELECT @ALIGN = 'ALIGNMENT'  SELECT @REPRINT =  'REPRINTED'  EXEC ( ' INSERT INTO ' + @IN_FICATemp + ' select UPR30100.EMPLOYID,UPR00100.SOCSCNUM, ' + '   (sum(FICASSWP) + sum(FICASS_TipsPay_Run)), 0.00, 0.00, ' + '   (sum(FCASWPR) + sum(FICSTPTX)), 0.00, 0.00, ' + '   (sum(FICAMWPR) + sum(FICMTPTX)), 0.00, 0.00, ' + '   (sum(FICAMWGP) + sum(FICAMed_TipsPay_Run)), 0.00, 0.00, ' + '   sum(Uncollected_FICASS_TaxP),0.00,0.00, ' + '   sum(Uncollected_FICAMed_TaxP), 0.00, 0.00 ' + '   FROM UPR30100 join UPR00100 on UPR00100.EMPLOYID=UPR30100.EMPLOYID ' + '   WHERE UPR30100.EMPLOYID BETWEEN''' + @sEmployeeID + ''' AND''' +  @eEmployeeID + ''''  + '   AND UPR30100.CHEKDATE BETWEEN '''+ @sDate +''' AND ''' + @eDate + '''' + '   AND UPR30100.EMPLOYID <> '''+ @ALIGN +''' AND UPR30100.EMPLOYID <>'''+ @REPRINT +'''  AND NOT(UPR30100.VOIDED = 1 AND UPR30100.Voided_by_Void_Checks = 0) ' + '   GROUP BY UPR30100.EMPLOYID, UPR00100.SOCSCNUM ')  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprProcessFICAWageReport] TO [DYNGRP]
GO
