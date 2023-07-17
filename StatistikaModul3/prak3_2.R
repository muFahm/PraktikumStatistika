fahmi = read.delim("clipboard")
View(fahmi)

fahmi <- data_fahmi[data_fahmi$Tinggi.Badan==170,]  
View(fahmi)

fahmi$Tinggi.Badan <- ifelse(fahmi$Tinggi.Badan > 160, c("Tinggi"), c("Pendek"))
View(fahmi)

library(dplyr)
fahmi <- mutate(fahmi, Jurusan = "Infor22")
fahmi <- mutate(fahmi, Fakultas = "FTI")
View(fahmi)

fahmi <- select(fahmi, -Fakultas)
View(fahmi)

fahmi <- mutate(fahmi, Nama_Gender = paste(Nama, Gender, sep = " - "))
fahmi <- mutate(fahmi, Angkatan_Tinggi = paste0(Angkatan, Tinggi.Badan))
fahmi <- mutate(fahmi, Gabungan = paste(Nama_Gender, Angkatan_Tinggi, sep = " - "))
View(fahmi)

# Membuat gabungan baris 1-5
fahmi.baris1sd5 <- fahmi.kolom1sd4[1:5, ]

# Membuat gabungan baris 25-30
fahmi.baris25sd30 <- fahmi.kolom1sd4[25:30, ]

# Menggabungkan kedua variabel di atas
fahmi.baris1sd30 <- rbind(fahmi.baris1sd5, fahmi.baris25sd30)

# Melihat hasil tabel fahmi dengan view
View(fahmi.baris1sd30)


fahmi.sort<-fahmi[order(fahmi$Waktu.Perjalanan),] 
View(fahmi.sort)
