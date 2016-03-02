SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeivPrintRemoveBinTransferHistory]   @inRemovalDate datetime = null AS  declare @DrillBack_Base_Url varchar(255)  select @DrillBack_Base_Url = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)  select @inRemovalDate = Case When @inRemovalDate Is Null Or @inRemovalDate = '' Then GETDATE() Else @inRemovalDate End   SELECT a.DOCTYPE,a.Bin_XFer_Doc_Number,a.Bin_XFer_Date,a.SEQNUMBR,a.ITEMNMBR,a.LOCNCODE,a.QTYTYPE,  a.FROMBIN,a.TOBIN,a.SERLTNUM,a.SERLTQTY,a.DATERECD,a.DTSEQNUM,a.OVRSERLT,a.Reason_Code,  a.USERID,a.NOTEINDX,a.DEX_ROW_ID,b.ITEMDESC,b.ITMTRKOP,b.DECPLQTY,c.BASEUOFM,  (@DrillBack_Base_Url + dbo.dgppItemID(1,b.[ITEMNMBR],b.[LOCNCODE])) as Item_Number_For_DrillBack   FROM IV30004 a, IV00101 b, IV40201 c  WHERE (Bin_XFer_Date<=@inRemovalDate)  and a.ITEMNMBR=b.ITEMNMBR and b.UOMSCHDL=c.UOMSCHDL  ORDER BY Bin_XFer_Doc_Number   
GO
GRANT EXECUTE ON  [dbo].[seeivPrintRemoveBinTransferHistory] TO [DYNGRP]
GO
