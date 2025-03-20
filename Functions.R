#fonksiyon olıuşturmak içn x = function() gibi bir yapı oluşturuyoruz yani değişkene fonsiyon atıyoruz bunu daha önce python ve js'de de gördük. pythondaki lambda yapısı js'deki de vektör fonksiyon yapısına benziyor.

theF = function(n)
    n + 12

theF(12)
# function tanımında culy brackets kullanabilirsin ancak olmasa da çalışır

#todo Nasted Function
disF = function(a) {
  icF = function(b) {
    r = a + b
    return(r)
  }
  return(icF)
}

a = disF(10)
a(5)


#todo nasted function example 2
f1 = function(a, b)
    a * b
f2 = function(a, b)
    a + b

f1(f2(7, 5), f2(3.12, 5.88))