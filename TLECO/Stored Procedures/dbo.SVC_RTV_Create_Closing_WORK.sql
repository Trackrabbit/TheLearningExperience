SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RTV_Create_Closing_WORK]  (@USERID char(15),  @Error integer OUTPUT)  AS delete from SVC05635 where USERID = @USERID   insert into SVC05635   SELECT @USERID,SVC05601.RTV_Number, SVC05601.RTV_Line, SVC05601.RTV_Type,   isnull(SVC05601.OFFID,''),   SVC05601.VENDORID,SVC05601.ADRSCODE,  isnull(PM00200.VENDNAME,''),  isnull(SVC05601.LOCNCODE,''),  isnull(SVC05601.Return_Item_Number ,''),  isnull(SVC05601.VNDITNUM,''),  Part_Cost,  Part_Price,  Labor_Cost,  Labor_Price,  Expense_Cost,  Expense_Price,   Travel_Cost,  Travel_Price,  Originating_Part_Cost,  Originating_Part_Price,  Originating_Labor_Cost,  Originating_Labor_Price,  Originating_Expense_Cost,  Originating_ExpensePrice,  Originating_Travel_Cost,  Originating_Travel_Price,  0,0,0,'', '' FROM SVC05601 LEFT JOIN PM00200 on SVC05601.VENDORID = PM00200.VENDORID  WHERE SVC05601.RTV_Status = 5   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Create_Closing_WORK] TO [DYNGRP]
GO
