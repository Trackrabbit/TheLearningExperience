SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--Select top 1 c.INTERID,NC_Src_IC_Account_Index,NC_Source_Company_ID from NCIC3005 icm join gl00105 a on icm.NC_Src_IC_Account_Index=a.actindx join DYNAMICS..SY01500 c on icm.CMPANYID=c.CMPANYID where a.ACTNUMST='21031-00-00-00'
--exec DE_ICCMInsert 537,'21033-00-00-00',826.13,'66310-01-02-04',454
--exec DE_ICCMTRNFInsert 3397,'21023-00-00-00',-50.00,'68400-02-02-09',867
--exec DE_ICCMTRNFInsert 3796,'21031-00-00-00',-476268.96,'10040-00-00-00
--Select * From cm20400 order by dex_row_id desc
--exec DE_BR_InsertTrasLineIC '21031-00-00-00',0,476268.96,'CGSI - Transfer In from 898026473001 - Health Med Receipts','03/31/14','MASTER RECEIPT','CSI14-RECEIPT'                                                                                                                  ',7,'146'
--DE_ICCMTRNFInsert
CREATE Proc [dbo].[DE_ICCMTRNFInsert] @xfr int,@Src_ICAC Char(20),@AMT Numeric(19,5),@ICDestString char(20),@DestACINDX int,@NC_Src_IC_Account_Index INT
as

--Select * from gl00105 where actindx=146
--Select * from Dynamics..Sy01500
declare @xrfNumMax numeric(19,5)
set @xrfNumMax=(Select MAX(Xfr_Record_Number) from CM20600)

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
    --Select Distinct SQNCLINE from gl10001 where JRNENTRY=4164 and ACTINDX=626
           (
           Select 0 as JE,
           @xrfNumMax as Xfr_Record_Number,
           0.00 as CMDNUMWK,
           0,
           '',
           '',
           0,
           0,--(Select Distinct SQNCLINE from gl10001 where JRNENTRY=@xfr and ACTINDX=@NC_Src_IC_Account_Index),
           @NC_Src_IC_Account_Index,
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
GRANT EXECUTE ON  [dbo].[DE_ICCMTRNFInsert] TO [DYNGRP]
GO
