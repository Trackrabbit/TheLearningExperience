SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO


--exec de_GetICParameter 3074,0,0,0,'','',0,'21020-00-00-00'
CREATE PROC [dbo].[de_GetICParameter] 
(@JRNENTRY int, @Xfr_Record_Number numeric(19,5),
 @CMDNUMWK numeric(19,5), @VOIDED tinyint, @VCHRNMBR char(21),
  @RMDNUMWK char(17), @DOCTYPE smallint,@AccountString char(20)) 
  AS /* 12.00.0270.000 */ set nocount on 
  --select * from GL10001 where JRNENTRY=3074

  
Declare @NC_Src_IC_Account_Index int
set @NC_Src_IC_Account_Index =(Select IC.NC_Src_IC_Account_Index from NCIC3005 ic join GL00105 a on ic.NC_Src_IC_Account_Index=a.ACTINDX where a.ACTNUMST=@AccountString)
Declare @SQNCLINE numeric(19,5)
Set @SQNCLINE =(Select top 1 MAX(SQNCLINE) from GL10001 where jrnentry=@JRNENTRY and actindx=@NC_Src_IC_Account_Index) 
  
  
  SELECT TOP 1  JRNENTRY, Xfr_Record_Number, CMDNUMWK, VOIDED,
  VCHRNMBR, RMDNUMWK, DOCTYPE, SQNCLINE, NC_Src_IC_Account_Index, 
  CMPANYID, NC_Dest_Account_Index, NC_Dest_IC_Account_Index, Remote_Company_ID,
   Remote_Destination_Accou, Remote_Destination_IC_Ac, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, 
   DEX_ROW_ID FROM .NCIC3006 WHERE JRNENTRY = @JRNENTRY AND Xfr_Record_Number = @Xfr_Record_Number 
   AND CMDNUMWK = @CMDNUMWK AND VOIDED = @VOIDED AND VCHRNMBR = @VCHRNMBR AND RMDNUMWK = @RMDNUMWK
    AND DOCTYPE = @DOCTYPE AND SQNCLINE = @SQNCLINE AND NC_Src_IC_Account_Index = @NC_Src_IC_Account_Index 
    
    ORDER BY JRNENTRY ASC, Xfr_Record_Number ASC, CMDNUMWK ASC, VOIDED ASC, VCHRNMBR ASC, RMDNUMWK ASC, DOCTYPE ASC, SQNCLINE ASC, NC_Src_IC_Account_Index ASC set nocount off 


GO
GRANT EXECUTE ON  [dbo].[de_GetICParameter] TO [DYNGRP]
GO
