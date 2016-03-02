SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00500SI] (@BCHSOURC char(15), @BACHNUMB char(15), @SERIES smallint, @CURNCYID char(15), @CURRNIDX smallint, @ORIGCNTRLTOT numeric(19,5), @ORIGBTCHTOT numeric(19,5), @EXGTBLID char(15), @XCHGRATE numeric(19,7), @RATETPID char(15), @RTCLCMTD smallint, @TIME1 datetime, @EXCHDATE datetime, @CHEKDATE datetime, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MC00500 (BCHSOURC, BACHNUMB, SERIES, CURNCYID, CURRNIDX, ORIGCNTRLTOT, ORIGBTCHTOT, EXGTBLID, XCHGRATE, RATETPID, RTCLCMTD, TIME1, EXCHDATE, CHEKDATE, DENXRATE, MCTRXSTT) VALUES ( @BCHSOURC, @BACHNUMB, @SERIES, @CURNCYID, @CURRNIDX, @ORIGCNTRLTOT, @ORIGBTCHTOT, @EXGTBLID, @XCHGRATE, @RATETPID, @RTCLCMTD, @TIME1, @EXCHDATE, @CHEKDATE, @DENXRATE, @MCTRXSTT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00500SI] TO [DYNGRP]
GO
