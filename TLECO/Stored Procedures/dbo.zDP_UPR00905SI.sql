SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR00905SI] (@YEAR1 smallint, @EMPLOYID char(15), @BENEFIT char(7), @Effective_Date datetime, @OfferOfCoverageCode smallint, @SafeHarborCode smallint, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .UPR00905 (YEAR1, EMPLOYID, BENEFIT, Effective_Date, OfferOfCoverageCode, SafeHarborCode, CHANGEBY_I, CHANGEDATE_I) VALUES ( @YEAR1, @EMPLOYID, @BENEFIT, @Effective_Date, @OfferOfCoverageCode, @SafeHarborCode, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00905SI] TO [DYNGRP]
GO
