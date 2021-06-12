#* @get /hist2
#* @serializer unboxedJSON

function(pront) {
  rs = dbSendQuery(con, paste("SELECT data, tipo, idfkevento, numeroProntuario, IdInternacao 
  FROM `dbtest`.eventos
  where numeroProntuario =   ",pront, "order by data"))
  data = fetch(rs, n=-1)
  
  historicoPaciente2 <- list(datae = data$data,
                             tipoe = data$tipo,
                             ide = data$idfkevento,
                             numpront = data$numeroProntuario,
                             idInt = data$IdInternacao)
  return (historicoPaciente2)
}
