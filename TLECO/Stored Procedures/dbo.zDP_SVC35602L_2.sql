SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35602L_2] (@RTV_Number_RS char(15), @RTV_Line_RS numeric(19,5), @MARKED_RS tinyint, @POSTED_RS tinyint, @SLTSQNUM_RS int, @RTV_Number_RE char(15), @RTV_Line_RE numeric(19,5), @MARKED_RE tinyint, @POSTED_RE tinyint, @SLTSQNUM_RE int) AS  set nocount on IF @RTV_Number_RS IS NULL BEGIN SELECT TOP 25  RTV_Number, RTV_Line, QTYTYPE, SERLTQTY, SLTSQNUM, ITEMNMBR, SERLNMBR, SVC_Serial_ID, EQUIPID, Return_Item_Number, Return_Serial_Number, SVC_Return_Serial_ID, Return_Equipment_ID, BIN, TOBIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, Shipped, MARKED, POSTED, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC35602 ORDER BY RTV_Number DESC, RTV_Line DESC, MARKED DESC, POSTED DESC, SLTSQNUM DESC END ELSE IF @RTV_Number_RS = @RTV_Number_RE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, QTYTYPE, SERLTQTY, SLTSQNUM, ITEMNMBR, SERLNMBR, SVC_Serial_ID, EQUIPID, Return_Item_Number, Return_Serial_Number, SVC_Return_Serial_ID, Return_Equipment_ID, BIN, TOBIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, Shipped, MARKED, POSTED, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC35602 WHERE RTV_Number = @RTV_Number_RS AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND MARKED BETWEEN @MARKED_RS AND @MARKED_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY RTV_Number DESC, RTV_Line DESC, MARKED DESC, POSTED DESC, SLTSQNUM DESC END ELSE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, QTYTYPE, SERLTQTY, SLTSQNUM, ITEMNMBR, SERLNMBR, SVC_Serial_ID, EQUIPID, Return_Item_Number, Return_Serial_Number, SVC_Return_Serial_ID, Return_Equipment_ID, BIN, TOBIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, Shipped, MARKED, POSTED, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC35602 WHERE RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND MARKED BETWEEN @MARKED_RS AND @MARKED_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY RTV_Number DESC, RTV_Line DESC, MARKED DESC, POSTED DESC, SLTSQNUM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35602L_2] TO [DYNGRP]
GO
