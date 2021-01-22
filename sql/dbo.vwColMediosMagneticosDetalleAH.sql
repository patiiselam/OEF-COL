CREATE VIEW [dbo].[vwColMediosMagneticosDetalleAH] AS (
SELECT        ms.Formato, ms.ConceptoID, ms.ConceptoDescripcion, me.ActindxGp, me.CuentaGp, me.Colombia, ah.OPENYEAR, ah.JRNENTRY, ah.RCTRXSEQ, ah.SOURCDOC, ah.REFRENCE, ah.DSCRIPTN, ah.TRXDATE, 
                         ah.TRXSORCE, ah.ACTINDX, ah.Actnumst, ah.POLLDTRX, ah.LASTUSER, ah.LSTDTEDT, ah.USWHPSTD, ah.ORGNTSRC, ah.ORGNATYP, ah.QKOFSET, ah.SERIES, ah.ORTRXTYP, ah.ORCTRNUM, ah.ORMSTRID, 
                         ah.ORMSTRNM, ah.ORDOCNUM, ah.ORPSTDDT, ah.ORTRXSRC, ah.OrigDTASeries, ah.OrigSeqNum, ah.SEQNUMBR, ah.DTA_GL_Status, ah.DTA_Index, ah.CURNCYID, ah.CURRNIDX, ah.RATETPID, 
                         ah.EXGTBLID, ah.XCHGRATE, ah.EXCHDATE, ah.TIME1, ah.RTCLCMTD, ah.NOTEINDX, ah.ICTRX, ah.ORCOMID, ah.ORIGINJE, ah.PERIODID, ah.CRDTAMNT, ah.DEBITAMT, ah.ORCRDAMT, ah.ORDBTAMT, 
                         ah.DOCDATE, ah.PSTGNMBR, ah.PPSGNMBR, ah.DENXRATE, ah.MCTRXSTT, ah.CorrespondingUnit, ah.VOIDED, ah.Back_Out_JE, ah.Back_Out_JE_Year, ah.Correcting_JE, ah.Correcting_JE_Year, 
                         ah.Original_JE, ah.Original_JE_Seq_Num, ah.Original_JE_Year, ah.DEX_ROW_TS, ah.Ledger_ID, ah.DEBITAMT - ah.CRDTAMNT AS Neto
FROM            dbo.vwFINAsientosAH AS ah LEFT OUTER JOIN
                         dbo.Tii_LocColMapeoExo AS me ON me.ActindxGp = ah.ACTINDX LEFT OUTER JOIN
                         dbo.Tii_LocColMstrExo AS ms ON ms.ConceptoID = me.ConceptoId AND ms.Formato = me.Formato
						 where AH.SOURCDOC NOT IN('BBF','P/L') and ah.VOIDED = 0 
						 );
GO
