m1 = matrix(data = c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
m1[1, 2]
m1[, 2]

# yine tıpkı vektörde olduğıu gibi belirli elemaları seçmek için c fonksiyonu kullanılır
m1[c(1, 3),]


#satır yada sütün eklemek için cbind ve rbind fonksiyonları kulanılır
m1 = cbind(m1, c(10, 11, 12))
m1 = rbind(m1, c(-1, -2, -3, -4))

m1

#remove
m_tmp = m1
print("Remove ")
dim(m1)
m1
m1 = m1[-c(1), - c(1)]
dim(m1)
m1
#gördüğün gibi ilk satır ve ilk sütün gitti

m1 = m_tmp
m1 = m1[-c(4),]
m1

m1 = m_tmp
m1 = m1[-c(4), - c(1, 4)]
m1
#dim(), lenngth() ve %in% 'i burada da kullanabilirsin
