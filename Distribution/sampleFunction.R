#rnorm, runif, sample function üzerinde durucaz

#rnorm(n,mean=,sd=) mean=0 varsayışan, sd=0 vaarsayılan. n ise üretilecek sayıdır
norm_data = rnorm(100) #bu şekilde rastgele normal dağılıma uygun ortalamsı = 0 standart sapması = 1 sayı üretebilirsin
hist(norm_data, col = "lightblue")
#rnuif ise diğerine benzer şekilde rastge sayı sayıı üretir. uniform dağılımınna uygun şekilde rastgekle sayı üretir 
#runif(n,min=, max=) parametrelerinden oluşur. ort ve sd benzeri parametreler yoktur. tüm sayılar eşit olasılıkla seçildiği için düzgün dağılım vardır
unif_data = runif(100, min = 10, max = 20)
hist(unif_data, main = "unid distrubition")

#Sample'a gelirsek bir veri kümesinden bir kısmı seçmemizi sağlar
#sample(x,size, replace=false, prob=null) default değerlerimi yazdım
# x verimiz, size exsçeceğimiz miktar, replace aynı değeri seçip seöüçemeyeceğimiz, prob belli değerleri seçme olasılığının arttırmamız

data = c("elma", "armut", "kiraz", "muz", "kivi", "portakal", "mandalina", "havuç", "ananas", "ejder")
sample(data, 3, replace = FALSE, prob = c(0.2, 0.05, 0.05, 0.1, 0.05, 0.15, 0.1, 0.05, 0.1, 0.15))

# 📌 Bu durumda:
# "elma" seçilme olasılığı %20,
# "armut", "kiraz", "kivi", "havuç" gibi bazıları sadece %5 olasılıkla seçiliyor.
# "portakal" ve "ejder meyvesi" %15 olasılıkla seçilebilir.

#bunun yerine aşağıdaki gibi elma seçilme olasılığını %50 yapıp gerişsinie düşük olasıııklar da verebilirz
sample(data, 3, replace = FALSE,
       prob = c(0.5, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.1))


