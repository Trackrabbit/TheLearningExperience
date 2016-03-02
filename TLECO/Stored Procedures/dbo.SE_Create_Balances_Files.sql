SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SE_Create_Balances_Files]  @Id char(15) =NULL, @Yr smallint =NULL  AS  declare @netamt1 numeric declare @netamt2 numeric declare @netamt3 numeric declare @netamt4 numeric declare @perbal1 numeric declare @perbal2 numeric declare @perbal3 numeric declare @perbal4 numeric declare @curidx1 smallint declare @curidx2 smallint declare @curidx3 smallint declare @curidx4 smallint  delete SE00400 where USERID = @Id  delete SE000401 where USERID = @Id  delete SE000100 where USERID = @Id  select @netamt1 = 0 select @netamt2 = 0 select @netamt3 = 0 select @netamt4 = 0 select @perbal1 = 0 select @perbal2 = 0 select @perbal3 = 0 select @perbal4 = 0 select @curidx1 = 0 select @curidx2 = 0 select @curidx3 = 0 select @curidx4 = 0  insert SE000100(USERID,SE_Net_Amount_1,SE_Net_Amount_2,SE_Net_Amount_3,SE_Net_Amount_4,  SE_Period_Balance_1,SE_Period_Balance_2,SE_Period_Balance_3,SE_Period_Balance_4,  SECURIDX_1,SECURIDX_2,SECURIDX_3,SECURIDX_4,PERIODID,PERNAME) select @Id,@netamt1,@netamt2,@netamt3,@netamt4,@perbal1,@perbal2,@perbal3,@perbal4,  @curidx1,@curidx2,@curidx3,@curidx4,PERIODID,PERNAME from  SY40100 where YEAR1 = @Yr and SERIES = 0 and   FORIGIN = 1 and ODESCTN = ''    
GO
GRANT EXECUTE ON  [dbo].[SE_Create_Balances_Files] TO [DYNGRP]
GO
