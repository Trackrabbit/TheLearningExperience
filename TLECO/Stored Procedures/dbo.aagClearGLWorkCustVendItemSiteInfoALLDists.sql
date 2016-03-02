SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagClearGLWorkCustVendItemSiteInfoALLDists] @I_aaGLWorkHdrID int = 0 as begin  update aaGLWorkHdr   set  aaCustID = case aaSetCustID when '' then '' else aaCustID end,  aaVendID = case aaSetVendID when '' then '' else aaVendID end,  aaItemID = case aaSetItemID when '' then '' else aaItemID end,  aaSiteID = case aaSetSiteID when '' then '' else aaSiteID end,  EMPLOYID = case aaSetEmployeeID when '' then '' else EMPLOYID end  from AAG10001 aaGLWorkHdr  join AAG00200 A200  on A200.ACTINDX = aaGLWorkHdr.ACTINDX  join AAG00201 A201  on A201.aaAcctClassID = A200.aaAcctClassID  where A201.aaSetCustID * A201.aaSetVendID * A201.aaSetItemID * A201.aaSetSiteID * A201.aaSetEmployeeID = 0  and (aaCustID <> '' or aaVendID <> '' or aaItemID <> '' or aaSiteID <> '' or EMPLOYID <> '')   and aaGLWorkHdrID = @I_aaGLWorkHdrID  end    
GO
GRANT EXECUTE ON  [dbo].[aagClearGLWorkCustVendItemSiteInfoALLDists] TO [DYNGRP]
GO
