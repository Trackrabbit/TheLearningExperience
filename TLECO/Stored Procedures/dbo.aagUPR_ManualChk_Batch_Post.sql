SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[aagUPR_ManualChk_Batch_Post] @I_cUserID varchar(20), @iCompanyID SMALLINT, @O_lAUCTRLCD CHAR(13) OUTPUT AS Begin  DECLARE @lPYADNMBR INT  DECLARE @lPYRLRTYP SMALLINT  DECLARE @lEMPLOYID CHAR(15)  DECLARE @lHdrID INT  DECLARE @Status SMALLINT  DECLARE @lAUCTRLCD CHAR(13)  DECLARE pst cursor fast_forward for  SELECT dist.EMPLOYID, hdr.AUCTRLCD   FROM UPR10209 dist INNER JOIN UPR10200 hdr ON dist.USERID = hdr.USERID  WHERE dist.USERID = @I_cUserID AND   ltrim(rtrim(dist.EMPLOYID)) <> ''  GROUP BY dist.EMPLOYID, hdr.AUCTRLCD   open pst  FETCH NEXT FROM pst INTO @lEMPLOYID, @lAUCTRLCD  while @@fetch_status = 0   BEGIN  EXEC aagUPR_ManualChk_Post_CreateSubDetails @I_cUserID,  @lEMPLOYID,  @iCompanyID  SET @O_lAUCTRLCD = @lAUCTRLCD  FETCH NEXT FROM pst INTO @lEMPLOYID, @lAUCTRLCD  END  close pst  deallocate pst  End    
GO
GRANT EXECUTE ON  [dbo].[aagUPR_ManualChk_Batch_Post] TO [DYNGRP]
GO
