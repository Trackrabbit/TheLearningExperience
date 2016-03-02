SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprCheckIfAdvancePay]  @IN_EmpID char(15),  @IN_AudtCtrlCd char(13),  @OUT_IsAdvPay tinyint  output,  @O_iErrorState   int output as  DECLARE  @PAYADVAMT  dec(19,5)  SELECT @OUT_IsAdvPay = 0  if (SELECT sum(PAYADVNC)  FROM UPR30300  WHERE UPR30300.EMPLOYID = @IN_EmpID and   UPR30300.AUCTRLCD = @IN_AudtCtrlCd and  UPR30300.PYRLRTYP = 1) > 0  SELECT @OUT_IsAdvPay = 1  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprCheckIfAdvancePay] TO [DYNGRP]
GO
