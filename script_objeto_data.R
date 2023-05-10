################################################################################
## objetos no R - datas
## jean resende
## bioinformatica para novatos
################################################################################
# -- 
Sys.Date() # data do sistema
Sys.time() # horario do sistema
dt1 <- as.Date("03/04/2023",format="%d/%m/%Y") # convertendo caracter para data
class(dt1) # verificando classe
dt2 <- as.character(dt1) # convertendo data para caracter

## -- POSIX
class(Sys.time())
dt3 <- as.character(Sys.time())
dt4 <- as.POSIXct(dt3)

## -- calculos
dt.pascoa <- as.Date("09/04/2023", format="%d/%m/%Y")
dt.pascoa - Sys.Date() # quantidade de dias para a pascoa

## -- formatacoes
format(dt4, "%a-%b-%Y")
format(dt4, "%A-%B-%Y")
format(dt4, "%x") # padrao brasileiro

## -- sequencias 
seq.30.meses <- seq(from=Sys.Date(), length.out=30, by="month")
seq.15.dias <- seq(from=Sys.Date(), length.out=15, by="day")
seq.10.dias.posix <- seq(from=Sys.time(), length.out=10, by="day")

## -- operacoes
seq.10.dias.posix + 3*60*60*24 # somando tres dias
Sys.Date() + 3 # somando tres dias
