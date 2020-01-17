
 #A) a partir de las siguientes secuencias concatenadas de RNA que te envío como archivo adjunto en formato fasta encuentra (usando librerías especializadas) la secuencia correspondiente de aminoácidos.
 #B) Escoge dos problemas de la plataforma Rosalind de entre los siguientes: Counting DNA Nucleotides, Complementing a Strand of DNA, Computing GC Content, Calculating Protein Mass. Escribe un programa que resuelva los dos problemas que seleccionaste, en ambos, casos, debes buscar una solución sin usar librerías especializadas y otra con librerías especializadas.
 #C) Envíame tu programa comentado en un sólo archivo ApellidoPaterno_Nombre_P0.R
# D) finalmente sube tus códigos a tu cuenta de Github que creaste en esta clase y envíame en el mismo correo la liga a tus códigos.

parteA<-readRNAStringSet("first.fasta")
parteA
translate(parteA)

#parte B: 1
#Given: A DNA string s of length at most 1000 nt.
#Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s.

secuencia<-readDNAStringSet("result5.fasta")##Aquí leo la secuencia problema que descargué de rosalind
milpb<-secuencia[[1]]#la saco de set para sólo tener un "string"

secuencia1<-readDNAStringSet("resultA.fasta")#Cree otras secuencias con mil letras (pares de bases)para cada letra, esta por ejemplo
milpbA<-secuencia1[[1]]#contiene mil letras A, las leo y las saco del modo set y repito para cada archivo de cada letra T, C y G

secuencia2<-readDNAStringSet("resultC.fasta")
milpbC<-secuencia2[[1]]

secuencia3<-readDNAStringSet("resultG.fasta")
milpbG<-secuencia3[[1]]

secuencia4<-readDNAStringSet("resultT.fasta")
milpbT<-secuencia4[[1]]

igualdadesA <- 0                         ####Ahora aquí está lo bueno, uso un ciclo for que compare las secuencias entre sí, basada en el cálculo de diferencias...
i <-0                                     #también puedo hacer que cuente las igualdades, entonces, al decirle a R que cada vez que la secuencia problema coincida con la secuencia señuelo de sólo A,
for(i in 1:length(milpb)){                ##tome el objeto igualdadesA y le sume 1, y ahora sólo queda repetir para cada letra en comparación la problema y listo.         
  
  if(milpb[i]==milpbA[i]){igualdadesA<-igualdadesA+1}
}
igualdadesA

igualdadesC<-0
i<-0
for (i in 1:length(milpb)){

  if(milpb[i]==milpbC[i]){igualdadesC<-igualdadesC+1}  
}
igualdadesC

igualdadesG<-0
i<-0
for (i in 1:length(milpb)){
  
  if(milpb[i]==milpbG[i]){igualdadesG<-igualdadesG+1}  
}
igualdadesG

igualdadesT<-0
i<-0
for (i in 1:length(milpb)){
  
  if(milpb[i]==milpbT[i]){igualdadesT<-igualdadesT+1}  
}
igualdadesT

basescontadas<-c(igualdadesA,igualdadesC,igualdadesG,igualdadesT)#ahora sólo tomo los conteos de cada letra y los pongo en un vector nuevo
nombres<-c("A","C","G","T")#hago un vector con nombres correspondientes
names(basescontadas)<-nombres#le pongo nombre y termino el problema
basescontadas#veo mi producto final
sum(basescontadas)
##sumo todos los números del vector, y debe tener el número total de bases que la secuencia problema.
##si lo tiene, y en este caso la secuencia problema dada mide 919, tras 6 intentos en rosalind finalmento me marco correcto así que este esta bien



