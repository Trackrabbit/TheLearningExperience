SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--select * from cm00100
--exec DE_InsertNCIC50004 14,83.00000,146,7,1,'MASTER RECEIPT','10003-00-00-00                                                                                                                   ','CGSI - Transfer In from 898026473001 - Health Med Receipts','CSI14-RECEIPT','10003-00-00-00                                                                                                                   ',0476268.96,'3/31/2014'
--exec DE_InsertNCIC50004 14,79.00000,1,146,
--7,146,'MASTER RECEIPT','10003-00-00-00','CGSI - Transfer In from 898026473001 - Health Med Receipts','CSI14-RECEIPT',10003-00-00-00,0476268.96,'3/31/2014'
--Select * from NCIC5004 order by Dex_row_id desc
--exec DE_InsertNCIC50004 14,82.00000,146,7,1,'MASTER RECEIPT','10003-00-00-00                                                                                                                   ','CGSI - Transfer In from 898026473001 - Health Med Receipts','CSI14-RECEIPT','10003-00-00-00                                                                                                                   ',0476268.96,'3/31/2014'
--exec DE_InsertNCIC50004 14,81.00000,1,146,7,1,'MASTER RECEIPT','10003-00-00-00','CGSI - Transfer In from 898026473001 - Health Med Receipts','CSI14-RECEIPT','10003-00-00-00',0476268.96,'3/31/2014'
CREATE Proc [dbo].[DE_InsertNCIC50004] @companyid int,@XFRRec numeric(19,5),@Src_ICAC int,@DestACINDX int,@SrcCMPNYID int,@CHEKBKID char(15),@ACTINDX char(15),
@DistRef char(31),@NC_Checkbook_ID char(15),@destACIndxa int,@amt1 numeric(19,5),@postdate datetime
as


INSERT INTO [NCIC5004]
           ([CMPANYID]
           ,[Xfr_Record_Number]
           ,[NC_Src_Account_Index]
           ,[NC_Dest_IC_Account_Index]
           ,[NC_Source_Company_ID]
           ,[CURNCYID]
           ,[CHEKBKID]
           ,[ACTINDX]
           ,[DistRef]
           ,[NC_Xfr_Record_Number]
           ,[NC_Currency_ID]
           ,[NC_Checkbook_ID]
           ,[NC_Account_Index]
           ,[NC_Distribution_Referenc]
           ,[FUNCTAMT]
           ,[ORIGAMT]
           ,[CMXFTDATE]
           ,[NC_FunctionalOriginating]
           ,[VOIDED])
     VALUES
           (@companyid
           ,@XFRRec
           ,@Src_ICAC
            ,@DestACINDX
           ,@SrcCMPNYID
           ,''
           ,@CHEKBKID
           ,(Select Actindx From CM00100 where CHEKBKID=@CHEKBKID)
           ,@DistRef 
           ,0.00
           ,''
           ,@NC_Checkbook_ID
           ,@destACIndxa
           ,@DistRef
           ,@amt1
           ,@amt1
           ,@postdate
           ,0
           ,0)


GO
GRANT EXECUTE ON  [dbo].[DE_InsertNCIC50004] TO [DYNGRP]
GO
