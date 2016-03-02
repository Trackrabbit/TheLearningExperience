SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE  [dbo].[aagIsAcctLinkedToClass] @I_nAcctIdx INT, @O_Linked TINYINT OUT, @O_TrackCust TINYINT OUT, @O_TrackVend TINYINT OUT, @O_TrackItem TINYINT OUT, @O_TrackSite TINYINT OUT, @O_TrackEmpl TINYINT OUT, @O_TrackAsset TINYINT OUT, @O_TrackBook TINYINT OUT  AS  BEGIN  DECLARE @Linked TINYINT   IF EXISTS(SELECT aaAcctClassID FROM AAG00200 WHERE ACTINDX = @I_nAcctIdx)  SELECT @O_Linked = 1, @O_TrackCust = aaSetCustID, @O_TrackVend = aaSetVendID,   @O_TrackItem = aaSetItemID, @O_TrackSite = aaSetSiteID, @O_TrackEmpl = aaSetEmployeeID ,@O_TrackAsset = aaSetAssetID, @O_TrackBook = aaSetBookID  FROM AAG00201  WHERE aaAcctClassID IN (SELECT aaAcctClassID FROM AAG00200 WHERE ACTINDX = @I_nAcctIdx)  ELSE  SELECT @O_Linked = 0, @O_TrackCust = 0, @O_TrackVend = 0,   @O_TrackItem = 0, @O_TrackSite = 0, @O_TrackEmpl = 0, @O_TrackAsset = 0, @O_TrackBook = 0 END    
GO
GRANT EXECUTE ON  [dbo].[aagIsAcctLinkedToClass] TO [DYNGRP]
GO
