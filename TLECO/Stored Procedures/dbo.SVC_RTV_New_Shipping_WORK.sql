SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RTV_New_Shipping_WORK]  (@USERID char(15))  AS   insert into SVC05615   SELECT @USERID,SVC05601.RTV_Number, SVC05601.RTV_Line, SVC05601.RTV_Type,   isnull(SVC05601.OFFID,''),   isnull(SVC05601.VENDORID,''),  isnull(SVC05601.ADRSCODE,''),  isnull(PM00200.VENDNAME,''),  isnull(SVC05601.ITEMNMBR ,''),  isnull(SVC05601.ITMTRKOP,0),  isnull(SVC05601.QUANTITY,0),  isnull(SVC05601.LOCCODEB,''),  isnull(SVC05601.VNDITNUM,''),  isnull(SVC05601.Shipping_Method_Out,''),  isnull(SVC05601.Tracking_Number,''),  0, 0,0,0,'', '' FROM SVC05601 LEFT JOIN PM00200 on SVC05601.VENDORID = PM00200.VENDORID  Left Join SVC05615 on (SVC05615.RTV_Number = SVC05601.RTV_Number and SVC05615.RTV_Line = SVC05601.RTV_Line)  WHERE SVC05601.RTV_Status = 2 and SVC05601.RTV_Number not in (select RTV_Number from SVC05615 where SVC05615.RTV_Line = SVC05601.RTV_Line and SVC05615.USERID = @USERID)  if (select count(*) from SVC05615 where USERID = @USERID and POSTED = 1) > 0   delete from SVC05615 with (rowlock) where USERID = @USERID and POSTED = 1  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_New_Shipping_WORK] TO [DYNGRP]
GO
