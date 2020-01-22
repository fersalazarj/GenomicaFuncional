
 #A) a partir de las siguientes secuencias concatenadas de RNA que te envio como archivo adjunto en formato fasta encuentra (usando librer√?as especializadas) la secuencia correspondiente de amino√°cidos.
 #B) Escoge dos problemas de la plataforma Rosalind de entre los siguientes: Counting DNA Nucleotides, Complementing a Strand of DNA, Computing GC Content, Calculating Protein Mass. Escribe un programa que resuelva los dos problemas que seleccionaste, en ambos, casos, debes buscar una soluci√≥n sin usar librer√?as especializadas y otra con librer√?as especializadas.
 #C) Enviame tu programa comentado en un s√≥lo archivo ApellidoPaterno_Nombre_P0.R
# D) finalmente sube tus c√≥digos a tu cuenta de Github que creaste en esta clase y enviame en el mismo correo la liga a tus c√≥digos.

parteA<-readRNAStringSet("first.fasta")
parteA
translate(parteA)

#parte B: 1
#Given: A DNA string s of length at most 1000 nt.
#Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s.

secuencia<-readDNAStringSet("result5.fasta")##Aqui leo la secuencia problema que descargu√© de rosalind
milpb<-secuencia[[1]]#la saco de set para s√≥lo tener un "string"

secuencia1<-readDNAStringSet("resultA.fasta")#Cree otras secuencias con mil letras (pares de bases)para cada letra, esta por ejemplo
milpbA<-secuencia1[[1]]#contiene mil letras A, las leo y las saco del modo set y repito para cada archivo de cada letra T, C y G

secuencia2<-readDNAStringSet("resultC.fasta")
milpbC<-secuencia2[[1]]

secuencia3<-readDNAStringSet("resultG.fasta")
milpbG<-secuencia3[[1]]

secuencia4<-readDNAStringSet("resultT.fasta")
milpbT<-secuencia4[[1]]

igualdadesA <- 0                         ####Ahora aqui esta lo bueno, uso un ciclo for que compare las secuencias entre s√?, basada en el c√°lculo de diferencias...
i <-0                                     #tambi√©n puedo hacer que cuente las igualdades, entonces, al decirle a R que cada vez que la secuencia problema coincida con la secuencia se√±uelo de s√≥lo A,
for(i in 1:length(milpb)){                ##tome el objeto igualdadesA y le sume 1, y ahora s√≥lo queda repetir para cada letra en comparaci√≥n la problema y listo.         
  
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

basescontadas<-c(igualdadesA,igualdadesC,igualdadesG,igualdadesT)#ahora s√≥lo tomo los conteos de cada letra y los pongo en un vector nuevo
nombres<-c("A","C","G","T")#hago un vector con nombres correspondientes
names(basescontadas)<-nombres#le pongo nombre y termino el problema
basescontadas#veo mi producto final
sum(basescontadas)
##sumo todos los n√∫meros del vector, y debe tener el n√∫mero total de bases que la secuencia problema.
##si lo tiene, y en este caso la secuencia problema dada mide 919, tras 6 intentos en rosalind finalmento me marco correcto asi que este esta bien
###esto no :(
sc<- readDNAStringSet("resultP.fasta")
secp<-sc[[1]] 

secc<-readRNAStringSet("resultU.fasta") 
secU<-secc[[1]]
secU
iguales<-0 
for (i in 1:length(secp)){
 if(secp[i]==milpbT[i]){iguales<-iguales+1}
  }
iguales

####ejercicio  2:
#Given: At most 10 DNA strings in FASTA format (of length at most 1 kbp each).
#Return: The ID of the string having the highest GC-content, followed by the GC-content of that string. Rosalind allows for a default error of 0.001 in all decimal answers unless otherwise stated; please see the note on absolute error below.
set<-readDNAStringSet("todos_los_genomas.fasta") ##pues aquÌ metÌ mi set de 11 secuencias de DNA :)
set##luego cheque que todo estaba correcto
secs<-readDNAStringSet("resultssC.fasta")##leo mi secuencia "seÒuelo" construida de 100 nucleotidos C y tambiÈn la G para hacer mi condiciÛn
ssC<-secs[[1]]
secG<-readDNAStringSet("resultssG.fasta")
ssG<-secG[[1]]

as1<-set[[1]] ###y procedo a extraer de ese set las secuencias 1x1, ya que no tuve los archivos por separado y solo concatenados :(
as1
s1<-as1[1:100] ##y luego para no contar muchos nucleotidos y que mi compu muriera corto todas las secuencias de la letra 1 a la 100
s1

as2<-set[[2]] #repetÌ eso para 10 secuencias pero el ciclo for lo hago sÛlo con una o dos como demostraciÛn de que funciona y en teorÌa si cambio
s2<-as2[1:100] #el nombre del objeto para cualquiera de las secuencias calcular· el porcentaje de GC que hay ahÌ
s2

as3<-set[[3]] 
s3<-as3[1:100] 
s3

as4<-set[[4]]
s4<-as4[1:100] 
s4

as5<-set[[5]] 
s5<-as5[1:100] 
s5

as6<-set[[6]] 
s6<-as6[1:100] 
s6

as7<-set[[7]] 
s7<-as7[1:100] 
s7

as8<-set[[8]] 
s8<-as8[1:100] 
s8

as9<-set[[9]] 
s9<-as9[1:100] 
s9

as10<-set[[10]] 
s10<-as10[1:100] 
s10


C<-0####hice este objeto para guardar aquÌ la cuenta de las C que hay en toda la secuencia de 100pb :)
for (i in 1:length(s1)) {#####el ciclo for que toma para i del una al tamaÒo de s1 y si la secuencia 1(problema)
                            #es igual a la secuencia de puras C entonces al objeto C le suma uno y lo redefine
  if(s1[i]==ssC[i]){C<-C+1}  
}
C####asÌ cuento cu·ntas C hay en la secuencia y las guardo

G<-0####hice el mismo ciclo pero ahora con la letra G  y las guardo igual en on objeto G
for (i in 1:length(s1)) {
  if(s1[i]==ssG[i]){G<-G+1}
}
G

porcentaje_GC_s1<-C+G/100##calculÈ el porcentaje sumando las Gs + las Cs y las divido entre el total de pb que es de 100
porcentaje_GC_s1

###aquÌ hago la prueba con la secuencia dos sÛlo para mostrar que funciona y el porcentaje de GC obviamente debe ser diferente a la primera

C2<-0
for (i in 1:length(s2)) { 
  if(s2[i]==ssC[i]){C2<-C2+1}
  } 
C2

G2<-0
for(i in 1:length(s2)){
  if(s2[i]==ssG[i]){G2<-G2+1}
}
G2

porcentaje_GC_s2<-C2+G2/100
porcentaje_GC_s2

nombres<-c("GC_s1", "GC_s2")
porcentajeGC<-c(porcentaje_GC_s1, porcentaje_GC_s2)
names(porcentajeGC)<-nombres
porcentajeGC####aquÌ hago un objeto que muestre la comparaciÛn entre los porcentajes GC de las dos secuencias y si es distinto, yeeei :)
