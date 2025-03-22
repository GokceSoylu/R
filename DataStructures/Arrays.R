#array ve matris temelde aynıdır sadece iki boyutlu olan arraylere özel ad veilerek matris denilir.
#array tek boyutlu olamaz çünkü tek boyutlu olana (vectör denilir)

thisarray <- c(1:24)
class(thisarray)
print("this array : ")
thisarray
multiarray <- array(thisarray, dim = c(4, 3, 2))
class(multiarray)
print("multiarray : ")
multiarray