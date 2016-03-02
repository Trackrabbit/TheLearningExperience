SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    Procedure [dbo].[aagDoUnpostedDistsExistForAcctClass]  @I_nAcctClassID int,  @O_bExistUnpostedDists tinyint = 0 output  AS  Begin   Set @O_bExistUnpostedDists = 0  If exists(select top 1 POSTED from AAG20001 where POSTED = 0 and   ACTINDX in (Select ACTINDX from AAG00200 where aaAcctClassID = @I_nAcctClassID))  Set @O_bExistUnpostedDists = 1  If exists(select ACTINDX from AAG10001 where   ACTINDX in (Select ACTINDX from AAG00200 where aaAcctClassID = @I_nAcctClassID))  Set @O_bExistUnpostedDists = 1 End    
GO
GRANT EXECUTE ON  [dbo].[aagDoUnpostedDistsExistForAcctClass] TO [DYNGRP]
GO
