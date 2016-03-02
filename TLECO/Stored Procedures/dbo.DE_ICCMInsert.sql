SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--exec DE_ICCMInsert 537,'21033-00-00-00',826.13,'66310-01-02-04',454
--exec DE_ICCMInsert 3397,'21023-00-00-00',-50.00,'68400-02-02-09',867
CREATE Proc [dbo].[DE_ICCMInsert] @CMDNUMWK int,@Src_ICAC Char(20),@AMT Numeric(19,5),@ICDestString char(20),@DestACINDX int
as


--Select * from Dynamics..Sy01500

INSERT INTO [NCIC3006]
           ([JRNENTRY]
           ,[Xfr_Record_Number]
           ,[CMDNUMWK]
           ,[VOIDED]
           ,[VCHRNMBR]
           ,[RMDNUMWK]
           ,[DOCTYPE]
           ,[SQNCLINE]
           ,[NC_Src_IC_Account_Index]
           ,[CMPANYID]
           ,[NC_Dest_Account_Index]
           ,[NC_Dest_IC_Account_Index]
           ,[Remote_Company_ID]
           ,[Remote_Destination_Accou]
           ,[Remote_Destination_IC_Ac]
           ,[NC_Copy_MDA_CB]
           ,[NC_Reverse_MDA_CB])
    -- VALUES
           (
           Select 0 as JE,
           0.00000,
           @CMDNUMWK as CMDNUMWK,
           0,
           '',
           '',
           0,
           (Select top 1 DSTSQNUM from CM20400 je join GL00105 a on je.ACTINDX=a.ACTINDX where CMDNUMWK=@CMDNUMWK and  a.ACTNUMST=@Src_ICAC and (DEBITAMT-CRDTAMNT)=@AMT),
           (Select top 1 ACTINDX from GL00105 where ACTNUMST=@Src_ICAC),
           (Select top 1 CMPANYID from NCIC3005 icm join GL00105 a on icm.NC_Src_IC_Account_Index=a.ACTINDX where a.ACTNUMST=@Src_ICAC),
           @DestACINDX,
           (Select top 1 NC_Dest_IC_Account_Index from NCIC3005 icm join GL00105 a on icm.NC_Src_IC_Account_Index=a.ACTINDX where a.ACTNUMST=@Src_ICAC),
           '',
           '',
           '',
           1,
           0
           )


GO
GRANT EXECUTE ON  [dbo].[DE_ICCMInsert] TO [DYNGRP]
GO
