SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE Proc [dbo].[DE_ICTransferInsertStep2] @Dex int,@srcCompany int,@DestACINDX int,@Src_ICAC Char(20),@destCompID int,@FromCB char(20),@Reference char(30),@cbto char(20),@Reference1 char(30),@AMT1 Numeric(19,5),@PostDate datetime
as
--EXEC DE_ICTransferInsert 92, 6,627,'21022-00-00-00',1,'CSI06-CGDISB','Monthly Cash Sheet','OPERATION',' CSI - Transfer in from 4279 - Operating Nurse World ',1,798.52,'6/1/2014'
--EXEC DE_ICTransferInsert 82, 6,140,137,1,'CSI06-CGDISB','Monthly Cash Sheet','OPERATION',' CSI - Transfer in from 4279 - Operating Nurse World ',854.74,'6/1/2014'
Declare @Xfr_Record_Number numeric(19,5)
Declare @NC_Srv_ICACTIndex int
Declare @NC_Dest_IC_Account_Index int
Declare @ActindxCb int

--select * from csi01..gl00105 where actindx=140
--select * from csi06..gl00105 where actindx=137


Select @ActindxCb=ACTINDX from CM00100 Where CHEKBKID=@cbto
Select @Xfr_Record_Number=Xfr_Record_Number from CM20600 where DEX_ROW_ID=@Dex

Select @NC_Srv_ICACTIndex=NC_Dest_IC_Account_Index from ncic3005 where  CMPANYID=@destCompID
--select * from ncic3005 where  CMPANYID=6

Select top 1 @NC_Dest_IC_Account_Index=NC_Src_IC_Account_Index from NCIC3005 icm join GL00105 a on icm.NC_Src_IC_Account_Index=a.ACTINDX where icm.CMPANYID=@destCompID
--select * from NCIC3005 icm join GL00105 a on icm.NC_Src_IC_Account_Index=a.ACTINDX where a.ACTNUMST='21022-00-00-00'
--select * from NCIC3005 order by dex_row_id desc
--select * from ncic3006 order by dex_row_id desc
--Select * From ncic5004 order by dex_row_id desc
--select * from csi06..gl00105 where actindx=4
declare @AMT2 numeric(19,5)
set @AMT2=ABS(@AMT1)

BEGIN DECLARE @num int EXEC zDP_NCIC3006SI 0, @Xfr_Record_Number, 0.00000, 0, '', '', 0, 0.00000, @NC_Dest_IC_Account_Index, @destCompID, @DestACINDX, @NC_Srv_ICACTIndex, '', '', '', 0, 0, @num OUT SELECT @num END 
--Start Here
BEGIN DECLARE @num1 int EXEC zDP_NCIC5004SI @destCompID, @Xfr_Record_Number, @NC_Dest_IC_Account_Index, @NC_Srv_ICACTIndex, @srcCompany, '', @cbto, @ActindxCb, @Reference, 0.00000, '', @FromCB, @DestACINDX, @Reference1, @AMT2, @AMT2, @PostDate, 0, 0, @num1 OUT SELECT @num1 END 

GO
GRANT EXECUTE ON  [dbo].[DE_ICTransferInsertStep2] TO [DYNGRP]
GO
