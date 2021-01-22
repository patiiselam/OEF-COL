create view [dbo].[vwLocColMediosMagneticosResume2276] as 
 (
SELECT        d.*, dt.*
FROM            (SELECT        Formato, openyear, ormstrid, sum(salarios) AS Salarios, sum(PrestacionesSociales) AS PrestacionesSociales, sum(PagosRepresentacion) AS PagosRepresentacion, sum(OtrosPagos) AS OtrosPagos,
                                                     sum(CesantiaIntereses) AS CesantiaIntereses, sum(AportesSalud) AS AporteSalud, sum(AportesPensiones) AS AportesPensiones, sum(AFC) AS AFC, sum(ValorRetencion) AS ValorRetencion,sum(OtroMonto) as OtroMonto                          FROM            vwLocColMediosMagneticosDetalle2276
                          GROUP BY Formato, openyear, ormstrid) d 
						  OUTER apply dbo.f_obtieneDatosTerceros(0, 0, d .ORMSTRID) dt
						  );
GO
