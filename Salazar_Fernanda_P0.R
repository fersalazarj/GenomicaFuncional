
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
sec100pb<-readDNAStringSet("NC_027293.fna")
sec100pb
sec<-sec100pb[[1]]
milpb<-sec[(1:1000)]
milpb
for i in length(milpb){
  
}